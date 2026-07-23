## 4.2.0

- User Story: [58039]. Task: [58807]
- Fixed mobile catalytic converter selection flow for elv inspection using elv quotation data

## 4.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 4.0.0

- Updated Flutter to 3.41.9

## 3.39.0

- User Story: [58039]. Task: [58038][58040]
- Added ability to manage catalytic converter using elv quotation data

## 3.38.0

- User Story: [57734]. Task: [57979]
- Added mobile view screens for updating non-conforming parts and battery status using elv quotation data

## 3.37.0

- User Story: [57734]. Task: [57454]
- Added ability to update battery status using elv quotation data

## 3.36.0

- User Story: [57734]. Task: [57455]
- Added vehicle parts screen for desktop for elv inspection and ability to manage non-conforming parts using elv quotation data

## 3.35.0

- User Story: [57734], Task: [57787]
- Making sure vin unreadable flag is set when updating VIN document when doing inspection using elv quotation data

## 3.34.0

- User Story: [57401], Task: [57453]
- Added ability to upload vehicle v5 log book document using elv quotation data

## 3.33.0

- User Story: [57401], Task: [57452]
- Added ability to upload vehicle documents using elv quotation data

## 3.32.0

- [57396] Added a confirmation dialog before completing a vehicle inspection.

## 3.31.0

- [51821] Added new inspection search screen getting vehicles using elv quotation data

## 3.30.0

- [56843] Fixed a Null Reference exception occurring in the ELV Catalytic Converter UK mobile sub-screen.

## 3.29.0

- [56131] Added "VIN Unreadable" Checkbox to Oppra Inspection.

## 3.28.0

- [56788] Remove seal number scan barcode button for manual lookup case

## 3.27.0

- [55320] Added Fill field to the CAT Manual card view (visible only when isManual is true).
- [55320] Updated UI to align with Desktop card view structure.

## 3.26.0

- Updated VehicleDescriptionModel to match with field types in database (User Story: 56165)

## 3.25.0

- Inspection List now uses default Yard from Settings (Yard selector removed).
- Fixed CAT service issue where YardCode was being passed as null.
- Added helper to centrally resolve default Yard across screens.

## 3.24.0

- Updated CAT API requests to require `YardCode` as a path parameter.

## 3.23.0

- Fixed the Inspection UI CAT selection card to display `Serial Number` instead of `Serial ID`
- Corrected CAT card number formatting to respect the user’s locale using

## 3.22.0

- Removed Yard selection from the Inspection List screen.
- The system now automatically uses the default Yard selected by the user in settings.

## 3.21.0

- Disabled auto cat lookup in Elv inspection

## 3.20.0

- Fixed bug which is sending VIN photo under VRN document type for UK

## 3.19.0

- [UK] Display short CAT ID instead of full ID in manual CAT details for web version

## 3.18.0

- [US] Fixed an issue where updating a CAT always added a new CAT instead of updating the existing one.
- CAT updates now correctly modify the existing CAT record during inspection.

## 3.17.0

- [UK] Display short CAT ID instead of full ID in manual CAT details

## 3.16.0

- Updated UI components across the inspection flow.
- Replaced the first search screen search box with `EmrTextFormField`.
- Updated list cards to use `EmrCard`.
- Replaced the In Progress chip with `EmrStatusChip`.
- Updated the CAT view card to use `EmrCard`.

## 3.15.0

- [UK] Mobile Catalytic Converter Manual Page Card View to Match Desktop
- [UK] Seal Number validation errors stay across CAT cards on Inspection Lookup page

## 3.14.0

- Updated inspection image path to have identifier as quote id and vehicle identifier instead of vehicle id

## 3.13.0

- [UK] Updated the UI layout to display the price information at the top-right corner of the screen for the UK scenario for mobile version.

## 3.12.0

- Fixed bug in web view where manual CAT selection was showing invalid seal number error even if the seal number was valid when a CAT is selected

## 3.11.0

- [US] Save inspection issue fix.

## 3.10.0

