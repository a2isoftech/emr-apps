## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.64.0

- Added method to get label for PartLocationEnum and method to get currency code for territory

## 2.63.0

- `ElvMultiSelectorButton` widget added
  
## 2.62.0

- Added new enum for Part Type and Part Location

## 2.61.0

- Added new country code enum for address lookup

## 2.60.0

- Added new permission constant to store permission name to view elv quotation based screens

## 2.59.0

- Added helper to centrally resolve default Yard across screens.

## 2.58.0

- Updated VehicleDescription (Added toJson method)

## 2.57.0

- `elv_vehicle_search` widget updated.
- Change searchbox `TextField` with `EmrTextFormField`

## 2.56.0

- Bump pubspec version

## 2.55.0

- Updated emr_one_elv_quote_api version to 1.11.0

## 2.54.0

- `ElvVehicleSearch` now have `actionWidget` option in widget.

## 2.53.0

- Updated flutter to 3.38.3 including required package changes

## 2.52.0

- Set `batchQuoteBundleId` property nullable in `BatchQuoteBundleResponse` model.

## 2.51.0

- Added `postcode_to_yard_distance_request_model` and `postcode_to_yard_distance_response_model` models

## 2.50.0

- Update Constants for elv permissions.
- Added new permissions `viewVINScrap`, `viewElvT2`, `viewELVQuotes`, `elvReadOnly`, `elvViewPermission` and `kViewElvDismantleScreenPermission`

## 2.49.0

- Updated `elv_territory_enum.dart` added `documentButtonText`

## 2.48.0

- Updated `nonQuotableVehicle` flag to `hasFlaggedBodyType` on `VehicleDescription`
- Updated `hybridOrElectric` flag to `hasFlaggedFuelType` on `VehicleDescription`

## 2.47.0

- Added constant to save Part price description

## 2.46.0

- Added `CatTypeEnum`
- Added `PartPrices` to `ActiveQuote`
- Added `numOfPreCats` and `numOfPipeCats` to `VehicleConfiguration`
- Removed unused `Configuration` class from `batch_quote_bundle_response.dart`

## 2.45.0

- Added new model to parse bank detail and notes update response

## 2.44.0

- Added enums and constants for Quote Search screen.

## 2.43.0

- Added `chromeWheels` to Vehicle Configuration
- Added `canShowChrome` to ELV Territory Enum

## 2.42.0

- Added `getCountry()` method in `elv_territory_enum.dart` extension to return the string representation of `ElvTerritory`.

## 2.41.0

- Added `haulageRate` to `collection_details`
- Added `haulageRate` and `batchQuoteId` to `CollectionAndBankDetails`

## 2.40.0

- Created `quote_status_enum.dart` for managing quote statuses.

## 2.39.0

- Moved `notes` property from `collection_details` to `batch_quote_model`.
- Removed `bank_account` and `notes` properties from `update_collection_detail`.
- Updated flow for adding and updating **Notes** and **Bank Account** details.

## 2.38.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.37.0

- Updated extension method name from `isValidPostcode` to `isValidPostcodeFormat`

## 2.36.0

- Added `toStringArray()` method to `QuoteStatusEnum` to return all enum values as an array of strings.

## 2.35.0

- Added `elvUsaTreatHybridAsNonQuotable` and `elvUkAllowNonQuotable` to ElvConstants

## 2.34.0

- Added AccountLocationCode field in AccountModel and SimpleBundleRequestModel

## 2.33.0

- Added new enum for quote source

## 2.32.0

- Added new constant for custom error type used when there is an error getting collection operators

## 2.31.0

- Added `NumberOfCollectedPricesRequired` property in multi pricing request

## 2.30.0

- Added new constant to save permission name which allows reopening inspection

## 2.29.0

- `elvVehicleDocuments` named route added in `constants.dart` file.

## 2.28.0

- Updated `QuoteStatus` to an enum in `ActiveQuote`

## 2.27.0

- Added `createdBy`, `modifiedBy`, and `modifiedDate` to Batch Quote Model

## 2.26.0

- Added `haulageCost` to Active Quote Model

## 2.25.0

- Added `LeadSourceEnum`

## 2.24.0

- Added account type to Account Model

## 2.23.0

- Not setting selected flag when serializing and deserializing vehicle

## 2.22.0

- Added territory based defaults for alloy and steel count and flag to include or exclude battery and cat when adding a new vehicle

## 2.21.0

- Updated UomCode decode method to be able to parse integers and return UOM
- Made `collectionOperator` in `UpdateCollectionDetail` as optional to be able to remove operator once assigned

## 2.20.0

- Removed change yard dialog and replaced with generic elv selection dialog

## 2.19.0

- Added new generic selection dialog and updated models for quote abandon reasons

## 2.18.0

- Fixed pull-to-refresh issue in the `ElvVehicleSearch` widget to improve user experience and prevent refresh failures.

## 2.17.0

- Add vehicleType neum to vehicle description

## 2.16.0

- Update LeadSource Model methods

## 2.15.0

- Add priceAdjustmentReasonRequired method to elv_territory_enum

## 2.14.0

- Using DecoratedBox instead of Container

## 2.13.0

- Remove additional styles and using standard ones

## 2.12.0

- Added LeadSourceId and BasePrice to batch quote and batch quote bundle response

## 2.11.0

- Added a new widget, `ElvVehicleSearch`, which shows a list of vehicles.
- Have a search bar to find vehicles.
- An in-progress badge appears on the right side of the list item tile.

## 2.10.0

- Add lead source model and lead source Id to bundle models

## 2.9.0

- Not converting Collection Date to UTC or Local

## 2.8.0

- Updated BatchQuoteModel to make yard nullable

## 2.7.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.6.0

- elv_territory_enum Updated requiredSealNumber, requiredSerialNumber

## 2.5.0

- Update Models
- inspection_search_input_model.dart
- inspection_search_result.dart

## 2.4.0

- Added new getter to get formatted collection data and time together

## 2.3.0

- Removed dependency on GoRouter
- Removed ELV's own breadcrumb widget and use framework provided widget instead
- Require `emr_one_core` `4.3.0` or better

## 2.2.0

- Updated dependencies.

## 2.1.0

- Added constants for default curb weight and fixed bug parsing manual vehicle quote response

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.3.4

- Renamed property for collection detail and added notes

## 1.3.3

- Added new models to create and update collection operator assignments

## 1.3.2

- Added Created By to the bundle search response model.

## 1.3.1

- Added Trim to vehicle description

## 1.3.0

- Bulk Pricing Changes

## 0.0.1

- TODO: Describe initial release.
