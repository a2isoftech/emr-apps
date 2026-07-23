## 3.3.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.2.1
- #58298 - Fetch only id and status from payment record status updated subscription

## 3.2.0
- #57699: Added new `includeEdgePaymentMethods` setting to control what payment methods show up at edge, as existing `runAtEdge` config setting cannot be changed to reflect actual edge environment status at this time.

## 3.1.0

- #57699: Do not show Edge payment methods on cloud EMR apps.

## 3.0.1

- #58763: Hide ticket lookup button on retail payment for 3.25.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.157.0

- #58298 - Enable automatic processing of payment approvals using graphql subscriptions.
- Updated DeliveryMethod as per latest update from CoreAPI.

# 2.156.0

- Update DeliveryMethod and AccountTypeEnum

## 2.155.0

- Updated emr_core_api package to v2.257.0

## 2.154.0

- #57841: Adding support to multi yard payment at edge

## 2.153.0

- permissions/tickets/details/view is now needed to preview or go to the ticket details screen.

## 2.152.0

- Updated Retail Payments to make use of EmrFilterDropdown.

## 2.151.0

- #57911 - Fixed multi-ticket selection issue for partial payment advances.
- Enabled advance creation for multiple tickets via Cashier screen.
- Fixed currency reset when changing advance type on Edit Advance screen.

## 2.150.0

- #57820 - Added support to display multiple sync tasks for ticket.

## 2.149.0

- #57663: Show Appropriate Error on Saving Consignment note when it fails
- Log the actual error on saving consignment note

## 2.148.0

- #57632: Retail payment - Removing dirt on line was ignored.

## 2.147.0

- Ticket details screen (read-only version).

## 2.146.0

- Corrected label in timeline view

## 2.145.0

- Updating emr_account_registration to 1.34.0

## 2.144.0

- Updated audit ticket screen UI to show timeline view.

# 2.143.0

- Standardize Secore card ID formatting (UI without space, backend spaced)

## 2.142.0

- updated media service upload method being used in consignment note with passing x-yard-code
- reset the qr code after sufficient fetch calls
- show something went wrong when uploading signature on media service fails

## 2.141.0

- #57258: EmrApps to make dirt editable in ticket

# 2.140.0

- Ensure ticket gallery doesn't display duplicate images.

## 2.139.1

- updated consignment note generation main screen for final submit success message.

# 2.139.0

- Updating emr_account_registration to 1.31.0.

# 2.138.0

- Updating emr_account_registration to 1.29.0.

# 2.137.0

- Changed filter to support multiple yards.
- Picked paying yard user preference instead of ticket.
- Added reupload button on View identities screen.
- Renamed 'Utility bill' label to 'Proof of address' in View identities popup.

## 2.136.0

- Use `emrAppsCloudBase` endpoint for generating qrcode in consignment note.

## 2.135.0

- Using emr_sharedtypes without customer facing settings in weighbridge profile.

## 2.134.0

- Updating emr_account_registration to 1.24.1.

## 2.133.0

- Updated all permissions from account-payable to accounts-payable.

## 2.132.0

- #56040 - Ticket line details popup scroll fix.

## 2.131.0

- #56036: Add bank name under payment method for FasterPay and OvernightBankTransfer

## 2.130.0

- Added media gallery in cashier screen to show gross and tare scale images.

## 2.129.0

- Handled error on payment in Payment Authorization page.

## 2.128.0

- Handled reject payment flow in Payment Authorization page.

## 2.127.0

- Show cancel button if payment is approved and not paid yet

## 2.126.0

- Updating emr_account_registration to 1.24.0.

## 2.125.0

- Added new permissions for cashier and advance payment.
- Added rounding adjustment section for handling fees in advance basket

## 2.124.0

- Update payment info dialog to include more payment record fields/

## 2.123.0

- Suppressed deprecation warning for accountById.

## 2.122.0

- Removed payment initiated status from filter in Ticket Audit screen.

## 2.121.0

- Updating emr_account_registration to 1.20.0.

## 2.120.0

- Updated user identities popup flow.
- Fixed remove ticket from basket flow.

## 2.119.0

- #54521: Retail Payment Lines price Format issue.

## 2.118.0

- #54016: Use RemittanceDetails from Ticket to show RemittancePdf in RetailPayment screen

## 2.117.0

- Renamed roundingAdjustment to roundingAdjustmentOnFee in PaymentDeduction

## 2.116.0

- #54323: Implemented case-insensitive comparison for payment method names.
- #54323: Resolved an issue where the system did not navigate to the cashier list page after a successful payment from the basket page.
- #54323: Corrected rounding behavior when editing a ticket line.

