## 4.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 4.0.0

- Updated Flutter to 3.41.9

## 3.5.0

- Updated flutter to 3.38.3 including required package changes

## 3.4.0

- Showing Trade2 Id in the Packing List Screen.
- Always showing weight on Packing List instead of `-`.

## 3.3.0

- Added the check for Yard Field when looking for any Open Bags / Creating new Bags

## 3.2.0

- Rename Update Ticket to Transfer Lot
- Added the new property Net Weight and used that in showing lot weight
- Fixed some issues with Pallet Weight(Backend)

## 3.1.0

- Handle failures when Update Ticket fails in the existing lot screen
- Disabled 'Mark as Closed' button in View Bags when there are no joints.
- When a bag gets removed from Packing List, its status will be changed back to "Packed" (Backend Change)

## 3.0.0

- UOM shown in View Lots, Edit Lots, Pallet and Packing List will be based on User's Preference
- Net Weight will be shown in Card and Grid view in View Lots Screen and Edit Lot Screen
- Added the necessary checks when capturing Gross Weight and Tare Weight so that Net Result should NOT be 0 or Negative
- Make Tare Weight OPTIONAL in Lot Edit Screen.
- Introduced a new screen- Ticket With Lots View where user can view all the lots associated with a ticket.
- Added a new screen called- BAG. This will be used to add joints. 
- Added the NEW Product Mapping and removed Heap Selection so that based on whatever input made in Assess Section, we will ask necessary Percentage(s) and determine the appropriate Product.
- Added the switch at Yard Level where we can switch between Complex and Simple Product Mapping.
- If the percentages added are either 95% or more than that, a soft warning will be given to user
- We will not allow them if percentages are 100% or more than that
- Only those LOTS will be created which starts from TAQLT
- Appropriate error message will be displayed when Packing List Operation fails for the user
- Added the filter in View Lots to filter the lots based on Type- Sticks/Cable, Joints
- Refresh the filter options in View Lots for Outer Casing and Inner Composition based on new Product Mapping
- Updated emr_one_core version to 4.130.0
- Added map for widget builders in route registry

## 2.22.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.21.0

- Groundwork for new menu structure.

## 2.20.0
- Capture Circumference instead of diameter
- Calculate diameter from captured circumference, include both in the CSV and patch existing records with circumference
- Fix issues with manual entry for copper/lead percentage during the assess section.
- Added the yard filter and only viewing lots based on their access
- Add an option to Update Ticket in Lot Edit Screen in Mobile
- Making Splitting button work only when lot is in T2. Once the ticket has been splitted, this button along with access button should be disabled
- Add Net Weight in CSV
- Sync Lots, Pallets and Packing List with Latest Emr.Common model schema
- Migration of Heaps into Inventory Location and patching of existing Lots
- Migration of Trade2Tickets collection to Tickets collection and patching of existing lots
- Filter the tickets based on the Product- TELC*, PJOIN, LJOIN
- Added the loading icon when splitting process is In Progress

## 2.19.0

- Emr Query Layout hybrid support and fixes

## 2.18.0

- Updated to work with latest `EmrCard` changes in `emr_one_core: 4.88.0`

## 2.17.0

- Changes to simplify API URLs.

## 2.16.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.15.0

- Updated the response model retrieved when searching accounts

## 2.14.0

- Fixed calls to PiWeigh to support the multi scale PiWeigh changes

## 2.13.0

- Fixed code formatting and linter errors after updating to Flutter 3.29.3.

## 2.12.0
- Migrated image upload to the new background uploader, therefore fixing media upload in iOS

## 2.11.0

- Added Trade2 ID and Packing List ID to CSV export.
- Initialise signal for UOM value in LotWeightScaleState to be 0 MT to avoid an exception when debugging

## 2.10.0

- Updated emr_core_api package version.
- Removed emr_one_invapi package

## 2.9.0

- Using emr_core_api instead of emr_one_crm_data for searching accounts

## 2.8.0

- Showing Net Weight in the Mobile App when adding Lots into a Pallet

## 2.7.0

- Added support for splitting inwards Trade2 tickets based upon lot purity

## 2.6.0

- Removed image upload preview and moved to common component in emr_one_core. Updated core version reference to 4.30.0

## 2.5.1

- Fixed one issue which over-rides Trade2 value and Created Date in PackingList and Pallet

## 2.5.0

- Added the feature to create/modify Pallet and Packing List

## 2.4.0

- Now depends on core 4.18.0 or better (GlobalSearch -> OmniSearch change)

## 2.3.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.2.0

- Added the date range filter and feature to export lots

## 2.1.0

- Updated dependencies.

## 2.0.0

- Updated to work with Flutter 3.24.x
- Support TAQLT prefix

## 1.8.0

- Updated emr_one_core dependency to ^3.25.0

## 1.7.0

- Uses new global search UI

## 1.6.1

- Support for latest schema changes

## 1.6.0

- Support for search, filtering and paging for Lots View

## 1.5.0

- Contains a fix for an issue fetching archived weights
- Contains a fix to allow API-M WebSocket connections to work with authentication
- Removed direct `emr_one_localisations` dependency

## 1.4.0

- Updated emr_one_core dependency to 3.9.0
- Modified lots view screen to support changes to core Card View

## 1.3.0

- Use new Outer and Inner cable assessment options
- Prevent 'TAQ' codes being ammended 

## 1.2.0

- Lot details now shows Ticket number and Party

## 1.1.4

- Uses RavenDb T2 Tickets now with a new picker

## 1.1.2

- Go live fixes 
  - Added 'code' field to heap if missing
  - Allow a long press to take manual weight

## 1.1.0

- Changes ready for go live

## 0.0.1

* TODO: Describe initial release.
