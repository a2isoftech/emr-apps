## 5.2.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 5.1.0
- Added new `includeEdgePaymentMethods` config item to support cashier search screen.

## 5.0.0

- Updated Flutter to 3.41.9

## 4.164.0

- Validator added for `ukPostcodeFormat`.

## 4.163.0

- Added EmrFilterDropdown.

## 4.162.0

- Improvements to the read-only ticket details screen and behind the scenes work to make it editable.

## 4.161.0

- Ticket details screen (read-only version).

## 4.160.0

- Included FontAwesome Icon - Fact_Check_Outlined

## 4.159.0

- Added FontAwesome Icon lookup

## 4.158.0

- Notification overlay position changed for Native

## 4.157.0

- Added nullable `onTap` and `onLongPress` callback in `TappableImage`

## 4.156.0

- Corrected schema typos: `WateProducer` → `WasteProducer`, `WasterTransporter` → `WasteTransporter`.

## 4.155.0

- #56698 - Fix issue with card selection when paging using QLH

## 4.154.0

- Add `emrAppsCloudBase` endpoint in AppConfig

## 4.153.0

- Location Tracker and Location Permissions Checker prompt for iOS and Android.

## 4.152.0

- Adding support for basic authentication for project "apple".

## 4.151.0

- Update `EmrUomFormField` field to avoid dependencies if UOM list is passed.

## 4.150.0

- `EmrModal.showMessageBar` now utilises the new `EmrOneNotificationManager` to display messages to the user.

## 4.149.0

- Updating `EmrUomFormField` to better match provided design.

## 4.148.0

- Added `EmrSecurityContainer` to allow us to lock sections of the screen using permissions.
- Added an `allowedPermissions` property to `EmrTabBarVerticalViewCard`, `EmrTabBarVerticalViewResponsiveColumnsCard` and all our form fields.

## 4.147.0

- Prototype of Notification System with `EmrOneNotificationManager` and `EmrOneNotificationController` supporting changes.

## 4.146.0

- Modified the `Breakpoint` class to support fractional screen widths.

## 4.145.0

- Added `firstDate` and `lastDate` optional parameters for Date picker Filter.

## 4.144.0

- Added `EmrTabBarVerticalViewResponsiveColumnsCard` and support for add/edit action(s) when using `EmrTabBarVerticalView`.

## 4.143.0

- Fixed routing on iOS, which was showing the "page not found" screen after signing in, when the new menu is enabled for the user.

## 4.142.0

- Modifications to `EmrQueryLayoutHybrid` and `EmrGrid` to support single tap functions on `selectionMode.none` allowing `EmrQueryLayoutHybrid` to replace `EmrQueryLayout`.

## 4.141.0

- Bugfix for `EmrTextFormField`.

## 4.140.0

- `EmrFilter` theme changes to match the provided UI designs for adding filters.

## 4.139.0

- Updateing `flutter_typeahead` package to its latest version.

## 4.138.0

- Updated flutter to 3.38.3 including required package changes

## 4.137.0

- Changing Default Yard is now reflected in network request headers where its required.

## 4.136.0

- Add TextAlign Center for EmrGridHeader widget.

## 4.135.0

- Bug fix for Overlays and Text Selection, Copy and Paste text in Native.

## 4.134.0

- Fixed theme issue in full screen emr dialog in dark mode

## 4.133.0

- #53315 Reduced the size of the inline paging control in QLH

## 4.132.0

- Fixed linter errors.

## 4.131.0

- Upadated QLH to show select all checkbox for card view

## 4.130.0

- Removed some lot related configuration
- Added new routes in Yard Lot Movement

## 4.129.0

- Added FontAwesomeIcons.buildingColumns.

## 4.128.0

- EmrDialog.modal button changes.

## 4.127.0

- Fixed routing issue when signing out and back in.

## 4.126.0

- Updates to how QLH performs layout of search/filter/actions in various scenarios

## 4.125.0

- Changes to support Yard Management using the new menu structure.

## 4.124.0

- Added additional icons to `IconDataConverter.fromJson`.

## 4.123.0

- EMR form fields can now be shown in a compact `grid` mode.

## 4.122.0

- Fix #52930 - Paging controls shown when paging not enabled

## 4.121.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 4.120.0