## 2.115.0

- Check for payment amount less than or equal to 0

## 2.114.0

- Secore prepay card's last 4 digit can have preceding 0's

## 2.113.0

- Added `haulageCharge` and `deduction` in `Ticket` model
- Added `deductionCharges`, `payableBeforeCostAndDeduction`, `payableAfterCostAndDeduction` and `prorateDeductions` in `TicketLine` model
- Added rounding adjustment in ticket basket payment breakdown
- Reworked on edit ticket lines screen, Show price breakup as popup

## 2.112.0

- #54157: Show cheque number in Payment Details popup of paid tickets if its paid via AutoCheque

## 2.111.0

- Added validation flags for driving license.
- Added checks for other proof of address document types.

## 2.110.0

- Updated flutter to 3.38.3 including required package changes

## 2.109.0

- Updated new property names based on schema changes on `PaymentDeduction` model

## 2.108.0

- Added wildcard searchable query for account in edit screen.
- Fixed issue to get all arising points for selected account.

## 2.107.0

- Add Intrade property in sync-ticket screen under diagnostics under system admin
- Dont Allow sync when sync-ticket not in trade
- Filter and Date correction in Audit ticket screen under diagnostics

## 2.106.0

- Edited payment info widget to include ticket payment breakup.
- Get only current territory accounts in edit ticket popup.

## 2.105.0

- Updated Edit Ticket popup as follows
  - Disabled delete for existing lines
  - Line number calculation for new line in case of dirt.
- Fixed missing refresh after successful ticket edit
- Triggered authorization API call after field validation
- Updated emr_account_registration version to fix SecOre agreement upload issue.

## 2.104.0

- Updated emr_core_api to 2.179.0

## 2.103.0

- Moved creating of PaymentRecord to CoreApi
- Calling PatchPaymentRecordStatus to update status instead edidting whole document
- Passing SplitPaymentBreakup and AdvanceOverrides while creating payment record

## 2.102.0

- Added `TradePurcahseInvoiceId` to payment records.

## 2.101.0

- Add refresh button in appbar for retail payment screen and audit tickets screen

## 2.100.0

- Add audit-ticket screen under diagnostics under system-admin

## 2.99.0

- Add CashDeductions in Retail Payments Ui

## 2.98.0

- #53316 - Ui fixes for retails payments

## 2.97.0

- EmrDialog.modal button changes.

## 2.96.0

- Updated emr_core_api version to support ticket snapshot in payment record.
- Improved split ticket popup to take dynamoc height based on content.
- Fixed supressed warnings.

## 2.95.0

- Display payment method names from reference data.

## 2.94.0

- Added placeholder routes for Invoices,SelfBill and RegisterInvoice screens

## 2.93.0

- Added support for edit ticket account.

## 2.92.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.91.0

- #52946: Refresh button on Ticket payment approval screen is not working

## 2.90.0

- #52835 - Account payble/Advances UI fixes
  - ATMs - Remove device ID.
  - FasterPay - Bank account number: show last 4, hide 1st 4.
  - Secore Prepay Card: Display `Card Number:` before the value.

## 2.89.0

- Added support for editing flexible advance amount on payment basket.

## 2.88.0

- #52899 - Cashier search route fixed

## 2.87.0

- #52879: Changed media url for signature upload and fetch in consignment generator to EdgeMediaApiUrl to make it work on edge

## 2.86.0

- #52859: Added secore agreement for payments

## 2.85.0

- updated routing with new menu structure
- removed unused file ScreenAccess

## 2.84.0

- #52835 - Account payble/Advances UI fixes
  - yard filter can't be removed but changed, all to be removed
  - show full sort code and hide first 4 account and display last 4
  - change 'Total offset for this payment' to 'Total Advance Offset'
  - when you select manual check and write check number then also update under XXX-XXX in payment methods dropdown

## 2.83.0

- Shifted signature card in consignment generator screen to last

## 2.82.0

- Updated Consignment note generation ui to single vertical tab ui

## 2.81.0

- #52743 Added Sync button actions to Sync ticket tasks page grid

## 2.80.0

- Added support for split payments.
- Updated tickets card UI to show `View Details` link in paid tickets card instead of showing fees and advances.

## 2.79.0

- Payment terms currency code does not show correct value Fixed.

## 2.78.0

- #52702: Update PaymentMethod schema on EMRApps (BankCode, CommisssionPercentage and SplitPayment)

## 2.77.0

- Add carrier signature using QRCode for consignment form carrier signature
- Use focus node from EmrTextFormField for consignment note form

