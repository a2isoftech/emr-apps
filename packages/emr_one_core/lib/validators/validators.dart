import 'package:collection/collection.dart';
import 'package:dlibphonenumber/dlibphonenumber.dart' as libphonenumber;
import 'package:email_validator/email_validator.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/widgets.dart';

export 'async_validator.dart';

/// A common set of validators for form fields.
/// - `Validators.required`
/// - `Validators.none`
/// - `Validators.integer`
/// - `Validators.url`
/// - `Validators.length`
/// - `Validators.email`
///
/// These can also be combined together using `Validators.join`:
/// ```dart
/// validator: (value) => Validators.join([
///   Validators.required(value),
///   Validators.length(value, equals: 3),
/// ]),
/// ```
class Validators {
  /// Store a reference to EmrAppsLocalisations for the current locale, so we
  /// can localise validation messages without needing a BuildContext.
  static void setLocale(Locale locale) {
    _locale = locale;
    EmrAppsLocalisations.delegate.load(locale).then((value) {
      return _l10n = value;
    });
  }

  static late EmrAppsLocalisations _l10n;

  static late Locale _locale;

  /// Returns the first non-null value from the list of validators, or null.
  static String? join(List<String?> validators) =>
      validators.firstWhereOrNull((result) => result != null);

  /// Returns 'Required' if the value is null or empty (String / List),
  /// or not true for a bool, otherwise null.
  static String? required(dynamic value, [void Function()? onInvalid]) {
    String? result;

    if (value == null) {
      result = _l10n.required;
    } else {
      switch (value) {
        case bool():
          if (value != true) {
            result = _l10n.required;
          }
        case List():
          if (value.isEmpty) {
            result = _l10n.required;
          }
        case String():
          if (value.isEmpty) {
            result = _l10n.required;
          }
      }
    }

    if (result != null) {
      onInvalid?.call();
    }

    return result;
  }

  static String? none(dynamic value) => null;

  /// Validate that a string is an integer within an optional range.
  /// Combine this with [required] to ensure that the value is also not empty.
  static String? integer(String? value, {int? min, int? max}) {
    final parsedValue = int.tryParse(value ?? '');

    if (min != null && parsedValue != null && parsedValue < min) {
      return _l10n.mustBeMinOrGreater(min);
    }

    if (max != null && parsedValue != null && parsedValue > max) {
      return _l10n.mustBeMaxOrLess(max);
    }

    return null;
  }

  /// Validate that a string is a valid URL and starts with http:// or https://
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    final uri = Uri.tryParse(value);

    if (uri == null) {
      return _l10n.invalid;
    }

    if (uri.scheme != 'http' && uri.scheme != 'https') {
      return _l10n.validationUrlStartsWith;
    }

    return null;
  }

  /// Validate the string length is in a range, or equal to a specific value.
  static String? length(String? value, {int? min, int? max, int? equals}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (min != null && value.length < min) {
      return _l10n.mustBeMinCharactersOrMore(min);
    }

    if (max != null && value.length > max) {
      return _l10n.mustBeMaxCharactersOrFewer(max);
    }

    if (equals != null && value.length != equals) {
      return _l10n.mustBeEqualsCharacters(equals);
    }

    return null;
  }

  // Validate the string is a valid email address.
  static String? email(String? value) {
    final isValid = EmailValidator.validate(value?.toString() ?? '');

    if (isValid) {
      return null;
    }

    return _l10n.invalidEmailAddress;
  }

  static String? mobileNumber(String? value, {String? countryCode}) {
    if ((value ?? '').isEmpty) {
      return null;
    }

    try {
      final phoneUtil = libphonenumber.PhoneNumberUtil.instance;

      if (phoneUtil.isViablePhoneNumber(value!)) {
        final parsedNumber = phoneUtil.parse(
          value,
          countryCode ?? _locale.countryCode,
        );

        if (phoneUtil.isValidNumber(parsedNumber)) {
          return null;
        }
      }
    } catch (_) {
      // Ignoring the exception intentionally
    }
    //return "cell number" for US and "mobile number" for UK in the message
    return _l10n.errMsgEnterMobileNumber(_l10n.mobileNumber);
  }

  static String? decimal(String? value, {int? min, int? max}) {
    final parsedValue = num.tryParse(value ?? '');

    if (min != null && parsedValue != null && parsedValue < min) {
      return _l10n.mustBeMinOrGreater(min);
    }

    if (max != null && parsedValue != null && parsedValue > max) {
      return _l10n.mustBeMaxOrLess(max);
    }

    return null;
  }

  static String? forValidationGroup(
    BuildContext context, {
    required String groupId,
    required String label,
    required List<String?> validators,
    bool prefixWithLabel = true,
  }) {
    final errors = EmrForm.errorsOf(context);
    final errorGroups = errors.value;
    final message = Validators.join(validators);

    errorGroups[groupId] ??= {};
    errorGroups[groupId]![label] = message == null
        ? message
        : prefixWithLabel
        ? '$label: $message'
        : message;

    // Clone the errorGroups map so it triggers the notifier.
    errors.value = Map<String, Map<String, String?>>.from(errorGroups);

    return message;
  }

  static String? ukPostcodeFormat(String? value) {
    if (value == null || value.isEmpty) {
      return null; // optional field behavior (same as email/url)
    }

    final ukPostcodeRegex = RegExp(
      '^(GIR ?0AA|'
      '((([A-Z][0-9]{1,2})|'
      '(([A-Z][A-HJ-Y][0-9]{1,2})|'
      '(([A-Z][0-9][A-Z])|'
      '([A-Z][A-HJ-Y][0-9][A-Z])))) ?'
      r'[0-9][A-Z]{2}))$',
      caseSensitive: false,
    );

    if (!ukPostcodeRegex.hasMatch(value.trim())) {
      return _l10n.invalid;
    }

    return null;
  }
}
