## 4.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 4.0.0

- Updated Flutter to 3.41.9

## 3.229.0

- Admin Pricing - Bug fixes - filter tag templates/categories based on territoryId
- Fix for rate value changing on 'Expire tag on next publication issue' toggle
- Fix 'Expiration Date' Filter text

## 3.228.0

- Bumped CRM version to include latest localization updates for C to F field label.

## 3.227.0

- Bumped EMR Core API version to consume null-safe manager email retrieval fix.

## 3.226.0

- Contracts Maintenance screen emrquerylayout integration with API

## 3.225.0

- Admin Pricing - Updated Admin Pricing email logic to CC Managers when sending price lists.

## 3.224.0

- TradeR - Removed unnecessary grade text field validation that was blocking users despite an existing grade selection.

## 3.223.0

- TradeR - Fixed Pricing Method field to apply blanking logic only for EU territory users.

## 3.222.0

- TradeR - Allow zero (0.00) as a valid collected delta value and remove need for 0.01 workaround.

## 3.221.0

- TradeR - Improved target weight validation and Save behavior for pricing grades.

## 3.220.0

- TradeR - Ensure NONFSP grades are loaded when the order book is pre-selected as default.

## 3.219.0

- Admin Pricing - Allowed zero value for collected delta while keeping normal rate validation unchanged.

## 3.218.0

- TradeR - Added handling of error message from Get Account info in Party controller

## 3.217.0

- TradeR - Fixed an issue where the Grade field retained the previous value after adding a contract line.

## 3.216.0

- Admin Pricing - Removed Delivery method filter since all lines will be delivered.
- Admin Pricing - Removed setting DeliveryMethod values in the results grid to "BOTH" when collected tags are present

## 3.215.0

- Admin Pricing- Fixed an issue where collected tags could not be saved when collected delta and haulage charge UOMs were different.
- TradeR - Fix spot contract grade selection by defaulting price type from order book

## 3.214.0

- TradeR - Fixed: Resolved null check error occurring when cloning fixed contracts.
- TradeR - Updated grade sorting logic in price list creation to sort by grade code instead of description.

## 3.213.0

- TradeR - Fixed party load failure by updating UI to send account ID instead of account code to Core API.
- TradeR - Restricted manager filter results to only include managers with a valid manager ID.

## 3.212.0

- TradeR - Fixed mandatory validation and scroll behaviour for Estimated Haulage Cost.
- TradeR - Fixed external freight rate not resetting on depot or location change.
- TradeR - Fixed freight rate lookup for Sales contracts to use Delivery Point.
- TradeR - Price fields are no longer mandatory when creating unfixed contracts.

## 3.211.0

- Admin Pricing - Fixed an issue where the collected tag tooltip intermittently displayed a blank grey box due to a null haulage rate.
- Admin Pricing - Fixed an issue preventing tags from being created in the Admin Pricing screen.

## 3.210.0

- TradeR - Switched selectedGrades from identity-based HashSet to value-based HashSet<String>

## 3.209.0

- TradeR - Switched account manager filter from username to Azure ID.

## 3.208.0

- Updated flutter to 3.38.3 including required package changes

## 3.207.0

- TradeR - Added new Freight Rates UI with haulage price lookup and estimated haulage cost entry.

## 3.206.0

- TradeR - Reverted all Modify Pricing screen enhancements (delivered price field, and auto-calculation logic).

## 3.205.0

- Admin Pricing - Show “–” instead of 0 when haulage charge is null or zero.
- Admin Pricing - Made haulage charge mandatory when Collected Less Charge is selected.

## 3.204.0

- Admin Pricing - Updated UI to display correct Haulage Charge using haulageRate from API response.

## 3.203.0

- TradeR - Fixed unresponsive Modify Pricing screen by removing an invalid notifyListeners call during build.
- TradeR - Contracts layout updated to use Base Price and reordered Collected Delta and Collected Price fields.
- TradeR - Form now auto-scrolls to the required LME Input field when left unfilled.

## 3.202.0

- TradeR - Order Book field now shows a clear (X) button when pre-filled to allow quick reset.
- TradeR - Add Grade screen updated to support Delivered Price and auto-calculated Collected Price based on Collected delta.
- TradeR - Pricing Method field now starts blank and supports clearing via an X button
- TradeR - Location and Delivery Point now use inline dropdown selectors instead of separate selection screens.

## 3.201.0

- TradeR- Removed all Target Weight Per Load and Load Count references from the UI.

## 3.200.0