- `EmrQueryLayoutHybrid` uses inline paging control

## 4.119.0

- Added flag `clearSelectionOnRefresh` in `EmrQueryLayoutHybrid`

## 4.118.0

- Remove `elvSearchQuotes` named route

## 4.117.0

- Icons and localisations to support the new menu structure.

## 4.116.0

- Fix issue with Query Layout Hybrid ignoring selection

## 4.115.0

- Add emrAppsBase endpoint in AppConfig

## 4.114.0

- Groundwork for new menu structure.

## 4.113.0

- Allow Adding optional `focusNode` in `EmrTextFormField` Widget

## 4.112.0

- OmniSearchController made internal

## 4.111.0

- SharedScaffold no longer supports OmniSearch mixin

## 4.110.0

- EmrDialog.modal supports hideButtons

## 4.109.0

- Only autofocus Query Layout Search when on Web

## 4.108.0

- Added 'transportHomePageUrl' config key to the endpoints.

## 4.107.0

- Changed `EmrModalButtons` to use `OutlinedButton` for Cancel button

## 4.106.0

- Changed the `EmrGrid` layout logic so the automatic checkbox column doesn't get scaled

## 4.105.0

- Added a prefix search IconButton to QueryLayout search panel text box

## 4.104.0

- Changed EmrQueryLayoutHybrid FAB icon

## 4.103.0

- Fixed #52178 - EmrQueryLayoutDefaultActionsPanel non-hybrid issue

## 4.102.0

- Fixed a bug in `EmrQueryLayoutHybrid` when row selection is disabled

## 4.101.0

- Query Layout Hybrid - Actions and Dismissible support

## 4.100.0

- Allow `inputFormatters`, `textAlign` and `keyboardType` to be passed into `EmrTextFormField`. (`keyboardType` is only valid when binding to a `String`).
- Made `EmrUomFormFieldInput` internal.

## 4.99.0

- Added the change to include prefered device selection for a user

## 4.98.0

- DateTime extension asyMMdtime now uses local date and time by default.
- Added a new locale-aware time extension using local time.

## 4.97.0

- Passed the yard code from the settings pane to the user service so that APIM routing works properly after UserService changes

## 4.96.0

- Fix search not working in `EmrQueryLayoutHybrid`

## 4.95.0

- Fix #51882 - Facet panel always shown

## 4.94.0

- Emr Query Layout hybrid support and fixes

## 4.93.0

- Add elvConfigs section to app_config

## 4.92.0

- Workspace foundational code added [not in use]

## 4.91.0

- EmrCard now has subtitle support, can now have 2 lines of text for title/subtitle

## 4.90.0

- Changed Filled, Outline & Text button Fonts to OpenSans 16px

## 4.89.0

- Added new widget `EmrStatusChip`.

## 4.88.0

- Design and functionality updates to `EmrCard`

## 4.87.0

- Added new form field `EmrTimeFormField` to capture locale aware time.

## 4.86.0

- Modified user_info graphql query to retrieve permissions from Users collection
- Replace assignment of permissions from UserInfo collection to Users collection
- Replace UserInfoService's hasPermission() with context.userHasPermission()
- Replaced usages of UserInfo to User where possible

## 4.85.0

- Changes to simplify API URLs.

## 4.84.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 4.83.0

- Support for async validator.

## 4.82.0

- Included the `cmpCode` and `companyAccess` in the `user_info` query. updated the `user_info` model to make `serializable`.
- Updated the `EmrTextFormField` to include `suffix` and `prefix` for input field values.

## 4.81.0

- Updated styling for EMR Card.

## 4.80.0

- Added custom theme for tickets.

## 4.79.0

- Added `DialogMode` property to allow full screen or compact Emr Dialog

## 4.78.0

- Removed masAssessment url from appConfig

## 4.77.0

- Added a named route for `QuoteSearch`

## 4.76.0

- Reverted UserInfo changes and made logger reliant on `UserInfoService`

## 4.75.0

- Made UserInfo optional in EmrLogger, it will now be added on successful login.

## 4.74.0

- Fixed bug #50584 where EmrFilterAutoComplete wasn't excluding selected values (caused by the flutter_typeahead upgrade).

## 4.73.0

- Updated to Flutter 3.32.5

## 4.72.0

