import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/address.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:intl/intl.dart';

class StringHelper {
  static String formatFirstItemWithCount<T>(List<T> items) {
    if (items.isEmpty) return '';
    if (items.length > 1) {
      return '${items.first} (+${items.length - 1})';
    } else {
      return '${items.first}';
    }
  }

  static String truncateWithEllipsis(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  static String buildAddress(LocationInfo location) {
    final address = location.address;
    final addressList = [
      location.code,
      location.name,
      address?.address1,
      address?.address2,
      address?.address3,
      address?.address4,
      address?.address5,
      address?.address6,
      address?.postCode,
      address?.countryCode,
    ];
    return formatAddressWithRegExp(addressList);
  }

  static String buildAccountAddress(Account location) {
    if (location.locationCode == null) {
      return '';
    }
    final addressList = [
      location.locationCode,
      location.locationName,
      location.address?.address1,
      location.address?.address2,
      location.address?.address3,
      location.address?.address4,
      location.address?.address5,
      location.address?.address6,
      location.address?.postCode,
      location.address?.countryCode,
    ];
    return formatAddressWithRegExp(addressList);
  }

  static String formatAddress(Address? address) {
    if (address == null) return '-';
    final addressList = [
      address.address1,
      address.address2,
      address.address3,
      address.address4,
      address.address5,
      address.address6,
    ];
    return formatAddressWithRegExp(addressList);
  }

  static String formatAddressWithRegExp(List<String?> addressList) {
    if (addressList.isEmpty) {
      return '';
    }
    return addressList
        .where((element) => element != null && element.trim().isNotEmpty)
        .map((e) => e!.replaceAll(RegExp('[^a-zA-Z0-9 ]'), ''))
        .where((e) => e.isNotEmpty)
        .join(', ');
  }

  static String getDateRangeFilterText(
    EmrDateRangeValue value,
    DateFormat dateFormat,
  ) {
    if (value.startDate != null && value.endDate != null) {
      return '${StringConstants.dateRangeDisplay}: '
          '${dateFormat.format(value.startDate!)} - '
          '${dateFormat.format(value.endDate!)}';
    } else {
      throw Exception({StringConstants.dateRangeInvalidMsg});
    }
  }

  static String getUserPreferredDataFromJob(
    SchedulerJob job,
    SchedulerPreference schedulerPreference,
  ) {
    final locationType = schedulerPreference.locationTypeEnum;
    final formatType = schedulerPreference.addressFormatType;

    String? address;

    // STEP 1 — Pick the correct address field
    switch (locationType) {
      case LocationTypeEnum.startLocation:
        address = job.startLocationAddress;

      case LocationTypeEnum.customerLocation:
        address = job.customerLocationAddress;

      case LocationTypeEnum.endLocation:
        address = job.endLocationAddress;
    }

    // STEP 2 — Apply format preference
    switch (formatType) {
      case AddressFormatType.fullAddress:
        break;

      case AddressFormatType.postCodeOnly:
        address = (job.postCodes?[locationType]?.trim().isNotEmpty ?? false)
            ? job.postCodes![locationType]!
            : address;
      case AddressFormatType.yardCode:
        address =
            (job.yardCodeLocations?[locationType]?.trim().isNotEmpty ?? false)
            ? job.yardCodeLocations![locationType]!
            : address;
    }
    return address;
  }

  static String getHaulierDisplayType(String haulierType) {
    if (haulierType == HaulierType.thirdParty.toString()) {
      return StringConstants.thirdPartyHaulierDisplay;
    } else if (haulierType == HaulierType.internal.toString()) {
      return StringConstants.internalHaulierDisplay;
    } else {
      return StringConstants.managedthirdPartyHaulierDisplay;
    }
  }

  static String buildTruckAndHaulierDisplay(TruckInfo haulier) {
    if (haulier.haulierType == null) {
      return '';
    } else if (haulier.haulierType == null) {
      return '';
    } else if (haulier.assetNumber == null && haulier.vrm == null) {
      return (haulier.haulierName?.isNotEmpty ?? false)
          ? '${haulier.haulierCode} - ${haulier.haulierName}'
          : '${haulier.haulierCode}';
    } else if (haulier.driverName?.isNotEmpty ?? false) {
      return '${haulier.vrm} - ${haulier.assetNumber} - ${haulier.driverName}  '
          '(${haulier.haulierCode})';
    }
    return '${haulier.vrm} - ${haulier.assetNumber}'
        '${haulier.haulierCode != '' ? ' (${haulier.haulierCode})' : ''}';
  }

  static String getHaulierTypeForDisplay(Haulier haulier) {
    final isManaged = haulier.isManagedHaulier ?? false;
    final isThirdParty = haulier.isThirdPartyHaulier ?? false;
    if (isManaged) {
      return StringConstants.managedthirdPartyHaulierDisplay;
    } else if (isThirdParty) {
      return StringConstants.thirdPartyHaulierDisplay;
    } else {
      return StringConstants.internalHaulierDisplay;
    }
  }

  static HaulierType getHaulierTypeForAPI(Haulier haulier) {
    final isManaged = haulier.isManagedHaulier ?? false;
    final isThirdParty = haulier.isThirdPartyHaulier ?? false;
    if (isManaged) {
      return HaulierType.managed;
    } else if (isThirdParty) {
      return HaulierType.thirdParty;
    } else {
      return HaulierType.internal;
    }
  }

  static String limitText(String text, {int maxChars = 100}) {
    if (text.length <= maxChars) return text;
    return '${text.substring(0, maxChars)}...';
  }

  static String buildProductsString(List<Product>? items) {
    if (items == null || items.isEmpty) {
      return StringConstants.noData;
    }

    final filtered = items.where((e) => e.active ?? true).map((e) {
      if (e.description == null || e.description!.isEmpty) {
        return e.code;
      }
      return '${e.code} - ${e.description}';
    }).toList();

    if (filtered.isEmpty) {
      return StringConstants.noData;
    }

    return filtered.join('\n');
  }
}

extension StringNormalize on String {
  //remove spaces, dashes, punctuation
  String normalized() => replaceAll(RegExp('[^a-zA-Z0-9]'), '').toLowerCase();
}

extension NullableStringCheck on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
