## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.31.0

- Improvements to the read-only ticket details screen and behind the scenes work to make it editable.

## 2.30.0

- Removed the `emr_web_helpers` dependency to fix the Android build.

## 2.29.0

- Ticket details screen (read-only version).

## 2.28.0

- #57301: Payment approval screen to support new format of document id

## 2.27.0

- Ensure ticket gallery doesn't display duplicate images.

## 2.26.0

- Added payment approval status check in payment approval screens.

## 2.25.0

- Reword the message if PaymentApproval document does not exists.

## 2.24.0

- Updated payment approval screen field mappings to new payment record fields.

## 2.23.0

- Approval screen to show correct amount and payment method

## 2.22.0

- Updated flutter to 3.38.3 including required package changes

## 2.21.0

- Schema changes to save ticket snapshot in payment record

## 2.20.0

- #52941 - Fixed Approval screen - Oppra theme UI

## 2.19.0

- Refactored imports to fix warnings.

## 2.18.0

- Groundwork for new menu structure.

## 2.17.0

- Updated payment record breaking changes.

## 2.16.0

- Updated emr_core_api to fetech latest queries and mutations for `PaymentRecord` model.

## 2.15.0

- Updated to work with latest `EmrCard` changes in `emr_one_core: 4.88.0`

## 2.14.0

- Changes to simplify API URLs.

## 2.13.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.12.0

- Removed AIHelper and replaced with EmrLogger

## 2.11.0

- #49940 modified the ticket payment approval ui

## 2.10.0

- #49594 Apply existing Hotfix for ticket gallery public link creation performance issues

## 2.9.0

- Changes to add support for videos in ticket gallery.

## 2.8.0

- Removed cached_network_image due to a CORS issue occurring with SAS URLs.

## 2.7.0

- Added payment approval screens, widgets and supporting code
- Updated `emr_core_api` requirement to ^2.2.0

## 2.6.0

- Updated emr_core_api package version.
- Removed emr_one_invapi package

## 2.5.0

- Updated emr_one_core dependency to ^4.26.0
- Update `TicketDetailsScreen` to use the `rowHeight` function on `EmrGrid`.

## 2.4.0

- Now depends on core 4.18.0 or better (GlobalSearch -> OmniSearch change)

## 2.3.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.2.0

- Updated dependencies.

## 2.1.0

- Removed leading wildcard from ticket search

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.4.0

- Use new global search UI

## 1.3.5

- Removed media asset type dependency.

## 0.0.1

- TODO: Describe initial release.
