import 'package:emr_one_elv_quotes/models/common_classes/enums/email_quote_status_enum.dart';

class EmailQuoteResponse {
  EmailQuoteResponse({
    this.status,
  });

  EmailQuoteStatusEnum? status;

  static EmailQuoteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EmailQuoteResponse(
        status: EmailQuoteStatusEnum.fromJson(json['status']),
      );
    }
    return null;
  }

  static List<EmailQuoteResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailQuoteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailQuoteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
