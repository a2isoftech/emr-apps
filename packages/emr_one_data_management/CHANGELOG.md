## 3.2.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.1.0

- Fixed yard input showing as disabled on add stock take config

## 3.0.0

- Updated Flutter to 3.41.9

## 2.107.0

- Removed legacy routing.

## 2.106.0

- Updated emr_sharedtypes package version

## 2.105.0

- Added UI for stock take configuration

## 2.104.0

- Added new Workflow for Account 'AccountWorkflow'.

## 2.103.0

- updated weighbridgeprofile form by adding autoHulkAffidavit

## 2.102.0

- updated weighbridge profile form by adding username and password fields in camera under scale

## 2.101.0

- Update emr_core_api package to fix a bug while creating the company.

## 2.100.0

- Fixes on input fields for the `YardForm` and added tab-based keyboard navigation to the YardForm input fields.

## 2.99.0

- Updated "example form" and "tab to scroll" screens for testing `EmrSecurityContainer`.

## 2.98.0

- Hidden `notifications-test` page expanded on to use the updated prototype of Notifications

## 2.97.2

- Corrected mappings from Company Bank Account to the new form fields.

## 2.97.1

- Fixed update company input.

## 2.97.0

- Updated `Company` form and related files to support on Cheque Signatures.

## 2.96.0

- Updated `CompanyBankAccountForm` and related files for new properties on `CompanyBankAccount`

## 2.95.0

- Updated `YardForm` screen for new property `PrimaryCashierPaymentSystem`

## 2.94.0

- Yard Screen now loads Yards by ID instead of Code.
- Yard Screen expanded issue resolved.

## 2.93.0

- Added an example of using `EmrTabBarVerticalViewResponsiveColumnsCard` and actions for `EmrTabBarVerticalView`.

## 2.92.1

- Bugfix on `EmrQueryLayoutHybrid` to remove card views from screens where it is not supported.

## 2.92.0

- All instances of `EmrQueryLayout` migrated to `EmrQueryLayoutHybrid`.

## 2.91.0

- Cheque Books screen base functionality added.

## 2.90.0

- Updated Payment methods to use `MaxUpperLimit` value.

## 2.89.0

- Updated flutter to 3.38.3 including required package changes

## 2.88.0

- Added Edit popup for managing Workflow Yard Payment Rules.

## 2.87.0

- Fix `Add Level` not appearing after primary actions added to Hybrid Layout.

## 2.86.0

- Added configuration in Weighbridge Profile to control Known Tare saving and default expiry duration.

## 2.85.0

- Fix Workflow Level Titles not reflecting values correctly after save.

## 2.84.0

- Fix yard selection for Stocktake Workflow when Yard is already present in the Grid.

## 2.83.0

- Updated the `WeighbridgeProfile` UI to use the `ExpiryDate` for the `KnownTares`.

## 2.82.0

- Added Company Bank Account screens.

## 2.81.0

- EmrDialog.modal button changes.

## 2.80.0

- Updated the shared types version to 1.80.0.

## 2.79.0

- Weighbridge profile - set default value of `show weight mode` to `Tare and weight deduction`.

## 2.78.0

- Added an example screen for testing EMR form fields in `grid` mode.

## 2.77.0

- Added `Manual Tare Weight` toggle in Weighbridge Profile form.

## 2.76.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.75.0

- Modify column count for Workflows screen based on Level Configurtions received from Max Level of approval per workflow query.
- Minor UI fixes for Workflows screen.

## 2.74.0

- Added `ShowWeightMode` field in the in Weighbridge Profile UI.

## 2.73.0

- #52726 - Delete weighbridge profile

## 2.72.0

- #52702: Update PaymentMethod schema on EMRApps (BankCode, CommisssionPercentage and SplitPayment)

## 2.71.0

- Added bank code to Yards - Payment Methods details (Auto Cheque, Faster Payment, Overnight Faster Payment and Secore Prepaid) section.

## 2.70.0

- Groundwork for new menu structure.

## 2.69.0

- Weighbridge configurations UI fixes.

## 2.68.0

- Add funtionality to modify Workflow Level Titles.
- Remove plus icon from level cells.
- Add functionaility to modify users on hover over the Level cells.

## 2.67.0

- Added Sorting for Company, Territory, Yard, PaymentRule.
- Added YardCode filter and TerritoryCode filter for Yard Screen
- Added YardCode filter and TerritoryCode filter for YardPaymentRule Screen

## 2.66.0

- Restore 2 missing fields in Yard UI

## 2.65.0

- Yard editor screen layout changes

## 2.64.0

- Made validation not fire for User - Job Title & Employee number on existing users.

## 2.63.0

- Add Workflow Rules Screen to manage rules for Stocktake & Yard Payment Approvals.

## 2.62.0

- Added Weighbridge configuration screen.

## 2.61.0

- Fixed a bug in the new Yard Creation.

## 2.60.0

- Updated `WeighridgeProfile` UI to add `EnableWeighbridgePay` and `HwcnLevel` new fields.

## 2.59.0

- Added filtering to Query Layout example along with toggle on/off

## 2.58.0

- Fixed a bug in the example controller action map

## 2.57.0

- Added `EmrQueryLayoutHybrid` example and explorer.

## 2.56.0

- Added an example of using input formatters to the example form.

## 2.55.0

- Fixed the issue of Weighbridge group screen only allows top 10 to edit.

## 2.54.0

- Added Devices in Yard Screen

## 2.53.0

- Emr Query Layout hybrid support and fixes

## 2.52.0

- Updated the weighbridge Profile UI to add `VehicleDetailsRequired` field.

## 2.51.0

- Fixed reference to emr_core_api

## 2.50.0

- Added active parameter to roles queries

## 2.49.0

- `EmrTimeFormField` added to the example form.

