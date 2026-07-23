## 2.5.0

- Skip reasons are introduced in needs container screen. #58173
- Create container, print container label are introduced in needs container screen.

## 2.4.0

- Display truck info screen on the truck cell click
- Display $ icon if no provisional cost is present

## 2.3.0
- Duration widget added to standing order create & edit forms
- Updated the children for Tracking & Reports screen in emr_apps.json file

## 2.2.0

- Updated file_saver package for compatibility with Flutter 3.44.0

## 2.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 2.0.0

- Updated Flutter to 3.41.9

## 1.151.0

- Asset tracking for container, trailers, trucks #54373

## 1.150.0

- On scheduler right click actions now requires scheduler write permission. #57929
- Third party jobs look same as internal job on scheduler screen. #57930

## 1.149.0

- Change the asset screen forms to show accessible yards instead of dispatch yards in forms #57270

## 1.148.0

- Changed the Routing Tile, breadcrumb and browser URL from Transport to OnTrack #56868

## 1.147.0

- Error message display on needs container screen. #57808
- Read only access to transport module has been implemented, binded all the permissions to buttons. #57807

## 1.146.0

- Job cell itself is progress bar on scheduler screen. #57551
- Changed Job details UI. #57550
- Job tracker could accessed on right clicking on job cell. #57552

## 1.145.0

- Add comments support while abandoning a Job #57297

## 1.144.0

- Added Needs container date filtering #56869
- Standing order week selecetion fix #57094

## 1.143.0

- Fixed, Update driver event popup on scheduler screen showing multiple (duplicate) containers for pull & return job type

## 1.142.0

- Correct date comparison logic for different DateTime kinds during job update. #56911

## 1.141.0

- Displaying delay, due date, scheduled date, truck vrm on Job details screen.
- Sorting plans based on start location code on planner screen.
- Third party grid scrolling issue has been fixed.
- Plan loads will be updated on scheduler screen in real time.

## 1.140.0
- Downloading QR Code as a .pdf file
- Replaced Show QR Code functionality to Download QR Code

## 1.139.0

- EmrTextFormField updated to support multiline text
- JobTracking duplicate route removed
- Haulier name displayed along with code in Planner filters

## 1.138.0

- Needs containing screen looping same job numbers issue fixed

## 1.137.0

- Product family field is made required on plan create/edit/clone screens.
- Added products, product family column on job list screen.
- Added products, product family filter on job list screen.
- Added validation to total loads in create & edit plan
- Haulier details added in Job detail popup
- Loader added in clone plan & scheduler preferences screen
- Mark previously added Containers inactive in Job Edit on changing Job Type
- Quick schedule success notification fixed
- Preset of fields / stickiness removed in clone plan popup
- Added Status filter on Planner screen with options of Unassigned loads, Assigned loads,
- Plan date is now readonly on plan edit screen

## 1.136.0

- Fixed text overflow on third party job cell on scheduler screen.

## 1.135.0

- Consumed corrected Emr one localization strings

## 1.134.0

- Changed route for job tracker screem.
- Added permissions for job tracker screen and user preference.
- Consumed german translations on scheduler preference screen.

## 1.133.0

- Consume Haulier name received from SearchTrucksAndHaulier API

## 1.132.0

- Moved texts from string constants to localization

## 1.131.0

- Support for scheduler job cell customization

## 1.130.0

- Export plan as excel file.

## 1.129.0

- Fixed job duplicate issue when job is dragged and dropped on scheduler screen.

## 1.128.0

- Copy button given for Job numbers in quick schedule & edit plan & haulier details screens
- Products filter introduced in Planner screen
- Preset filters on screen load implemented on planner screen
- Office notes column added & column order fixed in planner grid
- Plan type filter not getting applied correctly issue fixed

## 1.127.0

- `EmrOverlay` interface changed to new Notification System.

## 1.126.0

- Driver notes, driver container pick/drop comments on Update driver events popup
- Job Tracking screen → Timeline: Display driver comments for container pick/drop as a tooltip.

## 1.125.0

- Migrated AIHelper to `EmrLogger`

## 1.124.0

