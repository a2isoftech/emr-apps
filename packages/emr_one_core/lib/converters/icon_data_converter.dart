import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:material_symbols_icons/symbols.dart';

class IconDataConverter implements JsonConverter<IconData, String> {
  const IconDataConverter();

  @override
  IconData fromJson(String json) {
    final s = json.split(',');

    switch (s[1]) {
      case 'MaterialIcons':
        switch (s[0]) {
          case '0xe042':
            return Icons.account_box;
          case '0xe049':
            return Icons.add_alarm;
          case '0xee98':
            return Icons.assignment_outlined;
          case '0xe0cc':
            return Icons.bar_chart;
          case '0xf06bb':
            return Icons.calendar_month;
          case '0xf600':
            return Icons.calendar_view_month_rounded;
          case '0xe148':
            return Icons.category;
          case '0xe87d':
            return Icons.commute_sharp;
          case '0xe186':
            return Icons.confirmation_num;
          case '0xef75':
            return Icons.confirmation_num_outlined;
          case '0xe189':
            return Icons.construction;
          case '0xf06ea':
            return Icons.desk_outlined;
          case '0xe1c7':
            return Icons.developer_mode;
          case '0xe1d7':
            return Icons.directions_car;
          case '0xf04f1':
            return Icons.display_settings;
          case '0xefe3':
            return Icons.domain_outlined;
          case '0xe22a':
            return Icons.email;
          case '0xf04fd':
            return Icons.factory;
          case '0xf045':
            return Icons.fact_check_outlined;
          case '0xf06f2':
            return Icons.fire_truck_outlined;
          case '0xe2a5':
            return Icons.folder_shared;
          case '0xf0866':
            return Icons.forklift;
          case '0xe305':
            return Icons.health_and_safety;
          case '0xf107':
            return Icons.home_outlined;
          case '0xe349':
            return Icons.inventory;
          case '0xf134':
            return Icons.inventory_2_outlined;
          case '0xf07a6':
            return Icons.landslide;
          case '0xf171':
            return Icons.local_activity_outlined;
          case '0xe3a6':
            return Icons.local_shipping;
          case '0xf18e':
            return Icons.local_shipping_outlined;
          case '0xf885':
            return Icons.location_searching_rounded;
          case '0xe44c':
            return Icons.notes;
          case '0xe44f':
            return Icons.notifications;
          case '0xf086f':
            return Icons.pallet;
          case '0xf266':
            return Icons.payments_outlined;
          case '0xeb78':
            return Icons.payment_sharp;
          case '0xeb7f':
            return Icons.people_sharp;
          case '0xf26e':
            return Icons.perm_contact_cal_outlined;
          case '0xf2e4':
            return Icons.radar_outlined;
          case '0xe52a':
            return Icons.report;
          case '0xf0563':
            return Icons.save_as;
          case '0xec5e':
            return Icons.search_sharp;
          case '0xe57f':
            return Icons.settings;
          case '0xf36e':
            return Icons.settings_outlined;
          case '0xe59a':
            return Icons.shopping_bag;
          case '0xf3ee':
            return Icons.store_outlined;
          case '0xe673':
            return Icons.track_changes;
          case '0xf05a4':
            return Icons.webhook;
          default:
            return Icons.error;
        }
      case 'FontAwesomeIcons':
        switch (s[0]) {
          case '0xf466':
            return FontAwesomeIcons.box.data;
          case '0xf0b1':
            return FontAwesomeIcons.briefcase.data;
          case '0xf19c':
            return FontAwesomeIcons.buildingColumns.data;
          case '0xf5e1':
            return FontAwesomeIcons.carBurst.data;
          case '0xe4e5':
            return FontAwesomeIcons.computer.data;
          case '0xf1c0':
            return FontAwesomeIcons.database.data;
          case '0xf658':
            return FontAwesomeIcons.envelopeOpenText.data;
          case '0xf56c':
            return FontAwesomeIcons.fileContract.data;
          case '0xf571':
            return FontAwesomeIcons.fileInvoiceDollar.data;
          case '0xf31c':
            return FontAwesomeIcons.filePen.data;
          case '0xf06d':
            return FontAwesomeIcons.fire.data;
          case '0xf085':
            return FontAwesomeIcons.gear.data;
          case '0xf0ac':
            return FontAwesomeIcons.globe.data;
          case '0xf5fd':
            return FontAwesomeIcons.layerGroup.data;
          case '0xf0ae':
            return FontAwesomeIcons.listCheck.data;
          case '0xf002':
            return FontAwesomeIcons.magnifyingGlass.data;
          case '0xf3d1':
            return FontAwesomeIcons.moneyBill1.data;
          case '0xf482':
            return FontAwesomeIcons.pallet.data;
          case '0xf1ad':
            return FontAwesomeIcons.solidBuilding.data;
          case '0xf007':
            return FontAwesomeIcons.solidUser.data;
          case '0xe041':
            return FontAwesomeIcons.trailer.data;
          case '0xf0d1':
            return FontAwesomeIcons.truck.data;
          case '0xe2b7':
            return FontAwesomeIcons.truckFront.data;
          case '0xf4df':
            return FontAwesomeIcons.truckMoving.data;
          case '0xf093':
            return FontAwesomeIcons.upload.data;
          case '0xf494':
            return FontAwesomeIcons.warehouse.data;
          default:
            return Icons.error;
        }
      case 'Symbols':
        {
          switch (s[0]) {
            case '0xe146':
              return Symbols.add_box;
            case '0xf5a4':
              return Symbols.box;
            case '0xe0ee':
              return Symbols.list_alt;
            case '0xf500':
              return Symbols.stacks_sharp;
            default:
              return Icons.error;
          }
        }
      default:
        return Icons.error;
    }
  }

  @override
  String toJson(IconData value) =>
      '0x${value.codePoint.toRadixString(16)},${value.fontFamily}';
}
