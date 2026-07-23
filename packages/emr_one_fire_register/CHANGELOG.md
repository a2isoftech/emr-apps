## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.6.2

- Fix search field keeping data from previous filters

## 2.6.1

- Fix area / zone dropdown results not being filtered when typing into search field

## 2.6.0

- Updated flutter to 3.38.3 including required package changes

## 2.5.1

- Group areas and zones with same name into one filter option
- Add 'All' area option to show all punch ins for the yard

## 2.5.0

- Groundwork for new menu structure.

## 2.4.2

- Reset zone filter when area is changed
- Changed 'off site' filter displayed text to better describe actual function

## 2.4.1

- Add header to show current yard, use new font on headers

## 2.4.0

- Use reworked areas and zones to get punches/fire roll call logs/ missing from roll call
- Add area filter
- Remove yard filter, change using a seperate screen which caches your selection
- Add extra visitor information as uneditable fields in the notes dialog
- Add screen to view people who were not marked as present in the fire roll call for the yard
- Submitting a new fire roll call log will overwrite the missing staff, alternatively they can be marked as found using the missing from roll call tab

## 2.3.0

- Updated to Flutter 3.32.5

## 2.2.5

- Add Off Site filter

## 2.2.4

- Show if storage permission has been denied when attempting to export to excel on none web devices

## 2.2.3

- For the add note popup switch around and space the cancel and add buttons

## 2.2.2

- When pressing confirm and not everyone has been marked as present, change the popup from ok to cancel / ok
- For the add manual name popup, switch around the cancel and submit buttons
- Add add/edit note icons to results 

## 2.2.1

- Change the search filter to search using contains instead of startsWith to allow searching by last name

## 2.2.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.1.2

- Change order of CSV columns to have present / absent first

## 2.1.1

- Fix manually added names not displaying from completed fire roll calls
- Fix completed fire roll calls not displaying if no registered punch events returned from the filter

## 2.1.0

- Updated dependencies.

## 2.0.0
- Updated to work with Flutter 3.24.x

## 1.3.6

- Fix bug where everyone always marked as absent when exporting a completed fire roll call to excel

## 1.3.5

- Pressing 'Present list' button resets the table (coming back from completed fire roll call view)
- Filter the completed fire roll call initial rows by type and onSite / all

## 1.3.4

- When viewing a completed fire roll call, hide confirm button and make checkboxes for rows uneditable
- Add refresh button to return back to the initial state
- Switch excel column headers 'Type' and 'Present' to match data
- Remove 'Type' column from punch data table
- Make checkbox take up less space to allow more space for name column

## 1.3.3

- Fix bug where export excel and add name buttons don't show when viewing a completed fire roll call log
- Move bool used to toggle between screens to be in the controller to fix screen change issue when clicking in a completed FRC log
- Fix row ordering (ascending / descending) for FRC logs
- Allow viewing of completed FRC logs (button) even when no results returned (could be names added manually)
- Refresh FRC log data when changing filter values

## 1.3.2

- Fix bug for names in punch event table

## 1.3.1

- Added present / absent to export csv
- Add screen to view completed fire roll calls
- Change how Fire Roll calls are stored to include yard + date + zone
- Improve formatting of names on smaller screens

## 1.3.0

- Updated emr_one_core to 3.17.0
- Made the filters and other fields separate rows because of breaking changes made to EmrFilter.

## 1.2.4

- Minor increment of the version number to test branch tagging from the Dart package feed pipeline
