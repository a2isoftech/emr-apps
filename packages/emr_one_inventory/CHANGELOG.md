## 3.2.0

- Removed unused file_saver dependency


## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.35.0
- Removed code related to legacy routing

## 2.34.0

- Updated `emr_one_core` package version to `4.160.0`

## 2.33.0

- Added new routes under Inventory for `Bill of Materials`
- Added search and create/edit screens for BOMs

## 2.32.0

- Updated flutter to 3.38.3 including required package changes

## 2.31.0

- Changes to support Inventory using the new menu structure.

## 2.30.0

- Groundwork for new menu structure.

## 2.29.0

- Changes to simplify API URLs.

## 2.28.0

- Updated to Flutter 3.32.5

## 2.27.0
- Moved ticket gallery menu to cashier search.

## 2.26.0
- Cleanup Reusable Steels/Beams, Projects

## 2.25.0
- Moved code_scanner and typeahead widget into core

## 2.24.0

- Updated emr_core_api package version.
- Removed emr_one_invapi package

## 2.23.0
- Updated ProductGroup and ProductType references to ProductClass and ProductLine respectively

## 2.22.0
- Use core_api instead of crm_data to search accounts

## 2.21.0
 - Updated inventory schema and fixed errors

## 2.20.0
- Add new screen for ELV Inventory Search with facets and filters using query layout (User Story: 36860).
- emr_one_invapi version bump to 2.12.0

## 2.19.0

- Updated emr_one_core to 4.16.0 to see telemetry errors in resilientclient.

## 2.18.0
 - Applied error logs using AIHelper.
 
## 2.17.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.16.0
  -Update localization version to 2.18.0

## 2.15.0
 - Changes to allow re-production , reverse production for beams.
 - Gallery fix for beams to show selected image in large view.
 - Routing fix for beams to show images on cloud.
 
## 2.14.0
 - Bug fix to query scanned location code with Yardcode to get same result as auto complete.

## 2.13.0
 - Bug fix to add new input for probe data.

## 2.12.0
 - New screen to finish beam.
 - Add new media type images for Finish stage.
 - Tolerance fix for measurements screen.

## 2.11.0
 - RS passport changed to include all zone dents.

## 2.10.0
 - Passing user info service to AccountService

## 2.9.0
 - Upated to emr_one_core 4.6.0
 
## 2.8.0
- To use latest emr_one_invapi (2.7.0)

## 2.7.0
 - The inventory ticket screen should use the core gateway URL so that it can work in the cloud with replicated tickets.

## 2.6.0

- Changes to use decimals in calculations for greater precision. 
- get records in batches for full export

## 2.5.0
- Add new filters and columns to member search.
- Change to have typed attachment links for beams.

## 2.4.0
- Add weighted inventory screen with facets and filters (User Story: 43838)

## 2.3.0
- Feature to export beam passports.
- Routing fix for mobile inventory screens.

## 2.2.0
- Hotfix to resolve mobile production screen routing.

## 2.1.0

- Updated dependencies.

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.14.0

- Updated emr_one_core dependency to ^3.25.0

## 1.13.4
  - Tolerance fix on measurements screen (Bug 43890).

## 1.13.3
  - Removed project details named route from emr_one_core and added in package itself.

## 1.13.2
  - Fix issue with sorting on Member Search (Bug: 43842)

## 1.13.1
  - Fix issue with Stage filter on Member Search (Bug: 43835)

## 1.13.0

  - Passing app config to Account service

## 1.12.0
  - New screen to view Project details and bulk update projects from search screen. (User Story: 43708)



## 1.11.1
  - Re-arrange files into appropriate folders (Task: 43672)

## 1.11.0
  - Add EMR Note field in member search, member details and csv export. (User Story: 43638)

## 1.10.2
  - Save cutting label fix.(Task:43462)

## 1.10.1
  - Member search csv export issue fix and refactoring (Issue: 43531)

## 1.10.0
  - Attachments, links and images section on member details (User Story: 40841)

## 1.9.0

  - Beam Media gallery change
  - Search Beam query changes to return Beam type
  - Production screen for mobile inventory.