- Clone job not including customer details issue fixed

## 1.123.0

- Customer not updating issue fixed

## 1.122.0

- Group trucks based on haulier on scheduler screen.
- Saving scheduler group preference. 

## 1.121.0

- Displaying total job duration in h:m format on job tracker

## 1.120.0

- Status filter fixed in trailer asset screen

## 1.119.0

- Pass assetNumberUsed as null during job clone

## 1.118.0

- Trailer QR code on Asset -> Trailer screen

## 1.117.0

- Search unscheduled jobs based on container type on scheduler screen 
- Unassigned loads column added in planner grid

## 1.116.0

- needs container indication on scheduler screen
- showing pick & drop images on update driver events popup

## 1.115.0

- Framework widget consumed to display time in transport
- Job Card action buttons color fixed for dark theme

## 1.114.0

- quick clone required fields display issue fixed on job screen

## 1.113.0

- Download dispatch slip for third party haulier on right click on scheduler screen.
- Display of active containers on job detail pop up.
- Saving scheduling grid time format in cache.
- Haulier is multi selectable as well as optional in open jobs report pop up.
- Handled exception on update driver event popup while delay is in progress.
- Save scheduler truck display order in database rather than cache.
- Ability to abandon a completed job from scheduler.

## 1.112.0

- Scheduler job cell color for Schedule time passed current time
- Dark mode VOR cell color, abandon job color fix 
- Fix for currency code on each truck

## 1.111.0

- More Info Added for Delay in tracking screen
- Enabled editing notes in Job Edit
- Added Location columns for container & trailer screens

## 1.110.0

- Removed popluation of Hauliers in Clone & Quick Clone

## 1.109.0

- Updated flutter to 3.38.3 including required package changes

## 1.108.0

- Fixed transport container update issues.

## 1.107.0

- Fixed popup auto close issue when job is started from scheduler.

## 1.106.0

- AccountId added to all the  Request Models of settings screens
- User Preferences screens fixed as per server model changes

## 1.105.0

- Added isExactSchedule property to creating/cloning/updating job.

## 1.104.0

- Kepping haulier detail for pending jobs on edit screen.
- Fixed alignment issue on scheduler truck screen.
- Added timezone information to job edit/create/clone api request.
- Enable job duration and notes edit for planned job.

## 1.103.0

- DateTime being passed to server Fixed to Utc DateTime

## 1.102.0

- Date validations added in Update Driver Event popup
- Products & Family column fixed in Planner
- DateTime conversions to Local for UI display fixed

## 1.101.0

- Live Load locations issue fixed
- Stepper fixed in standing order & planner

## 1.100.0

- Success & Error popup design issue fixed.
- Schedule Date value visibility issue fixed in job screens.

## 1.99.0

- Scheduler screen pixel issue fix.
- Bug fix -Job tracker map pin shows null for some events.
- Added Job status chip on plan detail screen.
- Standing order update is binded to API.
- Removed query layout action buttons on job screen.

## 1.98.0

- Scheduler screen tab name change.
- Renamed transport view permission name.

## 1.97.0

- Reports Section implemented in Transport

## 1.96.0

- EmrDialog.modal button changes.

## 1.95.0

- Changed column order in planner screen.
- Added a feature to display of hauliers in plan detail popup.

## 1.94.0

 - Product Field updated in job, standing order, planner screens
 - Ok button added to Success & Error popups
 - Minor Bug fixes in Job screens

## 1.93.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 1.92.0

 - Shuffled column order on planner screen.

## 1.91.0

 - Display Error Message received from API's
 - Disable products field till product family is selected
 - Sort dropdown values alphabetically
 - Minor Bug fixes of job screens

## 1.90.0

 - Display job status count as columns on planner screen
 - On plan create/edit, validation errors are shown as emr overlay message.
 - Added UOM ui component on plan create/edit screen.
 - In haulier schedule widget delete comments are made mandatory if delete reason is 'Other'
 - Bug fixes on planner.

## 1.89.0

 - Trigger a rebuild from SignalR events only when no popup is open.

## 1.88.0

- Removed Trailer Section & merged trailer types with container types
- Soft delete of containers implemented
- Emr modal buttons removed + minor bug fixes