## 2.76.0

- Payment authorisation approval authentication changes

## 2.75.0

- Groundwork for new menu structure.

## 2.74.0

- Scan Consignment note ui

## 2.73.0

- Revised Ui For consignment note screens

## 2.72.0

- #52410: Pay now button is always diabled
- #52409: Basket view never loads up

## 2.71.0

- Handle the crash scenario with reversed advance transaction status
- Show the appropriate label and amount for paid and unpaid
- ATM details missing for ATM and Digital wallet with ATM payment methods

## 2.70.0

- Show if digital wallet is activated or need to activate
- Disable unpay for AutoChequeWithEncashment
- Use atmDeviceId from devices collection
- Get currencyName from locale
- Use DateTime.utc(1) instead of DateTime(1)
- Show success message on save advance only if not navigating to basket
- Right aligned amount column in grid
- Fixed crash scenario on saving and navigating to basket
- Changed text in breadcrumb
- Changed success/error popup
- Removed YardCode from title, added account name and replace company with companyCode
- Added advance offset in approval screen
- Allow repricing tickets only if in active state
- Expand advance if any in basket view

## 2.69.0

- Added the `grossWeightDateTime` field in the `TicketLine` model and used in reprice ticket.

## 2.68.0

- updated models related to account in ticket for consignment note fields
- added consignment note generation screens

## 2.67.0

- Added advance link in ticket basket.
- Edit Ticket line improvements
- Localization support for payments and advances.

## 2.66.0

- Added account creation flow from payments.

## 2.65.0

- Added advance payment validation on payment
- Integrated unpay UI

## 2.64.0

- Move printing of receipt / cheque / remittance from frontend to backend

## 2.63.0

- Removed status chip from ticket card.

## 2.62.0

- Added quick pay support in ticket card.
- Removed advance selection logic.
- Added flat fee calculation on basket page.
- Made common payment flow for tickets and advances.

## 2.61.0

- UI fixes for Retail payment and advances.

## 2.60.0

- print remittance when ticket paid with method other than atm
  and add remittance as extended property
- print remittance copy when tried to print it from paid ticket context menu
- show seperate context menu for paid tickets
- convert ticket status filter to be single selection

## 2.59.0

- Emr Query Layout hybrid support and fixes

## 2.58.0

- Added support to upload identity and address proof.

## 2.57.0

- Cashier search and advanced search filter improvements.

## 2.56.0

- Implemented advances basket.
- Corrected advance create/edit flow.

## 2.55.0

- Added the Status filter in the advances search listing, added the default payable yard filter.

## 2.54.0

- Integrated query to get validation result of each ticket based on payment type.
- Integrated Identites and Agreements popups to respect validation result.
- Modified flow for remove ticket from basket.

## 2.53.0

- on auto rate attempt to fetch rate from price list and if not found then dont let it set to auto
- when weight or rate is changed add in extended properties more detailed values

## 2.52.0

- cashier retail payments, advance payments and payment approvals native ui support fixes
- add fetch yard details for native retail payments ui for payment configuration

## 2.51.0

- updated edit ticket line to align with weighbridge
- added reprice ticket widget to update ticket lines in retail payment screen

## 2.50.0

- Updated cashier search filters to search by ids.

## 2.49.0

- Added colapsable tile in payment page.
- Revamped error popup of ticket validation.
- Added localization support for cashier search.

## 2.48.0

- Updated Advanced search filter to select id and name

## 2.47.0

- Updated `emr_core_api` to 2.93.0.
- Redesigned Retail Payment Card View.
- Replaced client side validations with payment validation flags.
- Added Generic Payment Basket page.
- Added Bottom Context Menu to implement Add to Basket flow.
- Added the new screen of the Advances with the advances listing and create new advances, edit existing advances.

## 2.46.0

- Updated to work with latest `EmrCard` changes in `emr_one_core: 4.88.0`

## 2.45.0

- Changes for payment mutations response.

## 2.44.0

- Changes to simplify API URLs.

## 2.43.0

- Added changes that were required for the changes implemented for sharedtypes and coreapi - Renamed yardName to namr in yard model,Renamed territoryCodes to code in territory model,Made List<depot> as nullable in Territory model, Renamed timezodeid to timeZoneid in Timezonemodel

## 2.42.0

- #51295 - Filter changes for sync ticket tasks
- Made the Yard search optional and multi-selected
- Search by Ticket Id instead of ticket number
- Re-try sync for queued tasks

## 2.41.0

- #51116: Remove reference of CashierUserId from PaymentRecord

## 2.40.0

