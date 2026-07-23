## 2.2.0

- Added `ManagementType` field in `AccountManager` to keep track of `ManagementType` as `Pool` or `User`.
## 2.1.0

- Added support for Signature for Contact
- Added audit info in Media asset.

## 2.0.0

- Updated Flutter to 3.41.9

## 1.100.0

- Update latest schema after Hot Chocolate v15 update and .net 10 upgrade

## 1.99.0

- Added account status new field in `Account` model.

## 1.98.0

- Added model for stock take configuration

## 1.97.0

- Added Json Serializer and Deserializer for `MediaAsset`

## 1.96.0

- Added status field in `SyncWeighbridgeTicketTask` model.

## 1.95.0

- Added missing property to account_setting `hasHazardousWasteConsignmentNote` and `isDigitalWalletActivated`.
- Convert the properties from string to enum type `preferredPaymentMethod`, `customerVatGroupType` and `supplierVatGroupType`.

## 1.94.0

- Updated Contracts to include new fields for contracts

## 1.93.0

- Added new rule for `AccountApprovalRule`.

## 1.92.0

- Added `AutoHulkAffidavit` in WeighbridgeProfile

## 1.91.0

- Added userName and password properties in Camera model under Scales in WeighbridgeProfile

## 1.90.0

- Corrected schema typos: `WateProducer` → `WasteProducer`, `WasterTransporter` → `WasteTransporter`.

## 1.89.0

- Revert - Added Customer facing display configurations In `WeighbridgeProfile`.

## 1.88.0

- Added Customer facing display configurations In `WeighbridgeProfile`.

## 1.87.0

- New fields added to `Company`

## 1.86.0

- New fields added to `CompanyBankAccount`

## 1.85.0

- Added account business detail types

## 1.84.0

- `Yard` modified with adding new enum type field `primaryCashierPaymentSystem`

## 1.83.0

- Added new class for `Team`, `TeamMember`, `AccountTeam`.
- Account - Added new field in `AccountTeams`

## 1.82.0

- Account Settings - Added new fields `hasHazardousWasteConsignmentNote` and `isDigitalWalletActivated`.
- Account - Added new field `visitFrequency`
- Added new class for `LicenseExemption`, `AccountDocument`,`MediaAsset`
- Account - Added new field `licenseExemption`

## 1.81.0

- `UomService` modified to support undefined territory codes.

## 1.80.0

- Added new fields verificationType and comments

## 1.79.0

- Added new fields `middleName`, `faxNumber` in Contact model

## 1.78.0

- Added 'ChequeBooks' model for Data Management

## 1.77.0

- Added `MaxUpperLimit` to Payment Method models.

## 1.76.0

- Updated flutter to 3.38.3 including required package changes

## 1.75.0

- Added InTrade property in `SyncweighbridgeTicketTask` model

## 1.74.0

- Added `ModifyWorkflowYardPaymentRule` model.

## 1.73.0

- Added `KnownTareConfigurations` property in `WeighbridgeProfile` with fields `SaveKnownTares` and `KnownTareExpiryDays`

## 1.72.0

- Added `ExpiryDate` field in the `WeightDeduction` of `WeighbridgeProfiles`.

## 1.71.0

- Added CompanyBankAccount model.

## 1.70.0

- #53045 - Added `EnableManualTareWeight` to `WeighbridgeProfile`.

## 1.69.0

- Rename `WorkflowRuleLevelTitle` model to `WorkflowConfiguration`.
- Add `WorkflowRuleMaxLevel` model.

## 1.68.0

- Add `ShowWeightMode` enum and property in weighbridge `TicketPrint` shared types model.

## 1.67.0

- #52702: Update PaymentMethod schema on EMRApps (BankCode, CommisssionPercentage and SplitPayment)

## 1.66.0

- Added Bank Code to Auto Cheque, Faster Payment, Overnight Faster Payment and Secore Prepaid payment method

## 1.65.0

- Add `WorkflowRuleLevelTitle` model.

## 1.64.0

- Add `StocktakeRule`, `PaymentRule` and `WorkflowRule` models.

## 1.63.0

- Added defaults to devices.

## 1.62.0

- Added models for weighbridge configuration.

## 1.61.0

- Added `ConsignmentNote` model
- Added `HazardousWasteProduct` model

## 1.60.0

- Added `EnableWeighbridgePay` and `HwcnLevel` fields in the `WeighbridgeProfile` model.

## 1.59.0

- Added constants for user prefered devices.

## 1.58.0

- Added Devices model.

## 1.57.0

- Added `VehicleDetailsRequired` new field in the `WeighbridgeProfile` model

## 1.56.0

- Added `permission` and other properties to `User`

## 1.55.0

- Added Account sub types model and mapping.

## 1.54.0

- Updated PaymentRule class with yard code property

## 1.53.0

- Added the json values for PaymentMethod enum.
- Updated the deopot model to include `cmpCode`.

## 1.52.0

- Removed CFCCertificationRequired and CFCCertificationRequiredProductIds.

