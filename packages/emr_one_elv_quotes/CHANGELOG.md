## 5.2.0

- Fixed issue where changing yard, postcode, or lead source included previously searched vehicles (selected and unselected) in the quote request. User Story: [58737], [58818], Task: [58791], [58817]

## 5.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 5.0.0

- Updated Flutter to 3.41.9

## 4.40.0

- [55711] - New quote screen designs.
  
## 4.39.0

- User Story: [57316], Task: [57733]
- Fixed bug which does not selects an account if there is no location available when doing quotations

## 4.38.0

- Bump elv_core_api version to 2.230 to make sure contact in account search is returned with an id

## 4.37.0

- Bump version as it was missed in previous PR

## 4.36.0

- [57397] Making sure account location code set during quotation is always a postcode prefix based location

## 4.35.0

- Revert back change done in 4.34.0 and only fix text color for the select account and location and collection address

## 4.34.0

- [56886] Fixed the color of the text on the container used to reflect a selected account in dark mode

## 4.33.0
- Fixed the Postcode validation in Quick Quote (User story : 56364)

## 4.32.0
- VIN Scrap - Ask for Make, Model, Year and Engine Size when VIN is shorter than 17 characters

## 4.31.0

- Updated CAT API requests to require `YardCode` as a path parameter.

## 4.30.0
- Removed the price adjustment for CAT for UK

## 4.29.0

- Updated the collection address flow to allow selecting a location associated with the account.
- Added support for creating a new location under the selected account.
- Introduced an expandable option in account search for accounts that have multiple addresses.

## 4.28.0

- Bumped ELV Core version

## 4.27.0

- Fixed bug where HasOriginalCat flag was getting set even if no pre or pipe cats were selected during quotation

## 4.26.0

- Updated emr_one_elv_quote_api version to 1.11.0

## 4.25.0

- Updated flutter to 3.38.3 including required package changes

## 4.24.0

- Resolved an issue that caused the system to always select the delivered quote instead of the intended quote.

## 4.23.0

- Prioritize delivery yard over postcode. Fix collected-quote refresh when yard changes

## 4.22.0

- Add postcode distance calculation and update UI integration
- Distance show in the Offered price dropdown.

## 4.21.0

- Prevent defaulting to **LDECASH**; user must now select an account before adding vehicles.

## 4.20.0

- Corrected price selection logic:
- When a **yard** is selected from the dropdown, the **delivered price** is now correctly applied.
- When **no yard** is selected, the system now defaults to using the **highest available price**.

## 4.19.0

- Manual address option added for collection operator.

## 4.18.0

- Update pricing call to only look at post code specified in the post code input field and also set the Collection Price Required flag respectively

## 4.17.0

- Fix issue where postcode validation message is shown for empty postcode
- Postcode validation fix for US

## 4.16.0

- Quick quote multiple vehicle add flow changes.
- Renamed the `Save` button to `Add` to better reflect the user action when adding new vehicles.

## 4.15.0

- Skip postcode validation for US
- Show postcode validation message when clicking on either checkbox or account details

## 4.14.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 4.13.0

- Permission constants shifted to `emr_one_elv_core`

## 4.12.0

- Duplicate vehicle VRN/VIN combinations found issue fix

## 4.11.0

- Fix postcode validation check on selecting account and completing quote

## 4.10.0

- Remove default date range filter from quote search screen.

## 4.9.0

- Updated permission names to align with the new EMR permission standard.

## 4.8.0

- Remove `Existing Quote Search` Screen

## 4.7.0

- Add map for `widgetBuilders` in route registry

## 4.6.0

- Groundwork for new menu structure.

## 4.5.0

- OmniSearchController made internal

## 4.4.0

- Not switching back to highest priced yard once user has chosen a quote for a yard and price type

## 4.3.0

- Set VIN When Adding Vehicle Manually in US

## 4.2.0

- Updated Quote search screen to sort by default on CreatedDate descending instead of Id

## 4.1.0

- Update electric/hybrid vehicle warning to be dynamic and display whatever fuel type the car has

## 4.0.0

- Removed server calls when Vehicle configuration is changed
- Quote prices is now calculated using part prices locally and without an api call
- Show an overlay loader for each server call to prevent users from changing vehicle configurations
- Swapped yard and quoting for field
- Added option to save quote as draft

