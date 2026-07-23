import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/models/quote_models/collection_detail.dart';
import 'package:emr_one_elv_core/models/quote_models/update_collection_detail.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_quotes/common/change_collection_operator.dart';
import 'package:emr_one_elv_quotes/common/collection_date_time.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

void editCollectionDetailDialog({
  required BuildContext context,
  required CollectionAndBankDetail? collectionDetail,
  required AddressService addressService,
  required Future<List<CollectionOperator>> Function() collectionOperatorList,
  required bool isRetailAccount,
  required void Function(UpdateCollectionDetail) onSaveButtonPressed,
  required YardService yardService,
  required ElvTerritory activeTerritory,
}) {
  const dialogHeight = 300.0;
  const dialogWidth = 700.0;
  final updatedCollectionDetail =
      UpdateCollectionDetail.buildFromCollectionDetail(collectionDetail);
  final collectionOperatorSearchController = TextEditingController();
  collectionOperatorSearchController.text =
      updatedCollectionDetail.collectionOperator?.accountNumber != null &&
          updatedCollectionDetail.collectionOperator!.accountNumber.isNotEmpty
      ? '(${updatedCollectionDetail.collectionOperator?.accountNumber}) '
            '${updatedCollectionDetail.collectionOperator?.accountName ?? ''}'
      : '';

  ElvDialog.action(
    context,
    titleText: context.l10n.editCollectionInformation,
    content: SizedBox(
      width: dialogWidth,
      height: dialogHeight,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
            child: Text(
              context.l10n.collectionDetails,
              style: EmrOneConstants.kOpenSans18BoldTextStyle,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: Insets.gutter / 2,
                runSpacing: Insets.gutter,
                children: [
                  ChangeCollectionOperator(
                    onTap: (collectionOperator) {
                      updatedCollectionDetail.collectionOperator =
                          collectionOperator;
                    },
                    accountName: collectionDetail?.accountName ?? '',
                    accountNumber: collectionDetail?.accountNumber ?? '',
                    collectionOperatorList: collectionOperatorList,
                    collectionOperatorSearchController:
                        collectionOperatorSearchController,
                  ),
                  CollectionDateTime(
                    onChanged: (collectionDateTime) {
                      updatedCollectionDetail.collectionDateTime =
                          collectionDateTime;
                    },
                    collectionDateTime: collectionDetail?.appointmentDateTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      DialogAction(context.l10n.cancel, () => Navigator.of(context).pop()),
      DialogAction(context.l10n.save, () {
        onSaveButtonPressed(updatedCollectionDetail);
        Navigator.of(context).pop();
      }),
    ],
  );
}