## 1.51.0

- Added `EnforceELVInspectionForLeadSource` field in the Weighbridge Profiles models.

## 1.50.0

- Fix issue where app launch was failing due to seeing `PaymentMethod` as `InvalidType` (code generation)

## 1.49.0

- Added new payment methods for Yard - AutoChequeWithEncashmentAtmPaymentMethod, AutoChequeWithEncashmentCashPaymentMethod, DigitalWalletWithAtmPaymentMethod, DigitalWalletWithCashPaymentMethod to the Yard.

## 1.48.0

- Added `EventLogs` in `SyncWeighbridgeTicketTask`

## 1.47.0

- Added the `PaymentRule` model.

## 1.46.0

-Added Regions, PaymentMethod, PaymentMethods related classes and enums

## 1.45.0

-Added last visited on field to account

## 1.44.0

-Added `PrintTicketComments` and `PrintCheckWeight` new boolean fields in the WeighbridgeProfile model.

## 1.43.0

- Added `WeighbridgeGroup` model in `Weighbridges`

## 1.42.0

- Added `AccountType` to `Account`
- Made `Location` as non-nullable in `Account` to match what we have in core api

## 1.41.0

- Added ProductEWC to Account class.

## 1.40.0

- Added the `SyncWeighbridgeTicketTask` model.

## 1.39.0

- Added new fields in the WeighbrigesProfiles Model.

## 1.38.0

- Added `Created` & `Modified` models
- Added their reference in DocumentBase model
- Updated the references in User and Company models

## 1.37.0

- Added `enablePublicWeigh` in `WeighbridgeProfile` model
- Added `enablePartyWasteStream` in `EwcControl` model

## 1.36.0

- Added AllowedProducts in the weighbridge profiles modes.
- Updated Techement cat settings to allow null values.

## 1.35.0

- Added Ewc Control fields in the weighbridge profiles model.

## 1.34.0

- Added Active property in Company model.

## 1.33.0

- Changes to set yards and products to account publication.

## 1.32.0

- Updated WeighbridgeProfile model.

## 1.31.0

- Updated WeighbridgeProfile, Yard, Company, and Territory models. Added EnablePricingService model.

## 1.30.0

- Introduced `OverlayUrl` in `WeighbridgeProfile`

## 1.29.0

- Adding active flag to location

## 1.28.0

- Updated Territory model

## 1.27.0

- Updated the Weighbridge Profiles modal for new weighbridge profiles screens

## 1.26.0

- Added Company model

## 1.25.0

- For UOM-KG, updated decimal places from 3 to 0

## 1.24.0

- Removed valid territories collection from account

## 1.23.0

- Added the JobRoles,SystemRoles, and permissions models. Updated the user model to include JobRoles.

## 1.22.0

- Removed User fields

## 1.21.0

- Adding address id to address

## 1.20.0

- Add allowedProductIds property to WeighbridgeProfile model

## 1.19.0

- Add enableTransferLine and enableCreateNewLine properties to WeighbridgeProfile model

## 1.18.0

- Changed the `User` model properties.
- Created a `DocumentBase` model.
- Deleted `UserExtendedProperties` which is no longer needed.

## 1.17.0

- Adding publications to account and job title to contact

## 1.16.0

- Adding account settings, pricing control, industry groups and bank account type.

## 1.15.0

- Added Rounding to weighbridge profile model

## 1.14.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 1.13.0

- Updated Deopt and Yard models.
- Added User model, with extended property constants and helper extensions.

## 1.12.0

- Adding loyalty and prepayment cards to account.

## 1.11.0

- Added Product, DeliveryMethod and Publication types

## 1.10.0

- Adding bank account, territories etc to account.

## 1.9.0

- Made Territory extend Equatable.

## 1.8.0

- Updated dependencies.

## 1.7.0

- Decorated `Address` model with `JsonSerializable` attribute
- Decorated `LatLong` model with `JsonSerializable` attribute
- Added `enableCheckWeight` in `WeighbridgeProfile` model
- Added `publishTicketToTrade` in `WeighbridgeProfile` model
- Added `usePreviousWeight` in `WeighbridgeProfile` model

## 1.6.0

- Added `UomValue.toString()` override which will call `toRateString()` or `toWeightString()` as appropriate.
- Added `UomValueExtension.numberOfFractionalDigits` getter.

## 1.5.0

- Added more account management models (e.g. contact, business details, locations etc)

## 1.4.5

- Decorated `Contract` model with `JsonSerializable` attribute.

## 1.4.4

- Added `ReusableSteelsContract` model and refactored `Contract` model.

## 1.4.0

- Added `Account` and `Contract` models.

## 1.2.0

- Added `displayFormatIntegralDigits` and `displayFormatFractionalDigits` UOM extension methods.

## 1.1.0

- Added optional `gradeType` property to `Depot`.
- Added `DepotFilterExtensions` which contains a `filterGradeTypes` extension method on `Future<List<Depot>>`.

## 1.0.0

Initial release