- Add elvConfig variable to show/hide the save button while doing the inspection.

## 3.9.0

- Fixed issue where inspection for US vehicles are not loading due to recent change done for manual vehicles

## 3.8.0

- Fixed bug which is showing 0 as CAT Value in mobile view for manual lookup

## 3.7.0

- Manual vehicle inspection issue fixes.

## 3.6.0

- Persist the selected Yes/No option for battery and associated image state.

## 3.5.0

- Removed the loader call while adding CAT for US

## 3.4.0

- Updated emr_one_elv_quote_api version to 1.11.0

## 3.3.0

- Added fix for Removing CAT Price and Uplift When Inspection Finds Missing/Aftermarket

## 3.2.0

- Enable image selection/clicking for manual cat option.

## 3.1.0

- Added fix for Removing CAT Price and Uplift When Inspection Finds Missing/Aftermarket

## 3.0.0

- New mobile screen flow added.

## 2.79.0

- Updated flutter to 3.38.3 including required package changes

## 2.78.0

- Upload image issue fix.
- Catalytic blank image issue resolve.

## 2.77.0

- Updated CAT entry flow so **no catalytic fill option is selected by default**.
- Users must now manually select a catalytic fill before saving.
- In **Manual** CAT selection mode, the **Seal Number** field is now correctly locked.
- Disabled editing and QR scanning for Seal Number in manual mode to prevent accidental changes.

## 2.76.0

- Updated the text from 'Rear 3/4' to 'Rear' and 'Front 3/4' to 'Front'
- Added an info icon for ELV Inspection.

## 2.75.0

- Previously, the upload functionality for Battery and Catalytic Converter photos was controlled using `FFExperiment` variables. This logic has now been migrated to use `elvConfig`.
- The new implementation adds territory-based access checks.

## 2.74.0

- Adding manual CAT now also records and sends `TechemetPriceCountSheetDetailId` in the request

## 2.73.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.72.0

- Permission constants shifted to `emr_one_elv_core`

## 2.71.0

- Updated permission names to align with the new EMR permission standard.

## 2.70.0

- Add map for `widgetBuilders` in route registry

## 2.69.0

- [UK]: Update text VRN to VIN in vehicle pictures tab.

## 2.68.0

- Groundwork for new menu structure.

## 2.67.0

- OmniSearchController made internal

## 2.66.0

- Update version for `emr_one_elv_core`.

## 2.65.0

- When the Documents tab is not present (e.g., in A42 case), the button now correctly shows “Next: Vehicle Parts” instead of “Next: Documents”.

## 2.64.0

- Added new API endpoint to save the inspection state.
- Implemented "Save" button to persist inspection details.

## 2.63.0

- Adjust haulage price while updating the inspection price.

## 2.62.0

- Allow for inspection to complete as long as any one wheel option is selected

## 2.61.0

- VIN/VRN document: moved from Documents tab to Vehicle Picture section.
- [UK]: Added V5 Document Card to upload the V5 log book.
- [US]: Hidden the Documents tab, since no documents are available for upload.

## 2.60.0

- Using shared constant from elv core for Part Price description

## 2.59.0

- Fixed bug which is asking to select wheels even if all wheels are selected

## 2.58.0

- Mandated vehicle front and back images. Added config to determine the mandate.

## 2.57.0

- Added Chrome Wheels to wheel selections

## 2.56.0

- Added MOD10 validation for Seal Number - UK Only
- Handled API response when validation fails when updating CAT - UK Only

## 2.55.0

- Corrected inspection status check by normalizing backend value `INSPECTION_IN_PROGRESS` to match expected `INSPECTIONINPROGRESS`.
- Prevented errors when loading inspections in `InProgress` state.

## 2.54.0

- Changes to simplify API URLs.

## 2.53.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.52.0

- Added validation to block navigation to the inspection screen if the quote is already in `Inspected` or `Draft` state.
- Updated navigation to use `goNamed` for the inspection screen to correctly reflect the updated URL path in the web version.
- Removed an unused extra parameter from the inspection navigation call.
- Added redirection to the `failed` page when vehicle or quote details are invalid.

