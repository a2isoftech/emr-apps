import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/constants/permission_constants.dart';
import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:emr_one_crm/routing/crm_named_routes.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/extend_contract_dialog/extend_contract_dialog.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ContractListItem extends StatefulWidget {
  const ContractListItem({
    required this.contract,
    required this.partyAccountNo,
    required this.pricesDataController,
    super.key,
  });

  final Contract contract;
  final String partyAccountNo;
  final PricesDataController pricesDataController;

  @override
  State<ContractListItem> createState() => _ContractListItemState();
}

class _ContractListItemState extends State<ContractListItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final maxDeliverable = widget.contract.maxDeliverable();
    final maxDelivered = widget.contract.deliveredAmount();
    final deliveredPercentage =
        maxDeliverable > 0 ? maxDelivered / maxDeliverable : 0.0;
    final rateUomValue = widget.contract.lines.first.isSpot
        ? Uom.values[EmrOneCoreUomConstants.ld.uomId]
        : Uom.values[
            widget.contract.lines.first.depotPremiums.first.rate?.uom.uomId ??
                EmrOneCoreUomConstants.mt.uomId];

    return MouseRegion(
      onEnter: (event) => _onEntered(true),
      onExit: (event) => _onEntered(false),
      child: GestureDetector(
        onTap: showDetails,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Material(
            borderRadius: BorderRadius.circular(5),
            elevation: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: ColoredBox(
                color: isHovered
                    ? isDark
                        ? EmrColours.secondaryYellow
                        : EmrColours.secondaryCyan
                    : Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Insets.gutter / 2,
                        left: Insets.gutter / 2,
                        right: Insets.gutter / 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _getContract(isDark),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter / 3,
                                  bottom: Insets.gutter / 3,
                                ),
                                child: _getDate(isDark),
                              ),
                              ..._getProgress(
                                maxDeliverable,
                                maxDelivered,
                                rateUomValue,
                                isDark,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: (Insets.gutter / 3) * 2,
                                  bottom: Insets.gutter / 3,
                                ),
                                child: _getBookTypeChip(isDark),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter / 2,
                                ),
                                child: _getContractTypeChip(isDark),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter / 2,
                                ),
                                child: _getCurrencyTypeChip(isDark),
                              ),
                              if (userInfoService.userInfo.hasPermission(
                                PermissionConstants.modifyContracts,
                              ))
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: Insets.gutter / 2,
                                  ),
                                  child: TextButton.icon(
                                    onPressed: () {
                                      _showExtendContract(
                                        context,
                                        widget.contract,
                                      ).then(
                                        (value) => {},
                                      );
                                    },
                                    label: Text(context.l10n.extend),
                                    icon: const Icon(Icons.calendar_month),
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      foregroundColor: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: Insets.gutter - 4,
                                        vertical: (Insets.gutter / 2) - 2,
                                      ),
                                      shape: const StadiumBorder(),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: Insets.gutter / 2),
                      child: LinearProgressIndicator(
                        minHeight: 8,
                        value: deliveredPercentage,
                        backgroundColor: _getDeliveryProgressBackgroundColour(
                          isDark,
                          deliveredPercentage,
                        ),
                        color: _getDeliveryProgressForegroundColour(
                          isDark,
                          deliveredPercentage,
                        ),
                        semanticsLabel: deliveredPercentage.toString(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onEntered(bool entered) => setState(() {
        isHovered = entered;
      });

  Future<void> showDetails() async {
    await context.pushNamed(
      CrmNamedRoutes.priceDetails,
      params: {'partyAccountNo': widget.partyAccountNo},
      queryParams: {'contractID': widget.contract.id.toString()},
      extra: widget.contract,
    );
  }

  FaIconData _getCurrencyIcon() {
    switch (widget.contract.currencyCode) {
      case 'GBP':
        return FontAwesomeIcons.sterlingSign;
      case 'EUR':
        return FontAwesomeIcons.euroSign;
      case 'USD':
      default:
        return FontAwesomeIcons.dollarSign;
    }
  }

  String _contractRef(String ref) {
    if (ref.contains('GPL')) {
      return ref.substring(3);
    } else {
      return ref;
    }
  }

  FaIconData _getContractTypeIcon() {
    switch (widget.contract.type) {
      case ContractTypeEnum.spot:
        return FontAwesomeIcons.circleDot;
      case ContractTypeEnum.fixed:
        return FontAwesomeIcons.crosshairs;
      case ContractTypeEnum.gpl:
        return FontAwesomeIcons.borderNone;
      case ContractTypeEnum.pm:
        return FontAwesomeIcons.moneyBill;
    }
  }

  String _getContractTypeText() {
    switch (widget.contract.type) {
      case ContractTypeEnum.spot:
        return context.l10n.spot;
      case ContractTypeEnum.fixed:
        return context.l10n.fixed;
      case ContractTypeEnum.gpl:
        return context.l10n.pl;
      case ContractTypeEnum.pm:
        return context.l10n.pm.toUpperCase();
    }
  }

  Row _getContract([bool isDark = false]) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${context.l10n.contract} #: ',
          style: EmrOneConstants.kOpenSans16BoldTextStyle.copyWith(
            color: _getHeaderForeground(isDark),
          ),
        ),
        Text(
          _contractRef(widget.contract.ref),
          style: EmrOneConstants.kOpenSans16TextStyle.copyWith(
            color: _getHeaderForeground(isDark),
          ),
        ),
      ],
    );
  }

  Row _getDate([bool isDark = false]) {
    final activeLocale = Localizations.localeOf(context);
    final formattedStartDate = widget.contract.startDate != null
        ? widget.contract.startDate!.asyMMMd(activeLocale)
        : context.l10n.noStartDate;
    final formattedEndDate = widget.contract.endDate != null
        ? widget.contract.endDate!.asyMMMd(activeLocale)
        : context.l10n.noEndDate;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${context.l10n.date}: ',
          style: EmrOneConstants.kOpenSans12BoldTextStyle.copyWith(
            color: _getHeaderForeground(isDark),
          ),
        ),
        Text(
          '$formattedStartDate - $formattedEndDate',
          style: EmrOneConstants.kOpenSans12TextStyle.copyWith(
            color: _getHeaderForeground(isDark),
          ),
        ),
      ],
    );
  }

  List<Widget> _getProgress(
    double maxDeliverable,
    double maxDelivered,
    Uom rateUomValue, [
    bool isDark = false,
  ]) {
    final result = List<Widget>.empty(growable: true);
    if (widget.contract.type == ContractTypeEnum.gpl) {
      result.add(const Text(''));
      return result;
    }

    final progressTypeText = widget.contract.type == ContractTypeEnum.spot
        ? context.l10n.targetLoadsVsDeliverednums
        : context.l10n.targetTonnageVsDeliverednums;

    final digits = widget.contract.type == ContractTypeEnum.spot ? 0 : 3;
    final progressValueText = '${maxDelivered.toStringAsFixed(digits)}'
        ' ${rateUomValue.uomCode}'
        ' ${context.l10n.of1} ${maxDeliverable.toStringAsFixed(digits)}'
        ' ${rateUomValue.uomCode}';

    result.add(
      Text(
        '$progressTypeText: ',
        style: EmrOneConstants.kOpenSans12BoldTextStyle.copyWith(
          color: _getHeaderForeground(isDark),
        ),
      ),
    );
    result.add(
      Text(
        progressValueText,
        style: EmrOneConstants.kOpenSans12TextStyle.copyWith(
          color: _getHeaderForeground(isDark),
        ),
      ),
    );

    return result;
  }

  Chip _getBookTypeChip([bool isDark = false]) {
    final text = widget.contract.bookType == ContractBookType.sales
        ? context.l10n.sales.toUpperCase()
        : context.l10n.purchase.toUpperCase();

    final icon = widget.contract.bookType == ContractBookType.sales
        ? FaIcon(
            FontAwesomeIcons.cashRegister,
            color: _getHeaderForeground(isDark),
          )
        : FaIcon(
            FontAwesomeIcons.cartShopping,
            color: _getHeaderForeground(isDark),
          );

    return Chip(
      backgroundColor: _getHeaderForeground(!isDark),
      avatar: icon,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      label: Text(
        text,
        style: EmrOneConstants.kOpenSans12SemiBoldTextStyle.copyWith(
          color: _getHeaderForeground(isDark),
        ),
      ),
    );
  }

  Chip _getContractTypeChip([bool isDark = false]) {
    return Chip(
      padding: const EdgeInsets.only(
        left: Insets.gutter / 2,
        right: Insets.gutter / 2,
      ),
      backgroundColor: _getContractTypeChipBackgroundColour(),
      side: BorderSide.none,
      avatar: FaIcon(
        _getContractTypeIcon(),
        color: _getContractTypeChipTextColour(isDark),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      label: Text(
        _getContractTypeText(),
        style: EmrOneConstants.kOpenSans12TextStyle.copyWith(
          color: _getContractTypeChipTextColour(isDark),
        ),
      ),
    );
  }

  Chip _getCurrencyTypeChip([bool isDark = false]) {
    return Chip(
      padding: const EdgeInsets.only(
        left: Insets.gutter / 2,
        right: Insets.gutter / 2,
      ),
      backgroundColor: _getCurrencyTypeChipBackgroundColour(!isDark),
      side: BorderSide.none,
      avatar: FaIcon(
        _getCurrencyIcon(),
        color: _getCurrencyTypeChipTextgroundColour(isDark),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      label: Text(
        widget.contract.currencyCode,
        style: EmrOneConstants.kOpenSans12TextStyle.copyWith(
          color: _getCurrencyTypeChipTextgroundColour(isDark),
        ),
      ),
    );
  }

  // All colour functions in one section, as these might need to be
  // changed to theme entries at some point?

  Color _getHeaderForeground([bool isDark = false]) {
    return isDark ? EmrColours.primaryWhite : Colors.black;
  }

  Color _getDeliveryProgressForegroundColour([
    bool isDark = false,
    double deliveredPercentage = 0,
  ]) {
    switch (deliveredPercentage) {
      case >= 0 && < 0.5:
        return EmrColours.secondaryRed;
      case >= 0.5 && < 1:
        return EmrColours.secondaryYellow;
      default:
        return EmrColours.primaryGreen;
    }
  }

  Color _getDeliveryProgressBackgroundColour([
    bool isDark = false,
    double deliveredPercentage = 0,
  ]) {
    final colour = _getDeliveryProgressForegroundColour(
      isDark,
      deliveredPercentage,
    );
    return colour.withAlpha(51);
  }

  Color _getContractTypeChipBackgroundColour() {
    switch (widget.contract.type) {
      case ContractTypeEnum.spot:
        return EmrColours.secondaryCyan;
      case ContractTypeEnum.fixed:
        return EmrColours.secondaryYellow;
      case ContractTypeEnum.gpl:
        return EmrColours.secondaryGrey;
      case ContractTypeEnum.pm:
        return EmrColours.secondaryRed;
    }
  }

  Color _getContractTypeChipTextColour([bool isDark = false]) {
    switch (widget.contract.type) {
      case ContractTypeEnum.spot:
        return EmrColours.primaryWhite;
      case ContractTypeEnum.fixed:
        return EmrColours.primaryBlue;
      case ContractTypeEnum.gpl:
        return EmrColours.primaryWhite;
      case ContractTypeEnum.pm:
        return EmrColours.primaryWhite;
    }
  }

  Color _getCurrencyTypeChipBackgroundColour([bool isDark = false]) {
    // Currently all currencies are the same colour
    switch (widget.contract.currencyCode) {
      case 'GBP':
      case 'EUR':
      case 'USD':
      default:
        return EmrColours.primaryGreen;
    }
  }

  Color _getCurrencyTypeChipTextgroundColour([bool isDark = false]) {
    // Currently all currencies are the same colour
    switch (widget.contract.currencyCode) {
      case 'GBP':
      case 'EUR':
      case 'USD':
      default:
        return EmrColours.primaryWhite;
    }
  }

  Future<void> _showExtendContract(BuildContext context, Contract contract) {
    return showDialog<DateTime?>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return ExtendContractDialog(
          contract: contract,
        );
      },
    ).then((value) {
      if (value == null) {
        return;
      }
      widget.pricesDataController.refreshData();
    });
  }
}