- Admin Pricing - Added Haulage Charge field for Collected Less Charge flow.
- Admin Pricing - Updated UI to show Collected Delta + Haulage Charge (matching TradeR).
- Admin Pricing - Fully Charged mode now hides both fields and defaults values to 0.

## 3.199.0

- TradeR - Expanded Notes fields by default for improved editing experience.
- TradeR - Made Load Count optional for Fixed Contracts.
- TradeR - Auto-select the full Order Book text on re-focus to make replacement quicker and more user-friendly.

## 3.198.0

- TradeR - Updated account search integration to use the new includeBusinessDetail flag

## 3.197.0

- Admin Pricing - Copy tag - Fixed issue user was able to change start date to back date.
- Admin Pricing - Fixed date format on all places.
- Admin Pricing - Create Tag territory - Added required validation on Territory.
- Admin Pricing - Send price list - Fixed Ui defect while theme change.

## 3.196.0

- TradeR - Added support for GPL pricing option under Fixed Contracts.

## 3.195.0

- TradeR - Restored correct sorting order in the Orderbook dropdown.

## 3.194.0

- TradeR - Party contract list screen - Fixed issue of gray screen while scroll down to end.

## 3.193.0

- TradeR - Contract creation - Fixed issues in spot contract while adding grade

## 3.192.0

- TradeR - EU Only – Make the price type mandatory for Fixed Contracts.  Make this field blank by default to make the user tap into it and select an option.
- All - Make the order book selector a dropdown that shows all the order books a user has access to.  It slows down the process when you tap into that field and its already filtered out the default.
- All - Make the selector boxes display a dropdown, and not the slide out box.  Similar to the depot selector option under the delivery method step.
- EU Only - Make the internal LME mandatory for Fixed Contracts.  Make this field blank by default to make the user tap into it and select an option.

## 3.191.0

- TradeR - Fixed issue - Summary screen in contract creation was not displaying grades.

## 3.190.0

- Trader - Allow duplicate grade addition in spot and fixed contract with different broker reference.

## 3.189.0

- TradeR - Improved collected flow mobile responsiveness and fixed text overflow issues

## 3.188.0

- TradeR - Fixed UI inconsistencies across contract flows, including field visibility, UOM correction, depot sorting, and grade pricing display

## 3.187.0

- Menu Routing structure changes for emr_one_crm
- Radio Api Redesign changes

## 3.186.0

- TradeR - Refined text alignment, made key text bold, and removed extra padding for consistent UI.

## 3.185.0

- TradeR - Fixed UI inconsistencies and aligned field styles for a consistent look across the app.

## 3.184.0

- TradeR - Fixed missing updateCollectedDelta() callback execution.
- TradeR - Fixed floating-point precision issue in collected price adjustment and display.

## 3.183.0

- Trader - Fixed issue in Extend Contract - Refresh end date on overview scren immediately after save.

## 3.182.0

- TradeR - Issue fix for Collected Only flow not allowing to proceed to the next step 

## 3.181.0

- TradeR - Added support for Collected, Fully Charged, and Less Charged pricing flows.
- TradeR - Fixed blank grey overlay appearing over Summary section during Spot contract creation.

## 3.180.0

- TradeR - Fix for Date Validation Message Issue for extend contracts

## 3.179.0

- Added primaryManagerOnly Flag for TradeR and AdminPricing while searching for accounts

## 3.178.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 3.177.0

- TradeR - Removed GPL requirement for Spot Contracts and made Pricing Method mandatory for Fixed Contracts.

## 3.176.0

- TradeR - Added dynamic fields and behavior for Sales contract type (delivery, classification, currency).

## 3.175.0

- TradeR - Use in-app territory selection when retrieving depots on contract creation

## 3.174.0

- TradeR - Added Feature to extend contract - Spot, Fixed and GPL from both contract list as well as contract detail screen.

## 3.173.0

- TradeR - Change contract depot selection from flyout to inline picker, using TradeR API returned depots

## 3.172.0

- TradeR - Enabled creating fixed contracts in currencies different from the order book’s default.

## 3.171.0

- TradeR - Party search screen - Search text field will serach accounts by name and code only.

## 3.170.0

- TradeR - Added TerritoryCode support to fetch grade descriptions during contract creation.

## 3.169.0

- TradeR - Added filter for L Account if Business account filter added
- Default show only current logged in user account only.

## 3.168.0

- TradeR - Fixed contract - Modify pricing - UI design fixes

## 3.167.0