## 2.51.0

- Refactored image handling logic in CAT selection screens (US & UK)
- Removed unused imports across related files
- Disabled photo capture for all image types except: (Front ¾, Rear ¾, VIN/VRN, Non-confirming items)

## 2.50.0

- Updated **Non-Confirming Parts image URL** logic to use `quoteId` instead of `batchQuoteId`

## 2.49.0

- [UK] Fixed an issue where the Seal Number scanned via barcode was not appearing in the `Image Summary` section when selecting vehicles via the `Lookup` or `Manual` tab.

## 2.48.0

- Removed unnecessary properties and code and using new query to get quote to inspect

## 2.47.0

- Increase http call timeout to quote service to 30 seconds

## 2.46.0

- Renamed the GraphQL mutation from updateInspectionStatus to updateInspectionToInProgress
- Updated the associated GraphQL schema to reflect the new mutation name.
- Removed GraphQL configuration related to the Inspection feature from the current service.
- Shifted all relevant GraphQL configurations and queries to the `emr_one_elv_quote_api` module.
- Update package `emr_one_elv_quote_api` 1.2.0 -> 1.3.0

## 2.45.0

- [US] Removed the requirement to capture a photo for the battery during inspection.
- [US] Enforced mandatory VIN entry and VIN photo capture for vehicle identification.
- [UK] Hidden image capture fields for ID, V5, and Proof of Address based on regional compliance.
- [UK] Introduced a second mandatory image capture step after VIN, prompting users to take a photo of the VRN.

## 2.44.0

- Updated logic which decides when to cap inspection price and always returning quoted price as inspected price for EMRVR

## 2.43.0

- Updated EMR Apps UI to conditionally hide the image text for the Battery option in the US region.
- Refactored document retrieval logic for improved performance and maintainability.

## 2.42.0

- [US] Disabled battery photo capture requirement.
- [US] Made VIN photo and manual entry mandatory during inspection.
- [US] Updated CAT Location dropdown options to: Manifold, Pipe.
- [UK] Hid the following document fields: Identification (ID), V5, Proof of Address

## 2.41.0

- [US] Fix the CAT update issue.

## 2.40.0

- Improved manual CAT lookup sorting: items are now displayed with the most recent records first.
- Updated package `emr_core_api` from version 2.14.0 to 2.29.0.

## 2.39.0

- Removed change yard dialog and replaced with generic elv selection dialog

## 2.38.0

- Support for accepting multiple CATs in the US scenario.

## 2.37.0

- Updated Techemet CAT endpoint to use the CAT image endpoint for retrieving catalog images.

## 2.36.0

- Set hasOriginalCAT to False for After Market CAT Classification.

## 2.35.0

- Updated package `emr_one_elv_core` from version 2.11.0 to 2.20.0.

## 2.34.0

- Removed unnecessary package dependencies.

## 2.33.0

- Resolve CAT image visibility issue and hide popup on image click

## 2.32.0

- Clean up record after completing inspection.
- Display error screen if inspection completion fails.

## 2.31.0

- Added VIN validation logic during VRN or VIN document upload.

## 2.30.0

- Implemented state persistence in the Inspection Module to prevent data loss in case of app crashes. The application's progress is now saved locally using Hive.
- Introduced Hive as a local database to manage and persist the application's current state. Changes are first saved in Hive, then synchronized with the backend. This ensures consistency between local and remote states, even across browser changes.
- Image paths are now stored in HiveDB. Images are uploaded via the EMR background service, allowing consistent behavior across platforms. On web platforms, direct upload is supported, bypassing the background service.
- When opening an inspection for the first time on a tablet, all related records are synced and stored locally. After the initial sync (which may show a loader), inspections can be completed entirely offline with a smooth experience.

## 2.29.0

- Added logic to cap inspection price based on different conditions

## 2.28.0

- Updated emr_core_api package version.
- Removed emr_one_invapi package

## 2.27.0