## 1.8.7
  - Fix for member detail grouping section render issue.

## 1.8.6
  - Fix for mobile inventory options with better look.

## 1.8.5
  - Fix sorting for Stage column in member search (Bug: 42867)

## 1.8.4
  - Added missing filters for beam search (Bug: 42752)

## 1.8.3
  - Remove spaces from member search csv export (Bug: 43111)

## 1.8.2
  - emr_one_localisations version upgrade

## 1.8.1
  - Add ability to re-print a label for existing inventory from Mobile Inventory Screens (US: 42854)
  
## 1.8.0
  - Bulk Edit Sub-Group Value (Select a different Sub-Group or create a new one) (US: 42989)

## 1.7.7
 - Add tooltip for member search and member detail fields (User Story: 43055)
 - Fix sorting on member search screen (Bug: 42867)

## 1.7.6
 - Add new filters in member search screen (User Story: 42752)

## 1.7.5
 - Update member search csv export columns (User Story: 42905)

## 1.7.4
 - Update member search columns (User Story: 42906)

## 1.7.3
 - Depend on emr_one_localisations ^1.2.42 explicitly

## 1.7.2
 - Used GenericRouteScreen in Parent route to enable isAllowed.
 - Better UI to show comments in Member details screen.

## 1.7.1
 - Remove beam group fields from member search (Task: 42821)

## 1.7.0
 - To add Allocated project , parcel and emrnote fields.
 - To add permission for bulk updated.

## 1.6.1
 - Add more fields for Beam Group details on Member search and Csv export (User Story: 42745)
 - Fix pdf export (Bug: 42823)

## 1.6.0
- Consistent rounding of decimals to three decimal places for all values (US: 42751).

## 1.5.4
- Remove units from Weight and Length values in csv export (Bug: 42743, 42744)

## 1.5.3
- Fix mapping for Profile Weight and Load reference value (Bug: 41901)

## 1.5.2
 - Fix field mappings for Load reference and Purchase Customer (Bug: 42529)

## 1.5.1
 - Sync schema with RS release 1.4.1 (Bug: 42623)

## 1.5.0

- Attempt to force update [not incl in release notes]

## 1.4.4
 - Add option to change Yard and Location for Beams in YCVY and YERI (User Story: 42532)

## 1.4.3
 - Removed validations on radio buttons and set their default value to false (Bug: 42419).

## 1.4.3
 - Schema changes to remove filtering and search ticket updates (Task: 42482)

## 1.4.2

 - Optimize filter call for Locations and Products (Bug : 42338)
 - Use decimal for scrap calculation (Task: 42375)

## 1.4.1

 - Fix issue of csv and pdf export only including first page (Bug : 42278, 42304)

## 1.3.32

 -Updated latest versions of  emr_one_core and emr_one_invapi

## 1.3.31

 - Remove Reclaim Project field from Bulk Edit, fallback to Id for null Allocated Project (Task : 42240)

## 1.3.30

 - Fix values for load reference, allocated project and reclaim project (Task : 41901)
 - Mass per meter fix on Probe Measurements Screen

## 1.3.29

 - Remove OveallToleranceCheck flag and use ToleranceCheck enum (Task : 42034)

## 1.3.28

 - Option on Member search screen to update Beam test results (User Story : 41122)

 ## 1.3.27

   - Bug fix found during testing
   - Textbox fomatting and limits 

## 1.3.26

   - Added queries to get D365 reports (Feature : 40804 D365 Daily Outputs)
   - Bug fix for produced beam barcode contains "_" (Bug : 41661)

## 1.3.25

- Update package references for emr_one_invapi and emr_sharedtypes

## 1.3.24

- Update urls for inventory module (Task: 41726)

## 1.3.23

- Show tolerance check with member out of tolerance warning on member details screen (User Story: 40474)

## 1.3.22

- Update Projects screen UI, added option to close projects (User Story: 41186)

## 1.3.21

- Added new fields to the Project search screen and create new project widget (User Story: 41185, 40717)