## 3.96.0

- Allow for quoting multiple cats (`Pre Cats` and `Pipe Cats`) When ELV Config is set

## 3.95.0

- Bank details are now displayed in the text box in quick quote screen when quote is cloned

## 3.94.0

- Masking bank details and only allowing editing bank details is user has permission

## 3.93.0

- Added error message when VRN does not exist in the VRN scrap screen.

## 3.92.0

- Refactored Quote Search code
- Removed schema type references from data source, controller and widget
- Fixed issue in Quick Quote with postcode validation api call triggering on load with empty value

## 3.91.0

- Emr Query Layout hybrid support and fixes

## 3.90.0

- Added Chrome Wheels option to Quiick Quote Screen and updated associated logic

## 3.89.0

- Added validation for bank account details

## 3.88.0

- Change text collection date to appointment date

## 3.87.0

- Manual address entry option in ELV quote screen via checkbox toggle.
- Postcode validation for manually entered addresses before saving.

## 3.86.0

- Do not display drop down for prices offered on Quick Quotes screen if price is loading
- Close Ammount Offered Menu on Quick Quotes screen if price is loading and it is already opened

## 3.85.0

- Update `updateCollectionAndBankDetailForABatchQuote` to `updateCollectionForABatchQuote` endpoint in `CollectionOperatorService`

## 3.84.0

- Added haulage to collection operater list
- Added loading spinner to price for when collection operator is changed
- Ensure that colleciton operator is cleared from text field when swapping between collected quotes on quick quotes screen

## 3.83.0

- Fixed bug for postcode validation not triggering on Party selection in Quick Quote

## 3.82.0

- Updated to work with latest `EmrCard` changes in `emr_one_core: 4.88.0`

## 3.81.0

- Updated endpoint which retrieves collection operators by yard code to return data using batch quote bundle id

## 3.80.0

- Updated flow for adding and updating **Notes** and **Bank Account** details:
- **Notes:** Can now be added for any quote type and account type. Added option to enter notes on the Summary screen without restrictions.
- **Bank Details:** Can now be added if the account type is **Retail**, regardless of whether the quote is collected or delivered.
- Added fields for **Notes** and **Bank Details** on the Quick Quote screen.

## 3.79.0

- Changes to simplify API URLs.

## 3.78.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 3.77.0

- Added geolocation api call to check if postcode entered is valid or not

## 3.76.0

- Update input prompt on VRN Scrap account search for UK to display `Please enter a Party Name or an Account Number`

## 3.75.0

- Block quotes of EV/Hybrid vehicles in US on Quick Quotes and VinScrap Screens

## 3.74.0

- Pass AccountLocationCode in Batch Quote requests

## 3.73.0

- Added option to load more account search records when scrolled at the end
- Removed unused code
- Always showing L accounts first in the response list when searching accounts

## 3.72.0