- TradeR - Updated to show final yard price instead of base price when modifying grades based on selected depot.

## 3.166.0

- TradeR - Create Pricelist - Yard selection - Fixed issue show repetitive yards and rates screen shows repetitive yard prices.

## 3.165.0

- Groundwork for new menu structure.

## 3.164.0

- TradeR - Impelemented defult filter for business account on search party screen.

## 3.163.0

- TradeR - Impelemented alaphabetical sorting on account code and account name on search party screen.

## 3.162.0

- TradeR - Removed tabbed layout from PartyScreen and retained only summary view.
- TradeR - Restricted delivery method selection to either Collected or Delivered (not both).

## 3.161.0

- TradeR - Added Dart extension to identify EU territories (A21, A24, A25, A26) based on territory code for contract duration logic.

## 3.160.0

- TradeR -  Added collected price delta column changes for get contracts query

## 3.159.0

- TradeR - Fixed visibility of text and button in UI light mode.
- TradeR - Depot & Arising Point Location Selection: Replaced checkbox with radio button for single-selection mode.

## 3.158.0

- TradeR - Buyer Autocomplete: Added case-insensitive filtering and alphabetical sorting for better search experience.
- TradeR - Price Display: Updated to show final yard price instead of base price when modifying grades.

## 3.157.0

- Updated schema to include price delta column changes

## 3.156.0

- TradeR - Depot selection greys out on spot contract when navigated to previous page

## 3.155.0

- TradeR - Fixed a crash when rateUomId was null by defaulting to Uom.mt instead of throwing an exception.

## 3.154.0

- TradeR - Reverting log entries.

## 3.153.0

- TradeR - Added Logging to debug Haulage Charge issues.

## 3.152.0

- TradeR - Fix haulage charge persistence by adding listener.

## 3.151.0

- TradeR - Fixed a rare race condition in the delivery method step by removing unnecessary async from the onNext function.

## 3.150.0

- TradeR - Update schema to remove the showToCustomer

## 3.149.0

- TradeR - Added field-level validation for depot selection to ensure consistent form behavior.

## 3.148.0

- TradeR - Added depot support to GPL Spot Contract creation: backend now returns depots linked to publications, and UI displays and filters these depots.

## 3.147.0

- TradeR - Fixed UI inconsistencies and corrected collected charge value.
- TradeR - Added temporary “Any Depot” default as a workaround for spot contracts.

## 3.146.0

- TradeR - Standardized Haulage Charge error message to match other field error styles

## 3.145.0

- Added tradeRUrl

## 3.144.0

- Update schema to fix issue for prices/tags not shown in TradeR

## 3.143.0

- TradeR -Improved contract flow by fixing UI visibility, haulage cost display, UoM options, collected price accuracy, and header/line consistency.

## 3.142.0

- Pass accountId instead of accountCode

## 3.141.0

- TradeR - Limited the location selector to a single choice and removed the “Any” option from the collected flow.
- TradeR - For Spot contracts, ensured Delivered/Target loads always use LD UOM.
- TradeR - Hid collected values/fields when “Collected” isn’t selected.
- TradeR - Fixed GPL Issue Reference field clearing when returning from the Delivery Method screen.
- TradeR - Implemented setting of Target Load per grade line.

## 3.140.0

- TradeR - Fixed issue party - price detail showing wrong value for fully charged and show to customer. Should not display tag as 0.

## 3.139.0

- TradeR -Added validation to require at least one location when creating a Purchase Contract with “Collected” delivery type.

## 3.138.0

- TradeR - Fixed repeated API calls in Arising Point selection.

## 3.137.0

- Admin Pricing - Send Price list to customer - Done some ui fixes.

## 3.136.0

- TradeR - Fix grades order, summary screen, and grade selection box overlap issues

## 3.135.0

- Admin pricing - Send Email Price List - Fixed issue primary manager name mapping in Send Email input.

## 3.134.0

- Updated the loading message and show error message when email sending failed

## 3.133.0

- TradeR - Removed Supplier & Sales filters from TradeR Home screen.
- TradeR - Fix: Pricelist loading issue in TradeR.

## 3.132.0

- TradeR - Hidden expired contracts from Prices page
- TradeR - Unified post-creation flow with OK button
- TradeR - Made post-creation buttons consistent for contracts and pricelists
- TradeR - Disallowed same-day start and end date for contracts
- TradeR - Enforced Collected/Delivered price > 0
- TradeR - Fixed inconsistent UI design between Retry page and Successful Pricelist Created page.
- TradeR - Fixed Pricelist creation stuck after duplicate entry attempt by enforcing "Delivered" as default delivery type.

