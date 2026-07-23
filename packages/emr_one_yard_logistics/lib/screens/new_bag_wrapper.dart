import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/screens/new_bag.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewBagWrapper extends StatefulWidget {
  const NewBagWrapper({
    super.key,
  });

  @override
  State<NewBagWrapper> createState() => _NewBagWrapperState();
}

class _NewBagWrapperState extends State<NewBagWrapper> {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context);

    return FutureBuilder(
      future: service.fetchPalletList(
        PalletListing(
          palletStates: [PalletState.inProgress],
          palletTypes: [PalletType.leadJointBag, PalletType.polyJointBag],
          yards: [service.defaultYardCode],
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null) {
          return const WrapperError(
            message: 'Not able to load bag',
          );
        }

        if (snapshot.data!.success == false) {
          return WrapperError(message: snapshot.data!.message);
        }

        return NewBag(
          openBags: snapshot.data!.data!,
        );
      },
    );
  }
}
