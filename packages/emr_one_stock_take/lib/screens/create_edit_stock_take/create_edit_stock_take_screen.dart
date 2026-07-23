import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/controller/create_stock_take_controller.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/create_edit_mobile.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/create_edit_web.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateEditStockTakeScreen extends StatelessWidget {
  const CreateEditStockTakeScreen({
    required this.controller,
    required this.stockTakeID,
    this.cloneCreate = false,
    this.isEdit = false,
    super.key,
  });

  final String stockTakeID;
  final bool cloneCreate;
  final CreateStockTakeController controller;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppConfig>(context);

    return FutureBuilder(
      future: controller.stocktakeService
          .getStockTake(id: HelperMethods.decodedStocktakeId(stockTakeID)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            return LoaderWrapper(
              showLoader: controller.showLoader,
              child: switch (app.isWeb) {
                true => CreateEditStockTakeScreenWeb(
                    stockTake: snapshot.data!,
                    controller: controller,
                    cloneCreate: cloneCreate,
                    isEdit: isEdit,
                  ),
                false => CreateEditStockTakeScreenMobile(
                    stockTake: snapshot.data!,
                    controller: controller,
                    cloneCreate: cloneCreate,
                    isEdit: isEdit,
                  ),
              },
            );
          } else {
            return Center(
              child: Text(
                context.l10n.anErrorOccurredTryAgain,
                style: const TextStyle(color: OppraBrandColors.errorColor),
              ),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