- Removed @internal from `LoggerConfiguration` and split export files into `logger.dart` & `logger_setup.dart`.

## 4.71.0

- Allow custom uoms for rate field

## 4.70.0

- Fixed bug in `ApplicationInsightsService` calling dart:io on web

## 4.69.0

- Improvements for Application Insights service to pass user code and log to text file on error.
- Ensured correct logging levels are used in `app_insights_http_client` & `resilient_http_client`.

## 4.68.0

- Removed @internal from `LoggerRegistrationHandler` & `AppInsightsHttpClient` to enable use in Weighbridge

## 4.67.0

- Removed "prototype" wording from welcome graphic

## 4.66.0

- Added Trader.api url for trader modules

## 4.65.0

- Bug fixes and refactoring for `EmrLogger`.

## 4.64.0

- Made `EmrUomFormFieldInput` use `titleMedium` from the `TextTheme`.

## 4.63.0

- Added new Modals

## 4.62.0

- Added autovalidateMode to EMR form fields and updated packages for compatibility.

## 4.61.0

- Replaced AiHelper with `EmrLogger` where possible

## 4.60.0

- Updated emr_stepper to always display icons when provided, regardless of platform.

## 4.59.0

- Added default configuration for logger

## 4.58.0

- Modified EmrBackgroundService.initialize so that a getDefaultHeaders callback can be passed in, which is how the token is now set.

## 4.57.0

- Added support for communicating with multi-scale PiWeigh

## 4.56.0

- Fix #49583 - overflow on login screen (mobile)

## 4.55.0

- Added `EmrLogger` implementation.

## 4.54.0

- Updated emr_one_theme dependency to ^2.5.0

## 4.53.0

- Updated pdfrx dependency from `^1.0.99` to `^1.1.25`.
- Updated stack_trace dependency from `1.12.0` to `^1.12.1`.
- Updated video_player dependency from `^2.7.0` to `^2.9.5`.
- Removed files used by workmanager for background uploads.
- emr_networking fixes resulting from the change from `dart:html` to `package:web`
- Fixed linter errors after updating Flutter to 3.29.3.

## 4.52.0

- Added optional AutoValidateMode parameter for `EmrTextFormField` widget

## 4.51.0

- Added edge routes to config for Media Api & Core Api, added running at edge toggle

## 4.50.0

- Added defaultUOM option in emr_uom_form_field so that we can pass defaultUom if no rate provided instead of taking uoms.first always.

## 4.49.0

- Modified `SimplePolicy` so a `UserInfoService` can be set, which allows us to pass an `X-Yard-Code` header with all requests using the value from the settings screen.

## 4.48.0

- Added the ability to make the sign on the UOM field read-only based on a specified flag.

## 4.47.0