## 3.131.0

- Admin Pricing - Integrated api's for functionality of send gpl by email by selecting proper account and main contact

## 3.130.0

- TradeR - Corrected the label of the Location field

## 3.129.0

- TradeR - Fixed contracts not showing after switching tabs post-search.
- TradeR - Fixed endless loading spinner after search results.
- TradeR - Added Save button on Location page.
- TradeR - Fixed Delete button not working in Grade Summary page.
- TradeR - Removed duplicate TWPL entry in Summary page.
- TradeR - Fixed Load Count resetting to zero.
- TradeR - Hidden Load Count field when Delivered type is Delivered.

## 3.128.0

- TradeR - Added Back and Save buttons to the top of the Spot Contract Grade List.
- TradeR - Updated Orderbook screen to prioritize Purchase Orders at the top, followed by B2B entries.
- TradeR - Improved Grade List display by switching to a single-line view.
- TradeR - Fixed issue where sorting Spot Contracts by newest to oldest caused the page to hang indefinitely.
- TradeR - Fixed UOM posting bug where Spot Contracts with LB were incorrectly saved as MT in T2.
- TradeR - Changed contract calculation flow: users now enter Loads and Contract Weight; Target Weight per Load is auto-calculated.
- TradeR - Added UOM values (e.g., MT, GT) to the Contracts List page for better visibility.

## 3.127.0

