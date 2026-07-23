## 2.0.4

- Fixed email validation to support valid email address formats.

## 2.0.3

- Removed the “Scrap metal dealers act” text, its incorrectly displayed beneath the back navigation arrow on the document upload.
- Fixed multiple back arrow icons are rendered when the screen is resized, resulting inconsistent page behaviour.
- The “Address 2” field is marked as optional during POI/POA submission.

## 2.0.2

- Fixed a regression when running in EMR Apps rather than Customer Portal.

## 2.0.1

- Fixed a regression when running in EMR Apps rather than Customer Portal.

## 2.0.0

- Updated Flutter to 3.41.9

## 1.35.0

- Implemented the validation for County as per the country code.

## 1.34.0

- Fixed account search issue by resolving missing userInfoId retrieval

## 1.33.0

- Fix infinite loader and missing error message on account load failure.
- Enable “All Done” button for accounts with pre-existing valid data

## 1.32.0

- Fix phone number prefill format on account activation screen
- Separated proof of identity and address handling for UK DL document uploads.
- Fixed All Done button not responding after document upload completed in account registration flow.
- Fixed missing Terms & Conditions display in account and payment details screens.
- Added missing instructions to signature drawing screen.

## 1.31.0

- Fixed QR code timeout to expire after 3 minutes instead of 15 seconds.

## 1.30.0

- Corrected localization key typos: `documentOrLicenseNumber` → `documentOrLicenceNumber`.

## 1.29.0

- Added ability to manually enter document details when OCR fails.
- Implemented QR upload timeout handling that forces user navigation back after 3 minutes.

## 1.28.0

- Allow users to save signature when bank account details are masked and unchanged.

## 1.27.0

- Updated emr_core_api to latest version to include OCR fix for UK Driving Licence.

## 1.26.0

- Updated packages

## 1.25.0

- Allowed signature-only updates by skipping validation for unchanged masked bank details.
- Enabled full-screen preview for uploaded document images.
- Added UK Driving Licence as a selectable proof of address document type.

## 1.24.1

- Use 'appConfig.edgeMediaApiUrl' instead of 'appConfig.mediaApiUrl' for scan and attach

## 1.24.0

- Changes to get scan and attach work in native apps as well as web

## 1.23.0

- Making checkboxes black again on payment details page

## 1.22.0

- Changes to allow continue from payment details if
  - either bank details entered and TnCs checked
  - or bank details entered and both TnCs are unchecked
  - or bank details not entered and both TnCs are checked

## 1.21.0

- Role list should all map to Industry type (Material Recycling - Collector) (the same for UK/US/EU)
- Payment page - there is no error on the screen that if you do SecOre CEL is required and vice versa (the save button is just greyed out until you do both)
- Telephone number for the UK is being set as +4407121 when it should be set to +447121

## 1.20.2

- Fixing activating the account flow for cashier by setting status to live

## 1.20.1

- Fixing the console error thrown on setting address1 for upload documents

## 1.20.0

- Fix to load roles and visit frequencies whn updating account from edge and to allow uploading document when address lookup fails

## 1.19.0

- Changes to map address correctly for NL

## 1.18.0

- Changes to make all fields mandatory on uploaded document details screen

## 1.17.0

- Updated flutter to 3.38.3 including required package changes

## 1.16.0

- Changes to set secore checkbox on going to payment details page

## 1.15.0

- Changes to fix the portal that was breaking on marketing prefs screen

## 1.14.0

- Changes to use roles, titles and visit frequencies from remote config for portal

## 1.13.0

- Changes to use roles, titles and visit frequencies from refernce data instead of remote config and setting secore agreement when running from emr apps

## 1.12.0

- Fixes for scan and attach to work in native mode as well as web

## 1.11.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 1.10.0

- Text changes and fixes for external links requested by Marketing

## 1.9.0

- Added 'agreeToSecoreTnc' checkbox to payment details page for UK

## 1.8.0

- Updated routes when running in cashier mode.
- Populated countries that are needed for contact info page.

## 1.7.0

- Updated routes when running in cashier mode.

## 1.6.0

- Changes to show message over qr code, and update the account in cashier context from marketing prefs screen

## 1.5.0

- Updated routes when running in cashier mode.

## 1.4.0

- Allow continue uploading proof of id or address if it cant be OCRed when running in emr apps

## 1.3.0

- Fix to load the account in account loading service to be used by weighbridge etc

## 1.2.0

- Changes to allow qr code login for portal customers and scan and attach for emr internal users

## 1.1.0

- Changes to fix sign in problems in portal

## 1.0.0

- Emr account registration package
