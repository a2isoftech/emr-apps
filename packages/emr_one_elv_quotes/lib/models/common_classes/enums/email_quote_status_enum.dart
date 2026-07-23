class EmailQuoteStatusEnum {
  const EmailQuoteStatusEnum._(this.value);

  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = EmailQuoteStatusEnum._('OK');
  static const notFound = EmailQuoteStatusEnum._('NotFound');
  static const badRequest = EmailQuoteStatusEnum._('BadRequest');
  static const batchAlreadyConfirmed =
      EmailQuoteStatusEnum._('BatchAlreadyConfirmed');
  static const batchNotActive = EmailQuoteStatusEnum._('BatchNotActive');
  static const batchOutOfDate = EmailQuoteStatusEnum._('BatchOutOfDate');
  static const noVehicleQuotes = EmailQuoteStatusEnum._('NoVehicleQuotes');
  static const sendEmailFailed = EmailQuoteStatusEnum._('SendEmailFailed');

  static const values = <EmailQuoteStatusEnum>[
    ok,
    notFound,
    badRequest,
    batchAlreadyConfirmed,
    batchNotActive,
    batchOutOfDate,
    noVehicleQuotes,
    sendEmailFailed,
  ];

  static EmailQuoteStatusEnum? fromJson(dynamic value) =>
      EmailQuoteStatusEnumTypeTransformer().decode(value);

  static List<EmailQuoteStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailQuoteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailQuoteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class EmailQuoteStatusEnumTypeTransformer {
  factory EmailQuoteStatusEnumTypeTransformer() =>
      _instance ??= const EmailQuoteStatusEnumTypeTransformer._();

  const EmailQuoteStatusEnumTypeTransformer._();

  String encode(EmailQuoteStatusEnum data) => data.value;

  EmailQuoteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'OK':
          return EmailQuoteStatusEnum.ok;
        case 'NotFound':
          return EmailQuoteStatusEnum.notFound;
        case 'BadRequest':
          return EmailQuoteStatusEnum.badRequest;
        case 'BatchAlreadyConfirmed':
          return EmailQuoteStatusEnum.batchAlreadyConfirmed;
        case 'BatchNotActive':
          return EmailQuoteStatusEnum.batchNotActive;
        case 'BatchOutOfDate':
          return EmailQuoteStatusEnum.batchOutOfDate;
        case 'NoVehicleQuotes':
          return EmailQuoteStatusEnum.noVehicleQuotes;
        case 'SendEmailFailed':
          return EmailQuoteStatusEnum.sendEmailFailed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static EmailQuoteStatusEnumTypeTransformer? _instance;
}