- Updated logic to default CAT fill value to 0 when not set, instead of throwing an error. This prevents runtime failures due to missing values.

## 2.26.0

- Fixes the overlapping issue by expanding the widget and using the overflow: TextOverflow.clip
- There was a LayoutBuilder used in the code so when we click on the textbox keyboard appear on the device, so Layout Builder fire an event and screen refreshed, So I remove the layout builder and fix the size of the card
- CAT fill logic was wrong in the code, which is now fixed.
- After pressing the complete button, an event was triggered to check the Vehicle Identification document, but there was no loader set to test that logic. It is now fixed.

## 2.25.0

- Manual lookup card size fix and select from wherever on the card.
- If no record is found in the lookup page, display a message indicating that no cats are available.
- Added barcode scanner option for Seal Number in both lookup and manual cases.
- Removed manual case to add CAT valuation.
- Fixed issue with non-conforming parts in dark mode.
- Made vehicle identification documents essential.
- There are adjustments to wheel validation.

## 2.24.0

- Final price change based on CAT choices and CAT Fill value.

## 2.23.0

- Use common widget for Vehicle Search screen.
- Update emr package `emr_one_elv_core` 2.7.0 -> 2.11.0

## 2.22.0

- Fixed issue with uploading vehicle parts or document images.

## 2.21.0

- Sending CAT value to the complete inspection request if the territory is US type.

## 2.20.0

- Allow multiple CAT selections and update the quote value.

## 2.19.0

- Seal number input added in techemet cat lookup popup widget.

## 2.18.0

- No wrap for Offered price control
- The Vehicle Parts screen was gray, and there was no widget in the deployed version - Issue Fix

## 2.17.0

- By default, none of the vehicle's parts selected
- CAT selection placed on the card select.
- The buttons set at the bottom for go next tab
- Manual cat lookups show results by default now.

## 2.16.0

- CAT lookup UI modifications to display all possible CATs.
- Fix the manual lookup CAT selection issue.
- Show VRN number instead of VIN number in UK case.

## 2.15.0

- Price adjustment calculation modifications for the quote price.

## 2.14.0

- Updated `image_picker_for_web` reference to 3.0.6
- Updated `emr_one_core` reference to 4.32.0

## 2.13.0

- When the vehicle part changes, update the quote price without having to call the backend service.

## 2.12.0

- Lookup screen images are now available via the techemetAPI. I removed the static logic for the images from the code.
- Added a new endpoint techemetAPI configuration in the config.dart. This endpoint is used to fetch the CAT images from the techemet system and upgrade the `emr_one_core package` 4.14.0 -> 4.24.0

## 2.11.0

- Using common widget `changeYardDialog` instead of custom one to change yard code

## 2.10.0

- Reprice logic implemented to complete the inspection.
- Add a check to refresh the price if any changes occur during the inspection before the inspection is completed.

## 2.9.0

- Fix the issue with editing CAT information in the UK scenario.

## 2.8.0

- Dark mode border set for the image card

## 2.7.0

- When a user selects a vehicle for inspection without changing the yard, our system will default to selecting the first yard from the list. However, there was an error. The selection was set to null.
- In the init method, a functionality was introduced to set the yarcode in preference as the default yard if the selected yard is null.
- Dropdown functionality has been introduced for both selecting and editing the CAT in the US scenario.

## 2.6.0

- Resolve the main inspection screen's refresh list issue.

## 2.5.0

- Manual CAT search and pagination changes
- `emr_one_invapi` package updated to 2.11.1

## 2.4.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.3.0

- UK new design flow added. Now user can upload multiple images and complete the inspection.
- emr_one_elv_core updated to 2.6.0

## 2.2.0

- US new design flow added. Now user can upload multiple images and complete the inspection.
- Vehicle parts
- Document
- Battery
- Catalytic Converter

## 2.1.1

- Fixed wording on Breadcrumbs after recent GoRouter update

## 2.1.0

- Updated dependencies.

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.5.4

- Sending Territory code as well with the inspect quote request

## 0.0.1

- TODO: Describe initial release.