- change tickets menu item name to AccountsPayable and put retail payments and ticket search under it
- create new CommercialSalesAdmin menu item and put ticket search under it
- put diagnostics under new item SystemAdmin
- shift permissions from TicketConstants to PermissionConstants

## 2.39.0

- show message and stacktrace for error type in sync ticket diagnostics
- show generatedXml for success type in sync ticket diagnostics

## 2.38.0

- Updated `emr_core_api` to 2.64.0.
- Refactord some code for better code readibility and navigation.

## 2.37.0

- Added new Flyout window to show EventLogs of a `SyncWeighbridgeTicketTask`

## 2.36.0

- Added new payment methods for Yard - AutoChequeWithEncashmentAtmPaymentMethod, AutoChequeWithEncashmentCashPaymentMethod, DigitalWalletWithAtmPaymentMethod, DigitalWalletWithCashPaymentMethod to the Yard.

## 2.35.0

- Added single selection for Yard from filters.
- Fixed issue where selecting the "YAUS" yard caused an error due to it not being included in the yard list.
- Clicking "OK" on the fixed price confirmation dialog now stops redirection to the main page.
- Adjusted the "No identity found" dialog to use a smaller, compact dialog instead of the full-screen dialog.

## 2.34.0

- Updated `emr_core_api` package to 2.53.0
- Updated SearchContractOrderBookName query to fetch unique order book name

## 2.33.0

- Updated `emr_core_api` package to 2.52.0.

## 2.32.0

- Added the new Sync Ticket Tasks Listing Screen.
- Added the new Locked Tickets Listing screen.

## 2.31.0

- Updated to Flutter 3.32.5

## 2.30.1

- Fixed the tickets search sorting fetch issue.

## 2.30.0

- Fixed the sorting issue in the Tickets Search Listing.

## 2.29.0

-#50358 - Increase Photo Id dialog height and cancel button issue on repriced button

## 2.28.0

- updated existing logging from `AIHelper` to `EmrLogger`

## 2.27.0

- #50167 - show yardErrorMessages based on errorCode sent from coreapi
- #50172 - show three chips in payment tickets priced, Agreement and Identity

## 2.26.0

- Calling separate queries for filter suggestions

## 2.25.0

remove the prefix same for all filters in retail payments and gallery search
when there is no default method then you show 'Please select'
remove the unsupported filters from retail payments
by default sort data by ticketno ascending if no sorting provided in retail payments
Move all the internal graphql in cashier search to Core api
update `emr_core_api` version `2.40.0`
hover over ticket no display raven ticket id in gallery search
adjust the width for account name and order book in gallery search
show contract when overflow in hover

## 2.24.3

- #50174: Issues in new T3 Ticket Gallery
  - #50175: UI not updating on filter
  - #50176: Filters suggestion from master

## 2.24.2

- bug fix for basket view when atm selected goes in infinite cycle of calls

## 2.24.1

- fix to show encashment always for atm payment method in basket view

## 2.24.0

- updated schema for `CalculateEncashmentValues` query updated and `defaultPaymentMethod` property in `Ticket`
- map all new paymentMethods
- added `getYardById` query
- fetch yard details on filter changes
- set defaultPaymentMode on filter change
- catch error in basket view if calculateEncashmentValues method throws exception
- remove `PaymentMode` enum and use one enum `PaymentMethod` only
- remove `PaymentDetails` widget and divided to seperate Details Widgets (`ApprovalPaymentDetails`,`BasketPaymentDetails`,`TicketPaymentDetails`)
- handle autoCheque and autoChequeWithEncashment paymentmethod enum scenarios

## 2.23.0

- Renamed `Party` and `Party Name` field to `Account No` and `Account Name` resp.
- Fixed issue where `Ticket Status` filter would spin indefinitely.
- Resolved issue with `Depot` filter not functioning correctly (now filtering on `Yard` as intended).
- Addressed inconsistency between facets and main query filtering logic – facets now apply the same filters as the main query.

## 2.22.0

- updated schema for `TicketSearchPropertyType` updated for Contract_Number filter
- updated `emr_core_api` version for latest schema to 2.30.0
- added `ContractNumbers` filter for ticket search in `edgeTicketSearch` screen
- code changes for `ContractNumber` filter in `cashierSearch` screen

## 2.21.0

- `contractOrderBookTypeName` filter for EdgeTicketSearch
- `contractOrderBookTypeName` as `orderBook` column in ticket search grid

## 2.20.0

- Added gallery creation optimization to new ticket gallery.
- Removed My Ticket Gallery menu.
- Stored title of ticket gallery in the form {Yard}-{tickets}.
- Added Contract number in search grid.