## 1.87.0

- Implemented Scheduling of plan on planner edit/create/quick schedule screens.
- Fixed overflow error on job cell of scheduler screen.

## 1.86.0

- JobSource + Haulier filters introduced
- Bugs + Feedback changes done in Job Screen & Job Cell
- Search handled in all Setting screens

## 1.85.0

- Groundwork for new menu structure.

## 1.84.0

- OmniSearchController made internal

## 1.83.0

- Further verbiage fix.

## 1.82.0

- Job Screen Filters Fix + Quick clone issue fix
- Copy id's feature added

## 1.81.0

- Verbiage fix on various screens.

## 1.80.0

- Bug Fixes of Assets, Jobs , Standing Order screens (Beta Testing Bugs)

## 1.79.0

- Provisional cost feature added in Job, Planner screens

## 1.78.0

- Duedate is added to quick clone and clone jobs for the day.
- Added info icon to cards to display delete, unassign, abandoned reason on job tracking screen.
- Clearing added containers when locations are changed on job create/edit screen.

## 1.77.0

- bug fix - schedule screen each showing grey instead of yard name with cost

## 1.76.0

- Scheduler screen showing appropripate currency with value
- bug fix showing no text when cost, duration value is zero 

## 1.75.0

- Send yard and haulier reports via email

## 1.74.0

- VRM uniqueness check while adding/editing truck

## 1.73.0

- Haulier report, Yard report, Open jobs report
- Bug fixes.

## 1.72.0

- QR code with Asset number in generated image
- Asset - Contianer print label functionality added
- Bug fix disabled delete button once delete completed and no seletion in the table

## 1.71.0

- Bug Fixes of Job, Planner, Standing Order

## 1.70.0

- Print dispatch slip for a job, truck, entire yard

## 1.69.0

- Fixed job duplicate issue on scheduler

## 1.68.0

- Bug Fixes of Job, Planner, Asset screens

## 1.67.0

- Emr Query Layout hybrid support and fixes

## 1.66.0

- Import plans from excel

## 1.65.0

- Job progress percent added in scheduler screen

## 1.64.0

- Added filters on scheduler. Jobtype, container type, truck type, product family filter
- Truck Vor schedules could be now added from scheduler screen.

## 1.63.0

- Bug fixes of Planner, Asset, Joblist & standing order screens

## 1.62.0

- Updated to work with latest `EmrCard` changes in `emr_one_core: 4.88.0`

## 1.61.0

- Added SignalR support to scheduler screen

## 1.60.0

- Display truck route on jobtracking screen
- Driver event update from scheduler screen
- Removed statistics on planner screen
- Bug fixes

## 1.59.0

- Added async validator for asset number on Container create/edit screen
- Wrapped container creation in form, so that validations execute properly

## 1.58.0

- Fix container selection on job create screen

## 1.57.0

- New screen design for job tracking

## 1.56.0

- Truck and container asset number generation error model
- Error code support for APIs

## 1.55.0

- Restrict editing completed/abondened/deleted job screens
- Disable start/end locations on the basis of job types
- Remove job status logic for create/edit/clone screens

## 1.54.0

- Job add screen proposed job duration

## 1.53.0

- Added new feature Quick schedule plan

## 1.52.0

- Job add/edit screen provisional cost selection

## 1.51.0

- Job Container guid changes added for Edit & Clone jobs screens
- Available Containers at particular Locn visibility Issue Fixed
- Suggested Asset Number changes added in Job Screens

## 1.50.0

- Job Dispatcher Event included with assign/unassign information in the timeline on tracker screen.

## 1.49.0

- Job detail view as flyout on scheduler screen.
- Display format change on job tracking screen.

## 1.48.0

- Removed read permissions from transport permissions.

## 1.47.0

- Made Container field Required in create,edit,clone jobs
- Delay UI in tracking screen fixed
- Handled null & dash in job list screen

## 1.46.0

- Added user permissions to every screen.

## 1.45.0

- Managed and thirdparty filter segregation on scheduler screen.

## 1.44.0

- Truck and Container Auto Asset number generation.

