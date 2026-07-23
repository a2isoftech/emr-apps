## 3.3.0

- Updated file_saver package for compatibility with Flutter 3.44.0

## 3.2.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.1.0

- Fix: Image uploaded from gallery not loading right away

## 3.0.0

- Updated Flutter to 3.41.9

## 2.73.0

- Updated emr_sharedtypes package version

## 2.72.0

- Added option to move weight line to another location
- Allowed to set tare weight from known tares
- Allowed to add locations from multiple product families

## 2.71.0

- Added gallery for stock take media
- Added mutations for add and delete stock take location media
- Added `MediaHelper` class for media related operations

## 2.70.0

- Updated searchScales method in stocktake service to use updated camera model of weighbridge

## 2.69.1
- Hardcoded warning message for the time being, to avoid errors due to conflicting localisations package

## 2.69.0
- Added warning message to prevent stocktake submission when there are pending locations (native)

## 2.68.0
- Fixed different casing in user's email causing permission issues during review/approval

## 2.67.0
- Show alert when the user attempts to save with '0' location weight - native
- Altered the configuration to use Edge - native
- Fixed UOM not displayed correctly in manual weights screen - web
- Prevent empty weight details during submission/completion - web

## 2.66.0
- Fix export to csv not working in mobile

## 2.65.0
- Altered the routing for stock take so that it goes through APIM and hits the yard Pis rather than Azure cloud

## 2.64.0
- Added option to export csv of all locations

## 2.63.0
- Remember last selected scale for a stocktake.
- Ability to search locations while doing stocktake.
- Allow entering zero heap volume in mobile app and send zero values to T2.
- Set default yard as default applied filter in stock take

## 2.62.0
- Changes to update locale parsing for time during weight selection and return default message for undefined API error

## 2.61.0

- Updated flutter to 3.38.3 including required package changes

## 2.60.0
- Changed fields for gross and tare to EmrUomFormField
- Added permission to allow manual entry for tare weight

## 2.59.0
- Fixed validation issues in stock take manual update screen which is using editable grid

## 2.58.0
- Changes to support or decode the new stocktake id structure

## 2.57.0
- Updated the review stock take grid to show latest weight by.
- Made date/time UTC before hitting API for add weight.
- Removed `isManuallyAdjusted` boolean flag and added `captureMethod` as enum for saving weight capture method

## 2.56.0
- Make fields other than title as read only if manual-perform permission is not assigned
- Hide the loader if no locations on Print

## 2.55.0
- Remove repetition in route of view stock take screen
- Fix net weight calculation issue 
- Fixed: Incorrect status showing in workflow history when workflow title for a level is not found
- Fixed: Weight and value variances not updating when submitting stocktakes with routine check enabled
- Prevent showing API exceptions in snack bar
- Fixed: Weight variance not showing proper value on UoM change
- Fixed filters showing incorrect input fields of a location in manual update screen

## 2.54.0
- Added check to finish in case of only manually adjusted weight.

## 2.53.0
- Stocktake search performance fix by reducing unused query fields.

## 2.52.0
- Added changes for Making Manual Adjustment Weight Lines as unoperational

## 2.51.0
- Fixed scales not loading in the dropdown
- Fixed `Take Gross` and `Take Tare` buttons not enabling upon scale selection
- Removed redundant Api call made in Add Weight screen

## 2.50.0
- Move workflow title to shared service

## 2.49.0
- Changes to make location weight grid size dynamic

## 2.48.0
- Removed weightDiff and valueDiff calculation
- Added `weightVariance` and `valueVariance` in stock take location
- Added `UpdateDeltaWeight` mutation

## 2.47.0
- Adjusted the Grid layout on home.
- Do not allow weight lines with negative net weights.
- Show a warning if no tare weight is taken.

## 2.46.0
- Filter users for the selected territory in the profile.

## 2.45.0
- Changes to align with new Api response structure
- Added code to show error messages when there is a request failure
- Added new route for `Add weight` screen and removed the flyout

## 2.44.0
- Show edit option only if user has manual perform permission
- Show delete option if operator is same as logged in user

## 2.43.0
- Remove YardCode header overriding.
- To Correct the hierarchy of the routes to make the approval route independent.
- Enable Yard Selection.

## 2.42.0
- Fixed submission not working when the stocktake is submitted without populating weights
- Removed unused mutation - DeleteSnapshots
- Fixed error message is not shown when the edit operation is failed
- Disallowed accessing soft deleted stocktake from UI
- Show blank when printing if no weights are taken
- Show error message when submitting or saving stock take with no locations

## 2.41.0
- Move workflow code to stock take service

## 2.40.0
- Change graphql query to search scales for Yard.
- Remember last used scale for the location and set selected next time.

## 2.39.0
- Hid loaders when dialog is open during submission/completion
- Changes to show message bar after dialog is closed during submission/completion

## 2.38.0
- Fix for location screen not showing filters from selected locations
- Fix for number formatting with zero prefixed with minus sign
- Fix for view stock take screen not showing formatted weights
- Increased the height of the header row in review screen

## 2.37.1
- Bug fix to enable selection for review screen grid.

