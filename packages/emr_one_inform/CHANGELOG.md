## 4.2.0

- Added Email as a subtitle below the user name when allocating a task
- pass userid instead of name as assignedTo parameter when assigning task

## 4.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 4.0.0

- Updated Flutter to 3.41.9

## 3.25.0

- Removed unused dependency.

## 3.24.0

- 54621: Informs - Grey screen fix when clicking on JobsAssignedToMe from BreadCrumb title
- Add Icon in Create button on Landing screen color fix

## 3.23.0

- Task 54539: Informs - Popup menu items not visible, Checkbox check icon not visible

## 3.22.0

- Fix for Create Task and Create Work Order Request Buttons for native and web

## 3.21.0

- Updated flutter to 3.38.3 including required package changes

## 3.20.0

- use the new permission structure

## 3.19.0

- reverted newer permissions and reused older permissions for release

## 3.18.0

- Fixed linter errors.

## 3.17.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 3.16.0

- added PermissionConstants file for new structured permissions
- updated all legacy permissions with new structured permission constants

## 3.15.0

- Groundwork for new menu structure.

## 3.14.0

- Updated `emr_one_forms_engine` dependency to 2.10.0, to include the simplify URL changes in `emr_one_core` version 4.85.0

## 3.13.0

- Updated to Flutter 3.32.5

## 3.12.0

- Migrated AiHelper logging to EmrLogger
- removed the unused references for AIHelper from informs project

## 3.11.0

- Updated `emr_one_forms_engine` to 2.8.0

## 3.10.0

- Updated video_player dependency from `^2.7.0` to `^2.9.5`.

## 3.9.0

- Updated `emr_one_forms_engine` to 2.7.0
- Updated `mime` to 2.0.0
- Updated `emr_one_core` to 4.32.0

## 3.8.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 3.7.0

- add button in device data to push not uploaded media to server
- skip instance of another user to push to server (bug fix)

## 3.6.1

- Initializing forms engine upload timer from app config

## 3.6.0

- Updated Forms engine verison to 2.5.0 which includes cleaning up hive database
- Retry counter to upload media to server

## 3.5.0

- Updated emr_one_core dependency and resolved linter errors.

## 3.4.0

updated `emr_one_forms_engine` to `2.4.1` which contains below changes

- remove old images stored in hive if more than two days
- remove submitted form instances if are stored in hive for more than two days
- remove all non submitted form instances stored in hive for more than 7 days

## 3.3.1

- Updating forms engine

## 3.3.0

- Lock `flutter_dropzone` to version `4.0.3`

## 3.2.1

- Media is not visible in diagnostic tool

## 3.2.0

- Updated dependencies.

## 3.1.0

-updated `emr_one_forms_engine` to 2.2.0
-updated `emr_one_core` to 4.1.0
-relevant changes for core package

## 3.0.0

- Updated to work with Flutter 3.24.x

## 2.8.5

- Added asset name alongside asset code in the new, in-progress, and completed job screens.

## 2.8.4

- only allow admin to publish unpublish template

## 2.8.3

- allow user to select date from 2020

## 2.8.2

- publish template added in template view
- version toggle added in template view
- reset from inprogress fix
- Search based on asset code in diagnostic tool

## 2.8.1

- allow all dates to select for date filter

## 2.8.0

- Update chips in template on the go when search via category

## 2.7.9

- Remove neverscrollablephysics from tabcontroller for inkpad
- Enable startdate when reselecting date range

## 2.7.8

- Digital signature preference heirarchy updated.

## 2.7.7

- signature pad is moved to a bottom sheet and dialog to avoid scrolling issue.

## 2.7.6

- add neverscrollablephysics to tabcontroller for inkpadfix

## 2.7.5

- forms engine version upgraded for sync fusion package removal

## 2.7.4

- bug fix for counter components not visible in the form
- bug fix for signature pad getting frozen when there is a validation error

## 2.7.3

- excluding disposed asset when creating manual work request

## 2.7.2

- syncfusion inkpad replaced with EmrInkPad

## 2.7.1

- SyncFusion date picker is replaced with EmrDatePicker

## 2.7.0

- Removed reference to syncfusion_flutter_datagrid

## 2.6.2

- bug fix range counter error message vanishes when scrolled (41784)
- double value error when either of max or min value is null

## 2.6.1

- bug fixing for incremental and monitoring counter
- bug fix for asset code scan job listing
