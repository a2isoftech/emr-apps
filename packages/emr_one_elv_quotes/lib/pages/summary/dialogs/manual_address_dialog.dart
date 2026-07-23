import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

Future<Address?> dialogManualAddress({
  required BuildContext context,
  required YardService yardService,
}) async {
  final formKey = GlobalKey<FormState>();
  final txtAddressLine1 = TextEditingController();
  final txtAddressLine2 = TextEditingController();
  final txtAddressCity = TextEditingController();
  final txtAddressCountry = TextEditingController();
  final txtAddressPostcode = TextEditingController();
  return EmrDialog.modal<Address>(
    context,
    titleText: context.l10n.manualAddress,
    builder: (context) {
      return SizedBox(
        width: 660,
        child: Form(
          key: formKey,
          child: Wrap(
            spacing: Insets.gutter,
            runSpacing: Insets.gutter,
            children: [
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: txtAddressLine1,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.address1,
                    ),
                  ),
                  validator: (value) {
                    if ((value ?? '').isEmpty) {
                      return context.l10n.errMsgPleaseEnterAddressLine1;
                    }
                    if (value!.length < 3 || value.length > 35) {
                      return context.l10n.errMsgAddressLine1Length;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: txtAddressLine2,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.address2,
                    ),
                  ),
                  validator: (value) {
                    if ((value ?? '').isEmpty) return null;

                    if (value!.length < 3 || value.length > 35) {
                      return context.l10n.errMsgAddressLine2Length;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: txtAddressCity,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.townOrCity,
                    ),
                  ),
                  validator: (value) {
                    if ((value ?? '').isEmpty) {
                      return context.l10n.pleaseEnterCity;
                    }
                    if (value!.length < 3 || value.length > 35) {
                      return context.l10n.errMsgCityLength;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: txtAddressCountry,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.country,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: txtAddressPostcode,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.postCode,
                    ),
                  ),
                  validator: (value) {
                    if ((value ?? '').isEmpty) {
                      return context.l10n.pleaseEnterPostcode;
                    }
                    if (value!.length < 3 || value.length > 12) {
                      return context.l10n.errMsgPostcodeLength;
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
    onAccept: () async {
      if (formKey.currentState?.validate() ?? false) {
        unawaited(
          EmrDialog.busy(
            context,
            titleText: context.l10n.pleaseWait,
          ),
        );
        var validPostCode = false;
        try {
          validPostCode =
              await yardService.isValidPostcode(txtAddressPostcode.text);
        } catch (err) {
          validPostCode = false;
        }
        if (!validPostCode && context.mounted) {
          context.pop();
          await EmrDialog.ok(
            context,
            titleText: context.l10n.errInvalidPostcode,
            contentText: context.l10n.errPostcodeIsNotValid,
          );
        } else {
          if (context.mounted) {
            context.pop();
            context.pop(
              Address(
                line1: txtAddressLine1.text,
                line2: txtAddressLine2.text,
                line4: txtAddressCity.text,
                country: txtAddressCountry.text,
                postCode: txtAddressPostcode.text,
                shortAddress:
                    '''${txtAddressLine1.text}, ${txtAddressLine2.text}, ${txtAddressCity.text}, ${txtAddressCountry.text}, ${txtAddressPostcode.text}''',
              ),
            );
          }
        }
      }
    },
  );
}