## 2.37.0
- Integration of Editable Grid component for manual stocktake screen.
- Changes to use Action/Intent for bulk edit.

## 2.36.0

- EmrDialog.modal button changes.

## 2.35.0
- Added tooltip for stock take description in grid view
- Added warning during 'Print' when no locations are selected
- Fixed date range filter not including the stock takes created on the selected end date

## 2.34.0
- Display tooltip for workflow status under grid view
- Display locations count in stock take card and grid views
- Decrease the width of Yard column
- Change workflow status label for routine check
- Show warning during snapshot refresh when no locations selected
- Changes to format weight in KG to 2 decimals and MT to 3 decimals
- Renamed stock take 'Name' label to 'Description'
- Introduced snapshot and stock take value columns and cosmetic changes in review screen
- Changes to location screen to show filters based on the product family and other filters selected by user
- Changes to show '+' sign for positive adjustment values
- Changes to Routine Check label and inverted behavior

## 2.33.0
- Fix loader not showing on taking weight
- Show confirm dialog to replace taken weight
- Fixed temporary weights getting removed

## 2.32.0
- Fixed incorrect `Submitted by` value shown in review page
- Fixed incorrect confirmation message displayed when completing stock take

## 2.31.0
- Removed unused package references. 

## 2.30.0
- Selected date and time should be before current date time and after snapshot in manual update
- Opened weights detail page on tap in view stock take

## 2.29.0
- Saved weighed date time to utc
- Fixed incorrect snapshot weight is displayed in location details pane (review screen)
- Included currency code prefix in snapshot rate
- Formatted snapshot date for print and reset bulk update fields

## 2.28.0
- Included priced and unpriced weights in location details pane in review screen
- Added taken weight details in stock take print PDF
- Fixed location comments showing up after deletion
- Fix selected locations getting cleared on search while adding locations
- Added tooltip for displaying workflow status in stocktake card view

## 2.27.0
- Made the Yard field read-only
- Fixed the last weight id using existing id issue
- Fixed comments tab not reflecting the weight lines

## 2.26.0
- Method rename changes from `getWorkflowRuleLevelTitles` to `getWorkflowRuleConfiguration` from Reference data service.

## 2.25.0
- Fix manual update and add weight screen issues
- Moved selected locations list to data source from controller
- Added Originator label when creating, editing and cloning stocktakes
- Formatted weight values to show 3 decimal places

## 2.24.0
- Icons and localisations to support the new menu structure.

## 2.24.0
- Allow worflow user to approve or reject Stocktake without review permission.
- Reload review screen after approve/reject and hide buttons for that level user.

## 2.23.0
- Routing changes for Review and View stocktake screens to view from email links and use Yard from the id.
- Bug fix for weight calculations.
- Change to inlcude default in stocktake.
- Workflow history change to include Level titles.

## 2.22.0
- Resolved issues in manual update stock take

## 2.21.0
- Added map for widget builders in route registry

## 2.20.0
- Refresh comments list on adding or deleting comments
- Save unsaved weight line on comment icon press
- Fix selection issue of active weight card in add weight screen
- Fix originator and conducted by filter not working
- Fix take gross and take tare buttons not enabling in add weight screen
- Updated confirmation message for complete stock take

## 2.19.0
- Stocktake workflow history timeline changes.
- Review and Approve stocktake integeration to register votes.
- Storing TerritoryCode and CurrencyCode to stocktake.
- Code refactroing.

## 2.18.0

- Groundwork for new menu structure.

## 2.17.0
- Fixed 'Print' option not working in native devices

## 2.16.0
- Added UI for comments

## 2.15.0
- Rename `AssignedTo` to `ConductedBy` in Stock Take
- Updated stock take location status on Finish in add weights screen
- Disable manual entry for weights if weight is taken from weight

## 2.14.0
- Changes to stocktake_service to consume new query to get product families

## 2.13.0
- Made changes to update basic stocktake details immediately upon clicking update button in popup

## 2.12.0
- Added a checkbox for 'Routine Check - No Impact' 

## 2.11.0
- Intergrated EmrQueryLayoutHybrid in stock take screens

## 2.10.0
- Added view only screens for mobile and web
- Redesign review screen
- Redesign manual update screen

## 2.9.0

- Emr Query Layout hybrid support and fixes

## 2.8.0

- Changes to simplify API URLs.

## 2.7.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.6.0

- Added review screen for web
- Added manual update stock take screen

## 2.5.0

- Added screens for start stock take
- Added weights screen which allows to modify weights for stocktake location

## 2.4.0

- Updated to Flutter 3.32.5

## 2.3.0

- Added home screen with search and filter capabilities for stocktakes in Card or Grid view.
- Enabled creation of stocktakes with the ability to add locations.
- Added option to clone and create new stocktakes.
- Support for deleting stocktakes.
- Edit existing stocktakes, including adding or removing locations.
- Rework as per new design.

## 2.2.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.1.0

- Updated dependencies.

## 2.0.0
- Updated to work with Flutter 3.24.x

## 1.0.0

* TODO: base skeleton for the module