- TradeR - Fixed multiple issues in Spot/Fixed Contract creation and details (decimal precision, yard selection, GPL reference, search bar, and UI consistency.

## 3.126.0

- Admin Pricing - fixed issue of rate field value not getting reset on change
- Admin Pricing - fixed issue of Haulage price matrix error was still displaying even updating tag template

## 3.125.0

- Admin Pricing - Add Send Email Option to allow to send gpl's via email

## 3.124.0

- Admin Pricing - Fix Both facets 

## 3.123.0

- Admin Pricing - Create tag added logic to not allow past date tag creation.
- Admin Pricing - Create tag resolved issue of tag templates were not loading.

## 3.122.0

- Added account sub-types extension and related models to allow filtering on "Sale" account type.
- Introduced new account type Sales in the account type model, which is mapped when customer = true in account sub-types.
- Default behavior changed on TradeR page: now shows only Business accounts first instead of all accounts. (Users can still search for Retail and other accounts.)
- Fixed Buyer filter issue where it wasn’t applying correctly.
- Removed grouping of grades in the Summary screen — now showing grades sorted only by gradeCode.
- Added search bar in the Grades page to allow searching by grade code or description for better usability.
- Updated Grades page color scheme for better visibility in dark mode.
- Implemented territory-based account search restriction.

## 3.121.0

- Changes to simplify API URLs.

## 3.120.0

- Admin Pricing - implemnented alphabetical order for filters 

## 3.119.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 3.118.0

- Admin Pricing - Made Collected Tag Pop up scrollable when content is large 
- Admin Pricing - Position Collected tag popup at the top when scrolled to bottom in browser

## 3.117.0

- TradeR - changes to display message if no location is selected for collected method

## 3.116.0

- TradeR -Fixed territory control by passing selected territory code to account search query

## 3.115.0

- TradeR - Updated Collected Tag Icon to FileInvoice in List View.
- TradeR - Fix multiple tag icons showing for single collected tag
- TradeR - Removed supplier option from Account Search Filter.
- TradeR - Fixed blank screen issue in GPL summary screen. 

## 3.114.0

- Admin Pricing - TagsReasons filter not showing selected values issue fix
- Admin Pricing - Retain negative and default value on selection of fullycharged or showhaulage

## 3.113.0

- Admin Pricing - Added max value validation for rate field to prevent saving invalid entries.

## 3.112.0

- Admin Pricing - Removed any option from locations while adding collected tag.

## 3.111.0

- Admin Pricing - Show ProductName on ProductCode Hover
- Admin Pricing - Retain entered rate value on selection of fullycharged or showhaulage
- Admin Pricing - Previous issue showing null when expiration date filter is applied issue fix
- Admin Pricing - Copy tag validation message fix

## 3.110.0

- Admin Pricing - Product code filter was not showing suggestions due to missing search input in backend query.

## 3.109.0

- TradeR - Added a bottom-right "Save" button and made the yard list scrollable to improve usability.
- TradeR - Grade Selector Sorting: Replaced grouped display with a flat, alphabetically sorted list based on grade code and description.
- TradeR - Rates Decimal Fix: Adjusted rate formatting to show 4 decimal places when the UOM is LB.

## 3.108.0

- Admin Pricing - Yards filter - implemented filter by logged user default territory

## 3.107.0

- TradeR - Added support for Collected tags on the TradeR.

## 3.106.0

- Admin Pricing - Add or remove collected tag show warning popup
- Admin Pricing - Tag list updated design

## 3.105.0

- Admin Pricing - Show Account Name on account code hovering 
- Admin Pricing - Show all rates values upto 2 decimal places
- Admin Pricing - Do not include the haulage charge in collected price when UOM is different

## 3.104.0

- Admin Pricing - Collected tag validation message when already exist
- Admin Pricing - Disabling haulage charge field in case of different Uom

## 3.103.0

- Admin Pricing -  Rate field changes for fully charged selected and other Ui fixes.

## 3.102.0

- Admin Pricing - Show Delivery Method filter only if account or manager filter is selected

## 3.101.0

- Admin Pricing - Collected Tag - Make ShowHaulage charge mandated for fullycharged and show the charges in collected tag details popup


## 3.100.0

- Admin Pricing - Collected Tag - Show Haulage charge when different UOM is selected & restrict uom selection to MT & LD

## 3.99.0

- Admin Pricing - Collected Tag - Allow to select different UOM other than selected gpl line 

## 3.98.0

- TradeR - Added message for GPL not created reason

## 3.97.0

- Admin Pricing - Collected Tag - Remove tag range selection, hide copy and edit tag option.
- Admin Pricing - Create Tag - Added new flag in form data to user everywhere instead of checking tag category.

## 3.96.0

- Admin Pricing - Manager & Product Family Filter missing and facet disabled bug fix

## 3.95.0
 
 - Admin Pricing - View both the tags and collected tags details in seperate popup at the same time

## 3.94.0

- Admin Pricing - Collected Tag Info Pop up implementation

## 3.93.0

- Admin Pricing: Fixed issue where Product Code filter textbox was not showing suggestions while typing.

## 3.92.0

- Admin Pricing - Removing filter restrictions to allow applying any filter

## 3.91.0

- Admin Pricing: Fixed Save button incorrectly enabled when no haulage rate was fetched for fully charged tags.

## 3.90.0

- Adding expireOnNextPublicationIssue on creating a new tag

## 3.89.0

- TradeR - Hidden grid list view on mobile devices.
- TradeR - Moved tags display from popup to inside expanded card on mobile.
- Replaced MediaQuery.of(context).size.width with MediaQuery.sizeOf(context).width

## 3.88.0

- Updated logic to show haulage validation message only when "Collected Fully Charged" is selected.

## 3.87.0

- Fixed issue where Save button was always disabled due to incorrect loading state.
- Fixed issue where rate field value was not being saved properly.

## 3.86.0

- Admin pricing - Moved the "Remove Tag" icon next to the "Info" icon.
- Admin pricing - Added validation to prevent copying tags with null or zero rates, aligning behavior with Add Tag flow.

## 3.85.0

- Admin Pricing: Allowing users to save collected tags.

## 3.84.0

- Admin Pricing: Added filter by user default territory

## 3.83.0

- Updated to Flutter 3.32.5

## 3.82.0

- Admin Pricing: Changes to call haulage price matrix for collected fully charged while adding tag

## 3.81.0

- Admin Pricing: Collected Tags Panel UI changes and default Uoms for rate field for collected tags

## 3.80.0

- Admin Pricing - Fixed issue of some accounts were not loading for selectred buyer as it was taking from facets
- Admin Pricing - Get Products, Yards and Tag reasons by calling api rather than taking it from Facets

## 3.79.0

- Admin Pricing: Default filter by logged in user Territories.

## 3.78.0

- Removed AIHelper references and replaced with EmrLogger

## 3.77.0

- Admin Pricing: Fixed input validations.
- Admin Pricing: Fixed Copy Tag dialog to correctly display the full original decimal value on open.
- Admin Pricing: Fixed sorting for Product Name and Product Code columns

## 3.76.0

- Admin Pricing : Fixed issue in end date selection while updating tag end date. It was not allowing to select next date after start date.
- Admin Pricing : Copy tag start date of new tag should be 1 day after that last date of copied tag.

## 3.75.0

- Admin Pricing : Added overlapping interval check for update tag end date

## 3.74.0

- Admin Pricing: Restrict the selection of different uoms from select all option

## 3.73.0

- Admin Pricing: Tag Decription long text overflowing issue fix
- TradeR: Setting up text not shown in light mode while creating contracts

## 3.72.0

- Incoporating changes due to `Location` now not being nullable

## 3.71.0

- Admin Pricing: Issue fix for Tag popup partially hidden when clicking the bottom most tag icon

## 3.70.0

- Added Trader api url for trader module

## 3.69.0

- Admin Pricing: Handled validation error message on tag category creation

## 3.68.0

- Admin Pricing : Added pagination for loading all tag template while creating new tag

## 3.67.0

- Admin pricing - Getting tag delta calculated from back end with proper date filters rather than calculating from flutter.

## 3.66.0

- Admin Pricing: Changed Product Filter to allow multiselect

## 3.65.0

- Added autovalidateMode to EMR form fields and updated packages for compatibility.

## 3.64.0

- Admin Pricing: Fix for Publication Issue date shown incorrectly 

## 3.63.0

- Admin Pricing: Added a delete icon to the Tag widget to allow users to delete tags.
- Admin Pricing: Updated Valid To date logic to only allow dates after Valid From.

 ## 3.62.0

- Admin Pricing: Copy tag and Edit tag - Replaced AlertDialog.Adaptive with AlertDialog to resolve layout issue in MAC.

## 3.61.0

- Admin Pricing: Added Created By and Creation Date display for each tag on AdminPricing screen.
 
## 3.60.0

- TradeR - Web view UI issues.

## 3.59.0

- Admin Pricing: Show rate field for collected fully charged reason tags

## 3.58.0

- Admin Pricing: Replaced Text with SelectableText for all columns in the Admin Pricing grid. This allows user to select and copy values.

## 3.57.0

- Admin Pricing: Enabled partial match filtering in the account code search field on the Admin Pricing page.

## 3.56.0

- Admin Pricing: Improved tag copy behavior- Start date now defaults to the original tag's end date. Tags without an end date can't be copied. The end date is left blank for user input.

## 3.55.0

- Admin Pricing: Product column too wide and uneven column spacing

## 3.54.0

- Admin Pricing: Delivery Method filter fix to show only Delivered & Both options 

## 3.53.0

- Admin Pricing: Updated filter options on the Admin Pricing screen to dynamically adjust based on prior selections.

## 3.52.0

- TradeR - Issue fix for widget rebuild hides the tags and prices

## 3.51.0

- TradeR - Handle the timeout issue for getcontracts and show tags and prices on tradeR

## 3.50.0

- Trader - Removed the call for tags and prices as they are timing out

## 3.49.0

- Admin Pricing - Updated filter flow -> Buyer -> Accounts -> product family.

## 3.48.0

- Admin Pricing - Included product name in admin pricing grid

## 3.47.1

- Admin Pricing - Update tag end date dialog - Added some more detail abput tag.

## 3.47.0

- Admin Prcing - Copy tag - Done updates to resolve squeezing issue in Mac
- Admin Pricing - Copy tag - Added validation on end date.
- Admin Pricing - Corrected naming conventions for tag interval for Add tag, copy tag and update tag

## 3.46.0

- TradeR - Schema changes to include the timeout issue fix while loading prices 

## 3.45.0

- TradeR - Fix incorrect tab focus when 'All' tab is clicked and set default focus to correct tab on navigation.

## 3.44.0

- Admin Pricing - Makes the RegExp filtering case-insensitive, improving the free-text search experience.

## 3.43.0

- Fixed rendering issue in Internal Notes and Grades section for tradeR users due to null background color.
- Resolved tab filter bug where switching back to "All" still used the previous tab’s filter.

## 3.42.1

- Admin Pricing - Fixed issue: While adding tag, if user removing value from rate field then its setting default UOM to MT instaed of selected pricing line

## 3.42.0

- Admin Pricing - Add tag template removed default rate.
- Admin Pricing - Add tags removed Override default rate reason.

## 3.41.0
- TradeR - Updated contract line to display to show each grade as a seperate entry in table view and card view.
- TradeR - Displaying associate tags for contract line grades.
- TradeR - Added query parameter tab to persost and reload the correct tab on navigation in Prices page.

## 3.40.0
- Admin Pricing: Collected Tags implementation

## 3.39.0
- Admin Pricing - Validating Rate and Reason while adding a tag.
- Admin Pricing - Disabled UOM selection on Copy Tag Screen.
- Admin Pricing - Restricting users from selecting lines with different UOM's.

## 3.38.0
- Admin Pricing - Default sorting by account number in ascending order

## 3.37.0
- Admin Pricing - Validating valid to date while adding tag

## 3.36.1
Admin Pricing - Small bug fix while add tag category

## 3.36.0
- Admin Pricing - Implemented validations for add tag template, tag category, update tag, copy tag

## 3.35.0
- Admin Pricing - Legacy Tags UI changes

## 3.34.1
- Admin Pricing - Fixed issue add tag button is not get disabled even though no pricing selected.

## 3.34.0
- Some updates to fix breaking changes caused by rebrand work

## 3.33.0
- Remove Delivery Method Selection Step from Pricelist creation in TradeR

## 3.32.0
- Admin Pricing - Implemented logic to show error of Overlapping tags.
- Admin Pricing - Added validations for valid From and To date

## 3.31.0
- TradeR - Allow collected and delivered both selection 
- TradeR - WebView Big blue square UI fix

## 3.30.0
- Admin Pricing - Add Tag - Fixed Tag delta UOM and GPL base rate UOM should be same by default and shouldn't allowed to change.
- Admin Pricing Tag Category - Fixed minor issues.

## 3.29.0
- Admin Pricing: Search by Text implementation

## 3.28.0
- Handled null values for delivery and collected prices by defaulting to ValueUomPair() to prevent UI confusion.

## 3.27.1
- Admin Pricing - Add Category - Fixed minor issue happening in loading territory as checkbox list

## 3.27.0
- Admin Pricing - Fixed account filter issue

## 3.26.0
- TradeR - using account code instead of id, as route param for tradeR

## 3.25.0
- Admin Pricing - Create tag template - Added reason as open text instead of dropdown.
- Admin Pricing - Create tag template - Made rate to Default rate.
- Admin Pricing - Create tag template - Added button to add new tag category.
- Admin Pricing - Create tag template - Implemented Create new Tag category
- Admin Pricing - Create tag - Added option to add Override default rate reason if buying manager override default rate of tag template.

## 3.24.0
- Admin Pricing: Added Tag Reasons filter and facets

## 3.23.0
- TradeR - Using emr_core_api package to talk to core api instead of emr_one_crm_data 

## 3.22.0
- TradeR - Switched checkboxes and radio buttons on Create a Price List - Step 1 and Step 3 pages
- TradeR - Delivery method - Both delivery method selection should not allow and Haulage charge selection should be available for Collected delivery method only.

## 3.21.0
- Removed "Both" from TradeR front-end options.
- Fixed Price Matrix categorization issue, ensuring it's no longer incorrectly labeled as a Fixed Contract.

## 3.20.0
- Fixed web design for GPL
- Done code clean up to remove unused files of web version of GPL

## 3.19.0
- Admin Pricing - Fixed issue of double - sign with tag delta in resultant price if tag delta is -ve.
- Admin Pricing - Fixed Create tag validation and added Todays date default for validFrom for tag.

## 3.18.1 
- Fixed issue occuring at fixed and spot contract confirmation page 
 
## 3.18.0
- Fixed web design for fixed and spot contract
- Done code clean up to remove unused files of web version

## 3.17.5
- Admin Pricing - UI fix for showing tag delta in resultant price and price columns formatting changes

## 3.17.4
- Admin Pricing - Fixed admin pricing tagging not working.

## 3.17.3
- Admin Pricing - Implemented pagination and query on product filter.

## 3.17.2
- Admin Pricing - Fixed product filter issue.

## 3.17.1
- Admin Pricing - Displayed yard code instead of shortname in yard filter.

## 3.17.0
- Admin Princing - Implemented sorting on columns

## 3.16.0
- Added option to add new tag template while adding tags for admin pricing

## 3.15.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 3.14.1
- TradeR- Fixed Create contract flow in web

## 3.14.0
- TradeR Implemented Support for Both deliver type for SPOT, Fixed and GPL
- Implemented support for no duplication of contract lines even contract line locations are multiple

## 3.13.0
- Added tag icon & tooltip on new Admin pricing Screen
- Added ability to copy a tag
- Added ability to update the end date of a tag

## 3.12.0

- Updated dependencies to fix a linter error.

## 3.11.0
- Implemented new Admin pricing screen against CoreApi
- Reference Emr_One_core 4.8.0

## 3.10.3
- Renamed the label 'Select an Arising point' to 'Select Location'

## 3.10.2
- Contract overview screen- Grade Info - Display Material description, Rename Collection Cost (If Selected) to Haulage Charges,
Updated UOM in Caps

## 3.10.1
- Fixed GPL reference list issue in Create spot contract
- Done update in calculation for Target weight, TWPL and Load count while contract overview page.

## 3.10.0
 - Passing user info service to AccountService

## 3.9.1
- Fixed label for Account type filter for parties for TradeR

## 3.9.0
- Created close contract dialog and resolved close contract save issue.



## 3.8.0
- Lock `flutter_dropzone` to version `4.0.3`

## 3.7.0
- Created new screen for contract overview.It include Contract Overview as well as Grades of contract with list view and Grid view.

## 3.6.0
- Create new contract ref and save cloned contracts for Spot/Fixed contracts

## 3.5.0
- FixedContract - Set and save the Load count based on twpl & targetweight, Make twpl editable instead of defaulting it to a value

## 3.4.1
- Fix for Grades summary not shown for Spot GPL in mobile view and fixed contract weight field label rename.

## 3.4.0
- Make visibility/enabling of fully charged & haulage charge fields consistent with spot & fixed contracts

## 3.3.0
- Pricelist deliverymethod option selection fix and pricelist creation request change

## 3.2.0
- Updated dependencies.

## 3.1.0
- Spot Contract GPL not loading when user preferences orderbook not set and not saving when currency code is not set

## 3.0.0
- Updated to work with Flutter 3.24.x

## 2.10.3
- Existing Contracts Not displayed in TradeR issue fix

## 2.10.2
- Fix to update the label text to haulage charge

## 2.10.1
- Fix to handle empty grades with no active publication while creating pricelist

## 2.10.0
- Updated emr_one_core dependency to ^3.25.0

## 2.9.3
- Updated logic for delivery method and fully charged in contract creation request

## 2.9.2
- Bug fix for showing no publications error only for spot contract

## 2.9.1
- Add Fully Charge toggle for pricelist

## 2.9.0
- Using emr_one_crm_data for CAM access

## 2.8.0
- Updated emr_one_core to 3.20.0 and made required changes.

## 2.7.18
- Remove Collected Less Charge and Collected Fully Charge

## 2.7.17
- Spot contract gpl issue reference list showing empty issue fix 

## 2.7.16
- Copy Tag error fixes

## 2.7.15

- Show names for facet filter and renamed tags

## 2.7.14
- Add & update tags schema changes

## 2.7.13
- Grade Type Filtering and pagination fix

## 2.7.12
- Added Validation messages for adding and updating tags and UI enhancements

## 2.7.11
-  Pagination fix for tag Templates

## 2.7.10
- Bug Fix: Enabled Haulage Charge input for Sales Contracts with "Delivered" method.

## 2.7.9
-  Added Validations for while saving and updating tag Templates

## 2.7.8
- Enhanced delivery method selection to allow users to select both "Delivered" and "Collected" simultaneously

## 2.7.7
- Fixed issue where the GPL Issue Reference List was empty in TradeR Spot Contracts.

## 2.7.6
- Changed "Collected Charge" term to "Haulage Charge" throughout TradeR.

## 2.7.5 
- Updated 'Please select an arising point' to 'Please select an account location' to correct a labeling bug.

## 2.7.4
- Add Update tag templates tab in admin pricing

## 2.7.3
- Load tag templates tab in admin pricing

## 2.7.2
- Refresh grid on filter removal and blob model changes

## 2.7.1
- Updated pricelist model as per the blob

## 2.7.0
- Updated emr_one_core to 3.17.0

## 2.6.6
-  Pricelist Facet filtering and Adding Tag Model changes

## 2.6.5
-  Show pricelist rows based on grades

## 2.6.4
-  Grades autofill on default orderbook selection 

## 2.6.3
-  Pricing method autofill on default orderbook selection bug fix

## 2.6.2
- Admin Pricing GPL text search 

## 2.6.1
- Updated pricelist model as per the new schema

## 2.6.0
- Removed reference to syncfusion_flutter_datepicker.

## 2.5.2
- Copy Tag feature and show correct set of filtering options for admin pricing, updated as per latest schema

## 2.5.1
- Added restriction on inputs for adding tags for pricelist and bug fixes

## 2.5.0
- Removed reference to syncfusion_flutter_charts and syncfusion_flutter_datagrid

## 2.4.9
- Admin Pricing Screen layout and ability to load pricelist, perform filtering and add/update Tags to pricelist

## 0.0.1

- TODO: Describe initial release.