## 2.48.0

- Fixed column width issues on all search screens.
- Switched order of title & description in Territory drop down

## 2.47.0

- Added Create yard Payment Rule functionality

## 2.46.0

- Support for async validator.

## 2.45.0

- Removed CFCCertificationRequired and CFCCertificationRequiredProductIds.

## 2.44.0

- Added new field `EnforceELVInspectionForLeadSources` in the weighbridge profiles UI.

## 2.43.0

- Added new payment methods for Yard - AutoChequeWithEncashmentAtmPaymentMethod, AutoChequeWithEncashmentCashPaymentMethod, DigitalWalletWithAtmPaymentMethod, DigitalWalletWithCashPaymentMethod to the Yard.

## 2.42.0

- Fixed the Extended Properties for yard going Null into Raven

## 2.41.0

- Added change to include PaymentRule Screen.

## 2.40.0

- Added Yard Screens

## 2.39.1

- Removed the field `PrintCheckWeight` from WeighbridgeProfiles UI.

## 2.39.0

- Updated the WeighbridgeProfiles Form UI to add new fields `PrintTicketComments` and `PrintCheckWeight`

## 2.38.1

- Added validator to the Group Names Input.

## 2.38.0

- Added new screen for `Weighbridge Groups` management

## 2.37.0

- Added new fields in the weighbridges profiles screen.

## 2.36.0

- Added autovalidateMode to EMR form fields and updated packages for compatibility.

## 2.35.0

- Added nullable- Created and Modified fields in UserFormData model
- Updated emr_core_api version to `2.28.0` and emr_sharedtypes to `1.38.0`

## 2.34.0

- added more Validation checks for Urls with custom url validator and updated EWC Control alignment.

## 2.33.0

- Added `enablePublicWeigh` and `enablePartyWasteStreamNumber` toggle for weighbridge profiles
- updated emr_core_api version to 2.23.0
- updated emr_sharedtypes version to 1.37.0

## 2.32.0

- Fixed the Known Tare Bug of adding known tares without yard selection.

## 2.31.0

- Updated the UI to use the the `Reference Data` API data in weighbridge gorups

## 2.30.2

- Updated the products/locations search pattern in wiehgbridge profiles..
- Updated the lables and fixed the alignment issue in wiehgbridge profiles.

## 2.30.1

- Fixed the alignment and deleted row display issue in the Known tares.

## 2.30.0

- Fixed the bugs in the wighbridge profiles and done some changes.

## 2.29.0

- Added all the missing fiends in the weighbridge profiles.

## 2.28.0

- Allowed techment cat settings fiels nullable.

## 2.27.0

- Added the EWC Control fields in the weighbridge profiles.

## 2.26.0

- Added Active switch in Companies Edit screen.

## 2.25.3

- Changed the ticket print template field to dropdown

## 2.25.2

- Added the new field in the weighbridge profiles camera and changed the ticket print type & direction fields to dropdown

## 2.25.1

- Used dropdown instead of the picker

## 2.25.0

- Fixed the weighbridge profile tab bars `add` button selection and same name on clone issues.

## 2.24.1

- Fixed clearing of Yard when trying to change it
- Rearranged Switches before groups

## 2.24.0

- Retain previous selected YardCode in filter
- Allow <Space><Hyphen><Underscore> in display name

## 2.23.0

- Updated model PricingServiceConfig name to PricingServicesConfig

## 2.22.0

- Updated emr_one_core dependency to ^4.47.0

## 2.21.0

- Added a notification test screen (wip)

## 2.20.0

- Updated emr_core_api package version.
- Removed emr_one_invapi package

## 2.19.0

- Updated `WeighbridgeProfiles` screen to add new properties and some bug fixes.

## 2.18.0

- updated the weighbridge profile `rounding` property type to `Decimal` from `double`
- Added the `RoundingOptions` localization
- Deleted the old `weighbridge_profile` screen code

## 2.17.0

- Updated `emr_one_core` dependency to `^4.41.0`.

## 2.16.0

- Updated `emr_one_core` dependency to `^4.39.0` so `EmrFilePickerFormField` can be used.

## 2.15.0

- Added Territories screens

## 2.14.0

- Add permission to view Comapnies

## 2.13.0

- Updated example form for the usage of emr uom form field.There is change in property readOnly is divided in to two attr : readOnlyValue and readOnlyUom

## 2.12.0

- Added the new weighbridge profile screens

## 2.11.0

- Added Companies screens

## 2.10.1

- Added default values for required parameters in Input$WeighbridgeProfileInput

## 2.10.0

- Removing individual import of api_response class

## 2.9.0

- Added the User Roles screens(User Role & System Roles) and User Role card in the User Form

## 2.8.0

- Removed User fields

## 2.7.1

- Updated emr_one_invapi to v2.12.1

## 2.7.0

- Updated Users screen.

## 2.6.0

- Updated `emr_one_core` to `4.15.0`.
- Updated `emr_sharedtypes` to `1.16.0`.
- Added Rounding Type and Rounding Precision fields to the UI for creating/editing weighbridge profiles.

## 2.5.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.4.0

- Started the user search and form screens.

## 2.3.0

- Added EmrMultiPickerFormField to the example form.
- Updated dependencies.

## 2.2.0

- Updated dependencies.

## 2.1.0

- updated `emr_one_core` to 4.1.0
- updated `emr_sharedtypes` to 1.7.0
- ui changes to handle `enableCheckWeight`, `publishTicketToTrade`, `allowRollingWeights`

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.6.0

- Updated emr_one_core dependency to ^3.26.0

## 1.5.0

- Updated emr_one_core dependency to ^3.25.0
- Updated Weighbridge Profile screen to use EMR databound form fields.

## 1.4.0

- Fixed weighbridge profile search results padding.