## 1.43.0

- Haulier field & Product field options bug fixed in planner screen.

## 1.42.0

- Fixed bug #50586 where the product picker wasn't refreshing after choosing a product family.

## 1.41.0

- Bug Fixes of Assets & Settings screens (reload issue, data refresh issue)

## 1.40.0

- Bug fixes and empty cell job acceptance logic change on scheduler.

## 1.39.0

- SAVE API's for User preference/settings updated

## 1.38.0

- Updated to Flutter 3.32.5

## 1.37.0

- Added Enforce job sequence and group job feature.

## 1.36.0

- Haulier Field correction in Asset screen

## 1.35.0

- Container Delete API Url fixed

## 1.34.0

- Bug fixes on Asset Screens

## 1.33.0

- Further AppModal to Emr.modal migrations

## 1.32.0

- User Testing Bug Fixes
- AppModal to Emr.modal conversions

## 1.31.0

- Consume EmrPicker fields in Job & Standing Order Create/Edit Screens
- Required Fields added in forms
- Bugs & Fixes of Jobs,Standing Order & Asset screens

## 1.30.0

- Bug fix on planner screen.
- Wildcard search on unscheduled jobs.

## 1.29.0

- Added a feature to clone all the jobs from one truck to another truck/haulier for a given day.

## 1.28.0

- Added a feature to move outstanding jobs from a truck.

## 1.27.0

- Added autovalidateMode to EMR form fields and updated packages for compatibility.

## 1.26.0

- Added a feature to Locate a job on scheduler screen.

## 1.25.0

- Corrected Search Truck Or Haulier field in all screens

## 1.24.0

- Added features to Abandon a job, delete a job from scheduler

## 1.23.0

- Copy text Feature added
- Save filter logic for all Asset screens added
- Bug fixes added for Assets & Joblist screens

## 1.22.0

- Changed planId to planNumber.

## 1.21.0

- Added secondary tap functionality for third party jobs on scheduler.
- Collapsing yard will remain collapsed, on screen refresh as well as re-visit to the Scheduler screen.

## 1.20.0

- Added separate controller for unscheduled jobs widget
- Added infinite scroll feature to unscheduled job list.

## 1.19.0

- Bug fixes.
- UI Changes.
- Added ability to delete plan.

## 1.18.0

- Added Clone job & create standing order from job features
- Customer screen updated

## 1.17.0

- Added ability to start a job, edit a job, unassign a job from scheduler screen.
- Navigating to job tracking on click of job number present in job cell.

## 1.16.0

- Added UI for Clone plans and integrated with API

## 1.15.0

- Added UI for Report Generation and Plan Import
- Bug fixes

## 1.14.0

- New implementation of Haulier Settings & managed & 3rd Party Settings
- Edit job & standing order converted to Popup
- Scheduler Flyouts added

## 1.13.0

- Added filters and tabs of haulier section on scheduler screen.

## 1.12.0

- Created UI for planner with CRUD operations

## 1.11.0

- Assets Screen Fixes

## 1.10.0

- Added Customer Screen

## 1.9.0

- Edit Job Save Fixed & Scheduler Spell Fixes

## 1.8.0

- FilledButton Style removed & groupId converted to String

## 1.7.0

- Added assets screen (internal trucks, managed trucks, containers and trailers)

## 1.6.0

- Added a new UI to track individual job.

## 1.5.0

- Added Standing Order Screen
- Small Bug fixes of Jobs Screen

## 1.4.0

- Added third party scheduling grid.
- Added plan scheduling feature.
- Added truck re-order feature for a Yard

## 1.3.0

- Added Job Overview Screen (Grid View + Card View)
- Added My Settings Screen
- Added Hauliers Settings Screen

## 1.2.0

- Added scheduling grid for internal haulier
- Added unscheduled job display list
- Added filter support in scheduler screen
- Added date range widget on scheduler screen.
- Added a common loading screen widget.

## 1.1.2

- Changed GET, POST, PATCH function parameter type.

## 1.1.1

- Add common layer for API services

## 1.1.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 1.0.0

- Added Transport Module to EMR Apps