- Fix issue (#48968) with EmrStepperFormField/InputStepper caused by theme changes

## 4.46.0

- Added an "Uploads" screen for monitoring background uploads (Android and iOS only)
- Fixed a few `EmrBackgroundService` bugs.

## 4.45.0

- Added foundational framework support for notifications (wip)
- Fix crash at startup

## 4.44.0

- Fix #48865 - EmrButtonGroupFormField theme issue

## 4.43.0

- Added new route constant for payment approvals

## 4.42.0

- Moved code_scanner and typeahead widget from inventory into core

## 4.41.0

- Improvements to `EmrBackgroundService`:
  - `EmrBackgroundService.instance.upload` now accepts an `XFile` source on native platforms.
  - iOS now assigns an Id for each `BackgroundUpload`.

## 4.40.0

- Added `EmrBackgroundService` for uploading images in the background (see https://devdocs.emrgroup.com/emrapps/framework/background_service)

## 4.39.0

- Fixed issue in `AddMediaButton` where parameters were not being passed through.

## 4.38.0

- First phase of rebrand work
  - Updated to `flex_color_scheme: ^8.1.1`
  - New logos
  - Login and welcome screen updates
  - Menu and nav rendering colour changes
  - Shared scaffold colour and padding changes
  - Removed breadcrumb auto scroll logic as was crashing
  - `EmrCard` uses divider colour for border
  - `EmrUpDownSort`, `EmrStepper`, `EOHoverTile`, themeing simplified
  - Added fallback theme mode and remote config switch
  - Added static ButtonStyle for CTA filled buttons

## 4.37.0

- EmrDateFormField - Pass initial date as it is passed from calling component instead of making it todays date.

## 4.36.0

- Added a new property in to enable/disable UOM in EmrUomFormFieldInput

## 4.35.0

- Added an option to `AddMediaDialog` to pass a signal for showing progress while processing media.
- New extension on DateTime to get date and time for locale `asyMMdtime`.

## 4.34.0

- Added an option to edit images in `AddMediaDialog` before upload.
- Updated MediaFile type to get file from xFile and code refactoring.

## 4.33.0

- Updated reference to emr_one_localisations to ^2.35.0

## 4.32.0

- Added reference to `pro_image_editor` 7.6.4
- Added new EmrImageEditor widget

## 4.31.0

- Added button support to `EmrTabBarVerticalView`.

## 4.30.0

- Added shared components for media upload preview.

## 4.29.0

- Fixed the UI for emr grid when actions panel is visible

## 4.28.0

- Added a `setData` function to `EmrExpandableDataManager` so we can update the data after initialisation.
- Updated `EmrQueryLayout.grid` to pass through `mergeColumns` to `EmrGrid`.

## 4.27.0

- UI fix for eo_basic_camera for video capture.
- Code refactoring for eo_basic_camera
- A mew widget CameraOrientedWidget to use camerawesome orientation feature.

## 4.26.0

- Added `EmrExpandableData` and `EmrExpandableDataManager` which can be used with `EmrGrid` to toggle the visibility of rows.
- Updated `EmrGrid` (and the deprecated `EmrGroupedGrid`) to make `rowHeight` a function, which allows row heights to vary by `rowIndex`.
- Updated `EmrGridController` to make `data` a `ValueNotifier` rather than `ValueListenable` so an `EmrGrid` can react to data changes.
- Updated `EmrQueryLayout.grid` to pass through the `rowHeight` function.

## 4.25.0

- Adjusted color handling for the Portal by checking the app ID and allowing default colors.

## 4.24.0

- The `config.dart` file now includes a new endpoint `techemetAPI` configuration. This API is used to retrieve CAT images from the Techemet system.

## 4.23.0

- Removed unused `FirebaseLogin` methods that were causing a dependency on emr_sharedtypes `User`.
- Added a new `userHasPermission` extension on `BuildContext`.
- Fixed a bug where the OmniSearch would stop working when navigating back to a page.

## 4.22.1

- Fixing mobile number validation

## 4.22.0

- Integrated `UnifiedKeyboardListener` to capture raw keystrokes directly from the hardware keyboard.
- Replaced focus-based shortcut implementation in `EMRScale` widget with `UnifiedKeyboardListener`.

## 4.21.0

- Added new routes for packing list

## 4.20.1

- Trimmed scanning sound so as to sound quickly when doing continuous scanning

## 4.20.0

- Passed few extra parameters in the ScanHelper and ScanQR so as to support continuous scanning.
- Also added a beep sound when code gets scanned

## 4.19.0

- Updated the version of two_dimensional_scrollables library to 0.3.3.

## 4.18.0

- UI improvements
  - App bar now remembers scroll position between builds
  - App bar now attempts to scroll to current item if required
  - App bar now has a new smaller logo
  - App bar now displays the breadcrumb next to the logo
  - App bar now displays the breadcrumb even on mobile
  - App bar now displays omni-search right-aligned
  - App bar no longer has vertical divider rendered to left of user info
  - App bar omni-search now auto-expands on focus and shrinks when losing focus
  - App bar background colour changed to Emr PrimaryBlue in light theme
  - Nav bar now rendered using vertical icon + label layout on web
  - Nav bar now automatically colours navigation icons based on display text
  - Nav bar on mobile now renders using coloured icons and text to right
  - Nav bar now no longer has tooltip because text is always shown
  - Nav bar now uses black or white for selection colour (depending on theme mode)
  - Nav bar sub route selection improved with sub selection properly shown
  - App bar user info now renders using theme extension foreground colour
  - Tile items no longer render text using `toUpperCase()`
  - Shared Scaffold no longer wraps elements in a Theme widget
  - Breadcrumb no longer inserts 'Home' crumb/icon
  - Breadcrumb now automatically scrolls to max position
  - Breadcrumb is now always scrollable (if required)
  - Renamed "Global Search" to "Omni Search" for related classes / files / refs

## 4.17.0

- Added a telemetry error log to the resilientSend method to capture the actual error from the request.

## 4.16.0

- Fixed a bug in `EmrStepperFormField` where an initial value wasn't being displayed.

## 4.15.0

- Added decimal and mobile phone validators

## 4.14.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 4.13.0

- Updated beginSignEmailLink method to accept language code to enable Dutch translated email.

## 4.12.0

- Restored breadcrumb to app bar on web

## 4.11.2

- Added 'transportBaseUrl' config key to endpoints for `emr_one_shell_web`.
- Added TransportResilientHttpClient for `emr_one_transport`
- Added api service and other files to `emr_one_transport`

## 4.11.1

- Added FormsEngineUploadTimer config in app config for setting upload timer for forms engine.

## 4.11.0

- Added new graphql api endpoint for `emr_one_elv_inspection`
- Localization updated

## 4.10.0

- Updated emr_sharedtypes dependency to use the new User model.
- Added `Validators.email`.
- Pass thorugh `itemSubtitleText` for `EmrPickerFormField` and `EmrMultiPickerFormField`.

## 4.9.1

- Invoke scale shortcut only if enabled and weight is steady

## 4.9.0

- Fixed one issue within emr_filter_date_range_picker due to which selected dates were not showing in the calendar

## 4.8.0

- Include 'CrmManagedBuyers' on UserInfo and the userInfo query

## 4.7.0

- Added new widget for date range in the filter- `EmrFilterDateRangePicker`

## 4.6.1

- Minor fixes to `EmrQueryLayout` and `EmrQueryLayoutScrollingBody` to stop errors being logged when the screen is not visible.

## 4.6.0

- Added `EmrTabBarVerticalView`.

## 4.5.0

- Added `EmrMultiPickerFormField`
- Minor fixes to `DecimalExtensions.toStringForLocale` and `EmrDateFormField`.

## 4.4.0

- Introduced `EmrScaleContainerController` on `EmrScaleContainer`.

## 4.3.0

- Upgrade `GoRouter` to `14.3.0`
- Changes to breadcrumb widget

## 4.2.0

- Updated dependencies.

## 4.1.0

- updated `emr_sharedtypes` version to `1.7.0`

## 4.0.0

- Updated to work with Flutter 3.24.x

## 3.26.0

- Added EmrCheckboxListFormField<T>
- Added EmrRadioListFormField<T>

## 3.25.0

- EMR bindable form fields (`EmrButtonGroupFormField`, `EmrDateFormField`, `EmrPickerFormField`, `EmrStepperFormField`, `EmrSwitchFormField`, `EmrTextFormField`, `EmrUomFormField`)
- Additional validators (`integer`, `url`, `length`, ) in addition to `required`, which are now all localised.
- Additional extension methods (`DecimalExtensions.toStringForLocale`, `DoubleExtensions.toStringForLocale`, `LocaleExtensions.decimalInputFormatter`, `StringExtensions.tryParseDoubleForLocale` and `StringExtensions.tryParseDecimalForLocale`) which are useful for converting between strings & numbers, while taking into account different locales.

## 3.24.0

- Introduce new global framework search UI supported by `EmrQueryLayout`, and enabled for Lots & Ticket screens.

## 3.23.1

- Removed named routes for reusable project detail screen

## 3.23.0

- Added named routes for reusable project detail screen

## 3.22.0

- Changed UserInfo defaultYard to be a property that can be overridden with settings rather than always determined from defaultDepot.

## 3.21.0

- Using emr scale theme to modify more styles in emrscale.

## 3.20.0

- Added named routes for beamGallery and mobile production

## 3.19.0

- Lock `signals` and `signals_flutter` to v5.2.1, `signals_core` to v5.2.0

## 3.18.0

- Lock `signals` and `signals_flutter` to v5.3.0

## 3.17.0

- EmrFilter now scrolls horizontally on all platforms when there is insufficient space.
  - padding and innerPadding have been added so we can position the filter against the left hand edge of its parent, while still having a gap on the left - this means when the view is scrolled, it can appear to scroll off the left hand side of the screen.
  - The "Add a filter" button is shown where there are no filters added, otherwise it becomes a "+" button - this was necessary so we have a fixed size for when the button is pinned to the right hand side.
  - After a filter is added we use a Future.delayed to scroll to the end - that causes the last filter to be scrolled into view on small screens.
- EmrGrid
  - scrollController has been renamed verticalScrollController to differentiate between the two directions we now have available. When none is passed in, the grid creates and disposes its own.
  - The loading indicator/widget is now padded at the top so it is correctly centred below the header row.
- EmrQueryLayout
  - On native apps, the content no longer has horizontal padding, so it is edge-to-edge
  - The scrollController on EmrQueryLayout.card has been moved to EmrQueryLayoutController because we need to handle creating/disposing if one hasn't been passed in.
- EmrQueryLayoutDefaultSearchPanel
  - The search button is now only shown for web. On native, the keyboard has a "search" (iOS) / magnifying glass icon (Android)
  - The "X" icon to clear the textbox is now only shown when the textfield is not empty.
  - onTapOutside is used to clear the textfield focus, which causes the keyboard to hide.
- EmrQueryLayoutScrollingBody
  - The main content is wrapped by this new widget. On native, when scrolling, the leading (search/filter) and trailing (pager) widgets slide out of view. When scrolling upwards, they slide back. When reaching the end they also slide back in.
  - On changing page, the content is scrolled to the top.
- EmrPageControl
  - This is now more minimal and allows changing page size by clicking/tapping the page count text.

## 3.16.0

- Add support in the default facet panel for integer filters

## 3.15.0

- Provide an alternative page info mechanism for non GraphQL data sources

## 3.14.1

- Revert auto-advance change to date range picker

## 3.14.0

- Added a clear button to the EmrQueryLayout search box

## 3.13.0

- Force use of v1.2.31 of localisations

## 3.12.0

- Removed reference to syncfusion_flutter_datepicker.

## 3.11.1

- Introduced `getToken` in `TappableImage` to support authentication other than Firebase.

## 3.11.0

- Added vertical and horizontal scrollbar support for `EmrGrid`, with their behaviour controlled by the platform.

## 3.10.0

- `EmrInkPadController` now supports `ChangeNotifer`

## 3.9.2

- Infinite scroll added for Mobile

## 3.9.1

- Added ability to UOM input field to show label text as a fieldset text

## 3.9.0

- `EmrCard` is now selectable

## 3.8.0

- Change `EmrFilter.datePicker` to use `EmrDatePicker` rather than the Syncfusion `SfDateRangePicker`.

## 3.7.0

- Added `EmrInkPad` widget

## 3.6.1

- Added a feature to automatically navigate to the end date once the start date is selected in the EMR date range picker.

## 3.6.0

- Added a `severity` parameter to `trackEvent` which defaults to `information`.

## 3.5.2

- Try 'any' for emr_one_localisations version constraint

## 3.5.1

- Removed emr_one_localisations version constraint

## 3.5.0

- ResilientWebSocketChannel now only appends token to query string, instead of replacing all query args

## 3.4.5

- EmrFilters now can use `FavouriteFilters` widget to store favourite filters per module and per user. List of favourite filters can be populated and deleted.

## 3.4.3

- Moved the "lot" card into a very basic Core EmrCard Widget.

## 3.4.2

- Added `EmrQrCode` which uses the `qr_flutter` package.

## 3.4.1

- Introduce `EmrDateRangePicker` and `showEmrDateRangePicker()`

## 3.4.0

- Added `EmrPdfViewer` which uses the `pdfrx` package.

## 2.2.2

- EmrGrid now has a `getRowStyle` callback to provide custom row styles

## 2.2.0

- `AIHelper` no longer takes a `BaseLoginController` and instead provides a callback which is used to determine whether it is `enabled` or not. When not enabled, calls to `trackEvent` do nothing. The `userId` and `userName` metadata is now only send with events when available.

## 2.0.0

- Core now has other framework dependencies integrated internally
  - emr_one_auth, emr_one_qr, emr_one_user are now part of emr_one_core

## 1.0.5

- Support BaseLoginController's login widget builder

## 1.0.4

- Reworking login code to use refactored classes (no direct dependency on LoginController)

## 0.0.1

- TODO: Describe initial release.