## 2.19.0

- Added media count in ticket search.
- Added media ID in format {ticket-number}-{image-number} in gallery UI.

## 2.18.0

- Exception handling (for pay now button in payment screen ,
  for cancel, pay and refresh button in payment approval screen
  ) using `ApiResponse` model in services and try catch blocks in code
- Show error dialog when any exception raised and show exception message
- Added a static `errorDialogWidget` method in `TicketsUtility`

## 2.17.0

- Added `readyToPayTicketStatus` constant to be used for TicketStatus filter and in view

## 2.16.0

- Added Party and Party Name filters in `ticket_filter_controller`
- Added searchSuggestions method in `edge_tickets_Service`
- Added `edge_tickets_Service` to `ticket_filter_controller`

## 2.15.0

- Added an option to show ticket galleries created by current logged in user.
- Added an popup to add ticket gallery title.

## 2.14.0

- update header text for ticket , remove inwards/outwards text
- remove approval number from approvals card
- remove Inwards/Outwards text from ticket card
- by default Retail account type filter should be applied and can not be removed
- by default inwards type ticket filter should be applied and can not be removed
- rename Cashier Search to Retail Payments where ever its displayed
- show status as 'Ready to pay' when it is active in ticket card
- rename Party to Name in Ticket card
- make dateOfBirth nullable under contacts in account to fix exception

## 2.13.0

- Added Ticket gallery support for new tickets schema.

## 2.12.0

- apply text styles from text theme
- add card details when prepaycard payment method is selected and validate with form
- validate payee name and cheque number when manual cheque payment method is selected
- change Elevated and Outlined Button to Filled Buttons for Oppra theme

## 2.11.0

- Updated video_player dependency from `^2.7.0` to `^2.9.5`.

## 2.10.0

- account type filter fixes
- payment records screen (show encashment in dialog and ticket text changes)
- weight as nullable in `Deductions` under `TicketLine`
- add `value` as `double?` property in `Deductions` under `TicketLine`
- Payment Method text changes

## 2.9.0

- paid ticket ui fixes
- cashier payment records expandable encashment ui
- add account type filter by default in cashier search

## 2.8.0

- Default Yard Filter should be added
- Amount Fixes
- For Automatic Cheque Dont show Manual Cheque Number
- Correct Amount in confirmation popup

## 2.7.1

- Enable encashment for payments by default

## 2.7.0

- Pay tickets with multiple modes and encashment as optional

## 2.6.0

- modify ui changes for tickets payments
- remove tabcontroller
- integrate payment approval mutation on refresh

## 2.5.0

- update schema from core api latest
- schema related changes and fixes

## 2.4.0

- Now depends on core 4.18.0 or better (GlobalSearch -> OmniSearch change)

## 2.3.0

- Updated to Flutter 3.27.1 and fixed linter errors.

## 2.2.0

- Green and red checks are replaced

## 2.1.0

- Updated dependencies.

## 2.0.1

- Global search fix
- Default status filter set

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.4.4

- ui to show payment receipt after quick pay
- cam service account details included in ticket search query
- schema updated from latest core api
- settings based on switching poa and photo id
- dialog consistency
- date format in cel
- font and style consistency
- line details from WB
- Fetch data from payment record for payed tickets. need api call.
- if less enachement fee is more, it should not be payable.
- Pay button on right side in checkout screen
- currency locale fix
- Less encashment fee is replaced with Encashment Fee

## 1.4.3

- POA and Photo Id is fetched from COntact type Payment.
- Active ticket lines are used to check price.
- Date filter adjusted to get correct data from api.

## 1.4.2

- Show PhotoId or no data (remove detail popup)
- Dont show checkout basket when already in basket view
- Remove all existing snackbars and show only recent one
- Change Reprice dialogue to default

## 1.4.1

- Ticket Status changes
- Comment Widget Added
- Mutation and Schema changes

## 1.4.0

- Ticket Card enhacements
- Mobile view enhancements

## 1.3.0

- Updated emr_one_core to 3.17.0
- Removed infinite card scroll on native.

## 1.2.1

- Bug fix when ticket number filter is removed after scan, from and to date filter should be applied.

## 1.2.0

- payment checkout screen implemented.
- cashier search screen is support for mobile view.

## 1.1.0

- Updated emr_one_core dependency to 3.9.0
- Modified cashier search screen to support changes to core Card View

## 1.0.7

- Ticket history release mode ui issue fix

## 1.0.6

- Ticket history added
- Access permissions added for ticket view history and view detail

## 0.0.1

- TODO: Describe initial release.