- Fixed redirection issue on the `Summary Page` for Vehicle Document links
- Updated `VRN/VIN display` to show only the `last 4 digits``
- Removed extra text after `Catalytic Convertor` as per updated design specifications
- Fixed layout issue in `Non-Confirming Parts Image View` card

## 3.71.0

- Added option to select account when creating quote via VRN scrap

## 3.70.0

- Added csv export on quote search screen
- Added a message regarding deprecation of existing quote search screen

## 3.69.0

- Only Display Collection Operators With Active Haulage Price Matrix for Start and End Location

## 3.68.0

- Fix errors after schema update
- Pre-apply created date and territory filters for quote search

## 3.67.0

- [UK]: Updated vehicle sorting logic to use VRN instead of VIN.

## 3.66.0

- Fixed bug where Collected quotes text still shows up even if no collected quotes are returned

## 3.65.0

- Added support to show multiple collected quotes

## 3.64.0

- Added default vehicle configs for VRN scrap quotes

## 3.63.0

- Hiding the LeadSources enum exposed from sharedtypes to avoid name conflicts.

## 3.62.0

- New `QuoteSearch` screen based on `EmrQueryLayout` with grid and card view

## 3.61.0

- Increase http call timeout to 30 seconds

## 3.60.0

- Only showing reopen inspection option if user has permission

## 3.59.0

- Added a "View Documents" button to navigate to a new page displaying all uploaded images from the inspection process.

## 3.58.0

- Added ability to reopen a vehicle for inspection on the summary screen

## 3.57.0

- Display created date, created by, modified date, and modified by information on quote summary page

## 3.56.0

- Migrate logging implementation to EmrLogger

## 3.55.0

- Remove LDECASH or the selected party from the party search field when changing account

## 3.54.0

- Fix bug where vehicle details are expanding to the bottom of quote summary screen

## 3.53.0

- Display haulage cost on quote summary screen for collected quotes

## 3.52.0

- Refactored vehicle order management logic to preserve vehicle sequence throughout the quote process.

## 3.51.0

- Fix bug where yard code was sent with name and code when creating an account from quick quote screen

## 3.50.0

- Update Copy & Edit batch quote button label to Clone Quote

## 3.49.0

- Validate email and mobile phone number when creating account from quick quote screen
- Do not allow setting a date of birth younger than 18 years old when creating account from quick quote screen

## 3.48.0

- Fixed bug due to which account name is not showing in the Quoting For field
- Updated check to determine retail account when displaying bank sort code and bank account fields

## 3.47.0

- Fix issue where post code could not be updated after an account has been updated

## 3.46.0

- Don't allow Hybrid or Electric vehicles to change cat available flag during quotation
- Only showing account with locations for UK only when searching accounts

## 3.45.0

- Remove check to ignore empty string values for postcode in when setting account info controllers

## 3.44.0

- Set postcode automatically on collection address field when postcode is set for pricing
- Set alloy wheel and steel wheel as zero and set battery and cat to no when adding a vehicle for UK to price
- Show vin next to vrn in the summary screen for UK

## 3.43.0

- Updated account search to show locations for Business accounts
- Added filter in the account search query for retail and business account instead of manually filtering

## 3.42.0

- Set CollectedPriceRequired to true if it is the initial request
- Reinitialize quick quote state when calling loadBatchQuoteBundle

## 3.41.0

- Update CollectedPriceRequired Logic for Batch Quote Bundle Operations

## 3.40.0

- Added autovalidateMode to EMR form fields and updated packages for compatibility.

## 3.39.0

- Add Text editing controller for mobile phone number
- Display disabled mobile phone, email, and contact phone (landline) after account has been selected on QuickQuotes Screen
- Display Yard Name next to yard code when searching yards on the create account flyout from quick quotes screen
- Display landline and email fields on quote summary screen

## 3.38.0

- Added input digit formatter on the sort code and account number field in collection details
- Added ability clear collection operator assignment
- Showing yard code as well with other information on the search result tile when searching existing batch quotes
- Showing curb weight in the summary screen for UK
- Always showing highest priced draft quote from bundle on the search result tile when searching existing batch quotes

## 3.37.0

- Fix search result filtering logic to add non-draft quote of a bundle to list and if not found add the first draft quote

## 3.36.0

- Update selectOperationMode to not allow fallthrough of existing operation type if set to ignore
- Refactor selectOperationMode
- Update vehicle quote tile to use widget.quote.vehicleDescription

## 3.35.0

- Removed change yard dialog and change collection operator dialog and replaced with generic elv selection dialog

## 3.34.0

- Added new button in summary screen to abandon quote

## 3.33.0

- Add vehicle type flags to quick quotes add vehicle dialog and VRNScrap screen
- Update batchQuoteBundleOperations to take into account whther vehicles are selected or not

## 3.32.0

- Removed unnecessary package dependencies.

## 3.31.0

- Make the change collection dialog scrollable
- Update Bank Account and Bank Sort Code field to only accept digits in change collection
- Remove zero broder radius from address search dropdown

## 3.30.0

- Fix initial load issue for leadsource on quick quotes screen

## 3.29.0

- Update elv_core version in pubspec file

## 3.28.0

- Disable change yards and lead source fields on quick quote screen until associated data is loaded
- Move data loading in asyncOnInit in quick quote controller to wrapper methods
  - Unawait data that is not immediately needed
- Remove colors from titled_checkbox

## 3.27.0

- Create Retail Account Changes. Removed landline and middle name input and added yard code input.

## 3.26.0

- Show mobile number under account information in summary screen

## 3.25.0

- Require reason for all quick quote price adjustments in UK

## 3.24.0

- Updated emr_core_api package version.

## 3.23.0

- Remove additional styles and using standard ones

## 3.22.0

- Added option to allow overriding price if lead source is set and fixing bug got added with lead source change

## 3.21.0

- A functionality added for the UK is called VRN Scrap, which is the same as our existing VinScrap functionality.

## 3.20.0

- Fixed condition which check if a collected quote is confirmed for a LDECASH account

## 3.19.0

- Remove unnecessary spacing from vehicle quote tile

## 3.18.0

- Update advanced search collection date search text and batch quote tile text

## 3.17.0

- Add Lead Source to quick quotes and exisitng quote search
- Update advanced search dialog

## 3.16.0

- Only showing and saving Collection Date and not Collection Time for collected quotes

## 3.15.0

- Updated to not set default yard if in the Uk territory
- Moved post code field next to yardcode field in quickquotes
- Add check box to price selector dropdown

## 3.14.0

- Using emr_core_api instead of emr_one_crm_data to search account

## 3.13.0

- Updated `image_picker_for_web` to 3.0.6
- Updated `emr_one_core` to 4.32.0

## 3.12.0

- Fixed issue where UK postcode was added to US quotes by switching Vin Scrap to use multi pricing

## 3.11.0

- Updated emr_crm_data package to version 3.8.0 to fix account search.

## 3.10.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 3.9.0

- Updated elv core package version to v2.4.0

## 3.8.0

- Fixed Account Search if no data is returned, then loader keeps on loading

## 3.7.0

- Fixed bug which is not selecting post code of selected account when changed on a draft quote

## 3.6.0

- Fixed display bug which is not setting party details if available when loading draft quote
- Removed check with disables post code when pricing is return back
- Set post code defined on the party when selected

## 3.5.0

- Rearranged collection detail data on summary screen

## 3.4.0

- Replaced account search CAM SQL in elv quote from search accounts CAM Raven

## 3.3.1

- Fixed wording on Breadcrumbs after recent GoRouter update

## 3.3.0

- Not passing post code to pricing call if yard is changed after inital pricing response is received

## 3.2.1

- Fixed bug which was not allowing collection date going backwards to pick a date

## 3.2.0

- Updated dependencies.

## 3.1.0

- Fixed bug when displaying manual vehicle list and passing in territory code for manual vehicle api calls

## 3.0.0

- Updated to work with Flutter 3.24.x

## 2.3.0

- Adding back changes temporarily added to hide collection details

## 2.2.0

- Added Create Account back
- Live Stable Branch that hides features not ready for live.

## 2.1.4

- Removed create account button and temporarily hide collection details section

## 2.1.3

- Added character limit check for Bank Sort Code and Account Number

## 2.1.2

- Added check to not confirm a collected quote for an LDECASH account

## 2.1.1

- Added search filters to search based on collection status

## 2.1.0

- Hiding Address from emr_sharedTypes

## 2.0.13

- Added ability to save and edit collection operator assingment in quick quote and summary screen

## 2.0.12

- Task to pass territory code in CAM account search call to filter the accounts by territory

## 2.0.11

- Bug fix to show VRM when territory is UK in existing search screen

## 2.0.10

- Bug fixes for changing Kerb Weight

## 2.0.9

- Only show VIN/VRN if the count is 1 else show count in quote search results

## 2.0.8

- Fixed bug that was adding a trailing space to the Vehicle Look Up.
- Auto Scroll to the bottom when adding vehicles to a batch quote or creating a batch quote.
- Moved action buttons to the bottom (none scrollable) portion of the screen.

## 2.0.7

- Removed check to use LDECASH account number to determine screen size

## 2.0.6

- Removed unnecessary api call to save Account details while completing quote

## 2.0.5

- Increased ELV Core package to the latest version

## 2.0.4

- Fixing deleted vehicles coming back onto quotes when changing quote info

## 2.0.3

- Showing created by user name for Quick Quotes when showing quotes in Existing Quote Search screen.

## 2.0.2

- Showing trim and fuel type as well when displaying vehicle details

## 2.0.1

- Bulk Pricing fixes for collected quotes passing in postcodes correctly.

## 2.0.0

- Bulk Pricing Changes

## 0.0.1

- TODO: Describe initial release.
