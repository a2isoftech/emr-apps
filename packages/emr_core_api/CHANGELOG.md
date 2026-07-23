## 3.0.6

- Added new field `Priority` for Primary manager.

## 3.0.5

- Added new mutations for Delete contact document, reorder account managers and update account details.
- Added query to get sic codes
- Updated query for account info to get audit informations of documents.

## 3.0.4

-  Fetch Latitude/Longitude from Address Details

## 3.0.3

- #58298 - Fetch only id and status from payment record status updated subscription

## 3.0.2

- Removed unused GraphQL query

## 3.0.1

- Fixed LocalDate (de)serialisation.

## 3.0.0

- Updated Flutter to 3.41.9

## 2.259.0

- #58298 Removed mutation `UpdatePaymentAuthorizationStatus` and Added Graphql Subcription `PaymentRecordStatusUpdated`.
- Updated extensions as per latest schema changes from CoreAPI.

## 2.258.0

- Update latest schema after Hot Chocolate v15 update and .net 10 upgrade

## 2.257.0

- Schema update to pay multi yard tickets.

## 2.256.0

- Added muatation to update catalytic converter when performaing an elv inspection

## 2.255.0

- Account Management Contact - Added `proofOfIdentification` and `proofOfAddress` to `CreateAccountContactInput` so create contact requests can satisfy the API schema validation when no documents are provided.

## 2.254.0

- Filter Tag Templates / Categories based on territoryIds

## 2.253.0

- Account Management Search - Added query to get facets.

## 2.252.0

- Updated emr_sharedtypes package version

## 2.251.0

- Added queries to get all stock take configurations and by yard code
- Added mutation to save stock take configuration and move weight line

## 2.250.0

- Added muatation to update battery status used when performaing an elv inspection

## 2.249.0

- Change Transport route localization to OnTrack #56868

## 2.248.0

- Added mutations to add, update, delete Non-Conforming parts when performing an elv inspection

## 2.247.0

- Improvements to the read-only ticket details screen and behind the scenes work to make it editable.

## 2.246.0

- Updated add and updated account contact mutation functions in account service to format errors properly.

## 2.245.0

- Task: [57779] -Updated bank account validation to return an explicit flag for invalid sort code and account number combinations, improving error handling and clarity.

## 2.244.0

- User Story: [57734], Task: [57401]
- Added `IsVinUnreadable` flag to the `UpdateVehicleDocumentInput`

## 2.243.0

- #57820 - Added extension for sync weighbridge tasks in ticket.

## 2.242.0

- User Story: [57401], Task: [57452]
- Added GraphQL queries and mutations to load an elv vehicle for inspection and to upload vehicle documents

## 2.241.0

- Ticket details screen (read-only version).

## 2.240.0

- Added graphql queries and mutations for Bill of Materials

## 2.239.0

- [57045] Localisation of Dropdown Fields Across Account Management Sections

## 2.238.0

- Handled null userInfo for manager email retrieval using safe null checks.

## 2.237.0

- £57295 : Updated queries and mutations for audit tickets screen.

## 2.236.0

- Added status field in `SyncWeighbridgeTicketTask` fragment

## 2.235.0

- Added more fields in `TicketDeductionFragment`

## 2.234.0

- [51821] Added new query to search vehicle for elv inspection via new elv quotation schema

## 2.233.0

- [56467]Mapped missing property visitFrequency, hasHazardousWasteConsignmentNote, isDigitalWalletActivated.
- [56457]Added extension method to localize enum values of `VatGroupType` and `PaymentMethod`

## 2.232.0

- [56158] Added queries for fetching list of contracts

## 2.231.0

- Added `mediaAssets` and `deletedMediaAssets` in stock take location
- Added mutations for add and delete stock take location media

## 2.230.0

- [56987] Updated the account service mapping logic to use contact?.key instead of null

## 2.229.0

- Added New Workflow rule for Accounts 'AccountWorkflow'.

## 2.228.0

- Included Managers details in Search Accounts query results.

## 2.227.0

- updated WeighbridgeProfile to include AutoHulkAffidavit

## 2.226.0

- Updated WeighbridgeProfile fragment to include userName and password properties in camera under scales
- Updated emr_sharedtypes version to 1.91.0

## 2.225.0

- Fix a runtime bug throwing error while adding new company.

## 2.224.0

- Introduced dedicated mutation for updating License Exemption in Account Management.

## 2.223.0

- Ticket Service - Updated queries and schema to pass paying yard instead of ticket's yard

## 2.222.0

- Fixed OCR model selection for UK Driving Licence in POA flow to ensure correct OCR processing.

## 2.221.0

- Fix schema failing for getaccountbyId for Account Management

## 2.220.0

- Account Management - Added handling for Unauthorized access in Get Account Info

## 2.219.0

- Account Management - Sort prepay cards to show active cards at the top of the list

## 2.218.0

- Account Management - Replace card implementation

## 2.217.0

- Ticket Service - Added created and modified data for media assets.

## 2.216.0

- Account Management - Validate Bank Account Number and Sort Code

## 2.215.0

- Account Product EWC - Added seperate mutations for Add,Edit and delete

## 2.214.1

- Fixed `UpdateCompany` mutations's input.

## 2.214.0

- Account Management - New mutation added to add new location in existing address `add_account_location_mutation`.
- Account Management - Update `account_search` query to get the `contact`.

## 2.213.0

- Reference Data Service - updates surrounding Companies Mutations and Queries to support Cheque Signatures.

## 2.212.0

- Reference Data Service - updates surrounding `CompanyBankAccount` model changes.

## 2.211.0

- Account Management - Handled the case of business detail or its any sub node like CreditTerm, CreditControl have null value for account ex Retail account then also account detail should load properly.

## 2.210.0

- Cashier - Added `active` field in PaymentApproval query.

## 2.209.0

- Account Management - Added schema for updating headoffice details section

## 2.208.0

- Data Management - updated schema and fragment for yard with adding new property `primaryCashierPaymentSystem`

## 2.207.0

- Account management - Added mutation and queries for add/delete account team access.
- Account management - Added mutation and queries for team

## 2.206.0

- Reference Data Service - added `getYardById`

## 2.205.0

- Ticket Service - Updated schema and queries for payment record.

## 2.204.0

- Account management - Added schema for update main detail mutation

## 2.203.0

- Account Management - Get Account Reference Data

## 2.202.0

- SiteOps:Loadout query/mutations changes to include multiple seal numbers with images and other images.
- SiteOps:Ticket query changes to include more fields.

## 2.201.0

- Account Management - Fetch party bank account missing columns

## 2.200.0

- Account Management - Added schema for new add/update/delete mutations to manage account prepay cards and bank accounts

## 2.199.0

- Account Management - Added mutations and respective methods in account service for add/update/delete loyalty cards.

## 2.198.0

- Account Management - Added mutations and respective methods in account service for add/update/delete Account Managers.

## 2.197.0

- Added RemittanceDetails in Ticket Fragment and SearchPaymentTickets query

## 2.196.0

- Updated graphql schema and renamed roundingAdjustment to roundingAdjustmentOnFee in PaymentDeduction

## 2.195.0

- Account Management - Update contact identification fields in GraphQL schema to align with latest changes and prevent schema mismatch

## 2.194.0

- Account Management - Update contact - Added option to upload proof of identity and proof of address

## 2.193.0

- Added Addresses input for adding new addresses to account locations

## 2.192.0

- Changed fragment `DeductionFields` on `Deduction` to `LineDeduction`
- Added `haulageCharges` and `deduction` in `Ticket`
- Update graphql schema
- Updated formatting in auto generated \*.graphql.dart files

## 2.191.0

- Account Management - Added mutations and respective methods in account service for add/update/delete contacts.

## 2.190.0

- Reference Data & Cheque Books additions
- Mutations - AddChequeBook, AllocateChequeNumber
- Queries - SearchChequeBooks

## 2.189.0

- Added `MaxUpperLimit` to the payment methods of Yard.

## 2.188.0

- Added schema for new add/update/delete mutations to manage account locations

## 2.187.0

- Updated graphql to include driving licence related fields in valdiation flags.

## 2.186.0

- Updated graphql_codegen and analyzer packages to support dart 3.10+

## 2.185.0

- Updated flutter to 3.38.3 including required package changes

## 2.184.0

- Updated graphql schema to read `roundingAdjustment` in `PaymentDeduction` model

## 2.183.0

- Added wildcard query search for edit ticket accounts query.
- Removed unused property from payment record queries.

## 2.182.0

- added InTrade property in `SyncWeighBridgeTicketTask` fragment

## 2.181.0

- Updated schema to include ticket's prof price.

## 2.180.0

- Added ticket and ticket lines in ValidateTicketsWithPaymentMethod query.

## 2.179.0

- Updated Graphql schema
- Added PatchPaymentRecordStatus mutation
- Rename SavePaymentRecord to CreatePaymentRecord
- Added advanceOverrides in ValidateTicketsWithPaymentMethod query

## 2.178.0

- Added 'haulageRate' to account pricing query to support correct Haulage Charge display.

## 2.177.0

- Added new method `searchAccountsWithFacets` in account service to search all accounts with facets.

## 2.176.0

- Added `TradePurcahseInvoiceId` to payment records.
- Added `MaxUpperLimit` To all payment methods.

## 2.175.0

- Added `ModifyWorkflowYardPaymentRule` mutation to manage Workflow Yard Payment Rule.

## 2.174.0

- Removed `isManuallyAdjusted` boolean flag and added enum for `CaptureMethod` for saving capture method of stock take weight

## 2.173.0

- Removal of no longer needed Permission Management Mutations & Queries.

## 2.172.0

- Updated API to include the new parameter for collected tags.

## 2.171.0

- Updated the weighbrdige profile fragment and graphql schemas to add known tare configurations in Weighbridge Profile.

## 2.170.0

- Added fields in manual update stock take mutation

## 2.169.0

- Added new fragment for Stocktake search with minimal projection.

## 2.168.0

- Added isManuallyAdjusted in StocktakeWeight.

## 2.167.0

- added query for getting paymentPostingTasks for PaymentRecord
- added syncWeighbridgeTicketTasks

## 2.166.0

- add CashDeductions in PaymentRecord and its dependent queries and mutations

## 2.165.0

- Added conditional businessDetail fetching to AccountSearchSimple query

## 2.164.0

- fixed printRemittance mutation parameter name

## 2.163.0

- Added `weightVariance` and `valueVariance` in stock take location
- Added `UpdateDeltaWeight` mutation

## 2.162.0

- Updated graphql schema
- Changed all stocktake mutations to support the new response model

## 2.161.0

- Removed `DeleteSnapshots` mutation

## 2.160.0

- Changes to set secore checkbox on going to payment details page

## 2.159.0

- Search scales for stocktake from all profiles.

## 2.158.0

- Fixed linter errors.

## 2.157.0

- Updated the query/mutations to add `ExpiryDate` in the `KnownTares` of the `WeighbridgeProfiles`.

## 2.156.0

- Updated input for manual stocktake mutation.

## 2.155.0

- Updated schema
- Added Company Bank Account Queries and Mutations.

## 2.154.0

- Updated schema to support ticket snapshot in payment record

## 2.153.0

- Updated schema
- Modified product queries to include filters

## 2.152.0

- Added method to fetch payment method names from referenceData.

## 2.151.0

- Add methods to load titles, roles and visit frequencies from reference data

## 2.150.0

- Updated schema to add `EnableManualTareWeight` to `WeighbridgePRofile`

## 2.149.0

- Updated schema to support edit ticket account.
- Updated account fragment to get location and addresses.

## 2.148.0

- Updated schema
- Added `submitted` in `get_stocktake` query

## 2.147.0

- Added primaryManagerOnly Flag for TradeR and AdminPricing while searching for accounts

## 2.146.0

- Added `weighedDateTime` in `LocationWeightInput` for manual update stock take

## 2.145.0

- Updated schema to support advance override and updated corresponding queries.

## 2.144.0

- Updated `StocktakeFields` fragment to include `takenWeights`

## 2.143.0

- #52859: Updated account fragment for secore agreement.

## 2.142.0

- Added `isDeleted` property to add_stocktake_weight mutation

## 2.141.0

- Added `GetWorkflowRulesMaxLevel` query to get the Max level of Approval per Workflow.
- Rename `LevelTitles` to `Configurations` wherever applicable to queries and mutations.

## 2.140.0

- Added 'agreeToSecoreTnc' flag to update account mutation.

## 2.139.0

- Added he `ShowWeightMode` field in the `WeighbridgeProfile`.

## 2.138.0

- Updated queries and mutations to support split payments.

## 2.137.0

- Added Split Payment Method to the Yard Fragment and Paymentmethods Fragment.

## 2.136.0

- Schama update and projection updated to include `DefaultUom` in stocktake.

## 2.135.0

- Account Service - Search Account with filter - Added new serach input for NameCodeQuery to apply free textv search for name and code only

## 2.134.0

- #52702: Update PaymentMethod schema on EMRApps (BankCode, CommisssionPercentage and SplitPayment)

## 2.133.0

- Account Service - Search Account with filter - added new L Account filter for TradeR

## 2.132.0

- Removed `ApproveStockTake` mutation
- Modified `CompleteStockTake` mutation

## 2.131.0

- Added Bank Code to Auto Cheque, Faster Payment, Overnight Faster Payment and Secore Prepaid payment method

## 2.130.0

- Removed unused mutation for `StocktakeApproval`.
- Updated stocktake queries and mutations for Workflow integeration.

## 2.129.0

- Add Queries for search usernames for payment authorisation approvers.
- Updated authentication with password mutation.

## 2.128.0

- Added alphabetical sorting on Account code and Name in account service searchAccountsByFilter.

## 2.127.0

- Added mutation to add and delete comment in stock take location and weight

## 2.126.0

- Add `AddWorkflowRuleLevelTitle` mutations to modify Workflow Level Titles.
- Add `GetWorkflowRuleLevelTitles` query to retrieve the Workflow titles.

## 2.125.0

- Updated SearchYards Method

## 2.124.0

- Add Queries and Mutations for Workflow Rules screen.

## 2.123.0

- Fetch `Account.Settings.IsDigitalWalletActivated`
- Added ContactPreferences

## 2.122.0

- Updated the schemas to add the `grossWeightDateTime` field in the `TicketLine`.

## 2.121.0

- update fragments related to ticket and account for consignment note generation related fields
- Added queries mutations for Consignment note generation

## 2.120.0

- Weighbridge Configurations - Added queries and mutations.

## 2.119.0

- Rename `AssignedTo` to `ConductedBy` in Stock Take
- Added `UpdateStockTakeLocationStatus` mutation

## 2.118.0

- Update Query/Mutations to add `EnableWeighbridgePay` and `HwcnLevel` fields in the `WeighbridgeProfile`.

## 2.117.0

- Added `get_product_families` query

## 2.116.0

- Added unpay and advance validation queries and mutations.

## 2.115.0

- Updated schema for mutation to print remittance

## 2.114.0

- Added new mutation for updating basic details of stocktake

## 2.113.0

- Updated GraphQL schema for the `IsRoutineCheck` property

## 2.112.0

- Ticket Service - Added queries to validate tickets and advances against payment method.

## 2.111.0

- Updated send email schema - renamed to accountId

## 2.110.0

- Ticket Service - Update payment record fragment with latest changes.

## 2.109.0

- add payment_record_by_ticketid query

## 2.108.0

- Added Devices Queries and Mutations
- Added Save , Update and Create Devices functionality.

## 2.107.0

- Account Service - Used @include in GetAccountInfo query for linkedPublications so the UI only fetches it when needed.

## 2.106.0

- Account Service - Added contact id in query to get account model

## 2.105.0

- Removed count and audited from stock take location
- Added product family and snapshot delta weight in stock take
- Added mutation for approve and reject stock take

## 2.104.0

- Admin pricing - Send Email Price List - Fixed issue primary manager name mapping in Send Email input.

## 2.103.0

- Updated schema for send email

## 2.102.0

- Updated the graphql schema and WeighbridgeProfile fragment to add `VehicleDetailsRequired ` field in Weighbridge Profiles.

## 2.101.0

- Removed un-used filter query.

## 2.100.0

- Updated payable yard query to get yard payment methods.
- Added account fields that is required for payment.

## 2.99.0

- Added the status filter in the Advances search query.

## 2.98.0

- Added mutation for send email
- Updated query for search account to get contact first name, last name and account primary manager name.
- Added new functionn in pricing service to send email.

## 2.97.0

- Added query to get payment validation result for tickets.

## 2.96.0

- Added updateTicketLines mutation
- update ticketline fragment
- update schema
- Updated Deduction Fragment to get weight and value
- Added query `GetAccountByAccountNumber`
- Added query `GetPrice`

## 2.95.0

- Updated cashier search filters to search by ids.

## 2.94.0

- Updated advance mutation to get all yard's payment methods.

## 2.93.0

- Updated `searchPaymentTickets` query to get payment validation status for each ticket.
- Added the Advances related queries/mutations.

## 2.92.0

- Added active parameter to roles queries

## 2.91.0

- Updated schema to wrap response of payment mutations into ApiResponse.

## 2.90.0

- Updated territories query to allow result limiting. Changed amount returned to 50

## 2.89.0

- Changes to allow calling signup queries and mutations for internal users

## 2.88.0

- Admin Pricing - Create tag - removed order by from tag templates, it default order by category.

## 2.87.0

- Added account sub-type filter in account search query to support "Sale" account type

## 2.86.0

- Changes to simplify API URLs.

## 2.85.0

- Added order by option for account search
- Added order by option for all products
- Added order by for tag templates

## 2.84.0

- Included Create Yard Payment Rule

## 2.83.0

- Filter changes for sync ticket tasks
- Added new query `searchSyncTicketTasksSuggestions`

## 2.82.0

- Added territoryCode parameter to search query

## 2.81.0

- Removed Any from options of locations while adding collected tag

## 2.80.0

- Updated account search query to return pagination information

## 2.79.0

- Added yard codes filter on yard get all yards query

## 2.78.0

- Updated Tag Model.

## 2.77.0

- Added mutation `AddStocktakeComment` and `ManualUpdateStockTake`

## 2.76.0

- #51116: Remove reference of CashierUserId from PaymentRecord

## 2.75.0

- Updated the accountName Schema

## 2.74.0

- Fixed the total count issue in admin pricing pagination

## 2.73.0

- Added account Name in account prices list

## 2.72.0

- Fixed the yards search issue.

## 2.71.0

- Added mutation `AddStocktakeWeight` and updated schema
- Added `getWeighbridgeProfiles` method to get scales from weigh bridge profiles

## 2.70.0

- Removed CFCCertificationRequired and CFCCertificationRequiredProductIds

## 2.69.0

- Set showtoCustomer as true when fullycharged is selected

## 2.68.0

- Updated the graphql Schema and query for quote search screen.

## 2.67.0

- Expiration filter fix to exlude any lines that do not have tags in them

## 2.66.0

- Moved graphql files of `emr_one_yard_app`.

## 2.65.0

- Updated the graphql Schemas and Yard fragment for new Field `EnforceELVInspectionForLeadSource`.

## 2.64.0

- Updated schema to have PaymentRecord use `PaymentMethod` enum instead of `PaymentMode` enum.

## 2.63.0

- Update GraphQL schema and fragments related to `SyncWeighbridgeTicketTask`

## 2.62.0

- Added new payment methods for Yard - AutoChequeWithEncashmentAtmPaymentMethod, AutoChequeWithEncashmentCashPaymentMethod, DigitalWalletWithAtmPaymentMethod, DigitalWalletWithCashPaymentMethod to the Yard.

## 2.61.0

- Updated schema and added queries for searching Elv Batch quotes with facets

## 2.60.0

- Added accountLocationkeys in Tag mapper extension

## 2.59.0

- Pricing Rule Screen changes added.

## 2.58.0

- Updated the graphql Schemas and Yard fragment for new Fields. Added mapper for payment method and payment methods

## 2.57.0

- Fetching last visited on column on search accounts

## 2.56.0

- Adding expireOnNextPublicationIssue on creating a new tag

## 2.55.0

- Admin Pricing : Added isCollected flag manadatory while creating tag.

# 2.54.0

- Replaced ai helper with emr logger.

## 2.53.0

- Modified SearchContractOrderBookName query to get unique order book name

## 2.52.0

- Mapped all mandatory fields in UOM in Ticket Line Fragment.

## 2.51.0

- Updated the graphql Schemas and WeighbridgeProfile fragment for new Fields.

## 2.50.0

- Added the Query/Mutations and service changes for Diagnostics Screen.

## 2.49.0

- Collected Tag Mappings and Fragments.

## 2.48.0

- Renaming payment method in payment term to financial payment method and adding generic query in reference data service

## 2.47.1

- Fixed the tickets search sorting fetch issue.

## 2.47.0

- Schema updated for Stocktake changes.
- Mutations and queries for stocktake search, create, delete and update.

## 2.46.0

- Updated the `searchTickets` query to use the new SortingType to fix sorting issue.

## 2.45.0

- updated payment_approval fragment, added payment_record fragment
- added paymentRecordById query

## 2.44.0

- Added locations field while fetching the account prices

## 2.43.0

- Admin Pricing - default filter by logged in user territorries.

## 2.42.0

- Added the Query/Mutations for the `WeighbridgeGroups`

## 2.41.0

- Calling separate queries for filter suggestions

## 2.40.0

- Added required graphql queries,mutations and fragments for EmrOneCashierSearch package

## 2.39.0

- Added GraphQL query for Contracts

## 2.38.0

- Admin Pricing : Added account id as param in Update tag end date.

## 2.37.0

- Added new fields in the weighbridges profiles queries.

## 2.36.0

- Added Account Type field to search account query
- Added parameter to pass in account type to the search account query

## 2.35.0

- Changes to query and update product EWC codes for an account

## 2.34.0

- Admin Pricing : Added pagination and query for loading all tag template while creating new tag

## 2.33.0

- Admin pricing - Getting tag delta calculated from back end with proper date filters rather than calculating from flutter.

## 2.32.0

- Admin Pricing: Included Tags with End Date as Today to be shown

## 2.31.0

- Updated Account Search query to include contactPreferences and contactTypes fields.

## 2.30.0

- updated schema for `TicketSearchPropertyType` updated for Contract_Number filter

## 2.29.0

- Updated GraphQL schema: `SearchTechematCats` API now includes support for `TechemetPriceCountSheetDetailId` filtering and ordering.

## 2.28.0

- Moved Created & Modified models into emr_sharedtypes project
- Updated emr_sharedtypes project version to `1.38.0`
- Updated the references in User and Company related models, query and mutations

## 2.27.0

- Added GraphQL mutations to remove tags from prices.

## 2.26.0

- Updated Account Price query to include CreatedBy and CreatedDate fields.

## 2.25.0

- added `ContractOrderBookTypeName` in `SearchEdgeTicketsQuery`

## 2.24.0

- Updated `SearchEdgeTickets` query to get contract details.

## 2.23.0

- updated `WeighbridgeProfileFragment` for `enablePublicWeigh`
- update `EwcControlFragment` for `enablePartyWasteStream`
- updated emr_sharedtypes version to 1.37.0

## 2.22.0

- Added the `searchWeighbridgeGroups` query for weighbridge groups field.

## 2.21.0

- Updated the query pattern of location search.

## 2.20.0

- updated `TicketStatus` enum under `Ticket` model with latest values

## 2.19.0

- Allowed the Arising classes updated the search mechanism

## 2.18.0

- Added search_suggestions query in inventory > tickets to search for different filter values

## 2.17.0

- Added query to get ticket galleries for current logged - in user.

## 2.16.0

- Added the Query/Mutations for allowed products in weighbridge profiles.

## 2.15.0

- Added the Query/Mutations for EWC Controls in Weighbridge Profiles.

## 2.14.0

- Added Active flag in CreateCompany & UpdateCompany mutations.

## 2.13.0

- Tickets : Added queries and mutations to support ticket gallery.

## 2.12.0

- Added the ticket print template fetch query

## 2.11.0

- Cleanup Reusable Steels/Beams, Projects

## 2.10.0

- Sending null tags in LinkAccountsToPublications

## 2.9.0

- Added product family filter for all products

## 2.8.0

- Changes to set allowed products and yards for account publication

## 2.7.0

- Admin Prcing: Included product name column in admin pricing grid

## 2.6.0

- Corrected query filtering logic and made product family search case-insensitive

## 2.5.0

- Updated tag template api to not have default rate and tag api to not have default rate reason

## 2.4.0

- Added the weighbridge profile new properties in the fragment and fetch inventory locations

## 2.3.0

- Excluding expired tags for an account

## 2.2.0

- Added fragments, queries and mutations for payment approvals

## 2.1.0

- Added fragments, queries and mutations for ELV Dismantle

## 2.0.0

- Migrated fragments, queries and mutations of emr_one_invapi to emr_core_api

## 1.18.0

- Updated Weighbridge Profile queries to get the EnablePricingServices and EnableCotnainerTicket fiels.
- Updated yard query to fetch the company

## 1.17.0

- Updated price tagging functions to return api errors also

## 1.16.0

- Retrieving and saving fields missing for account (from retail account management screen)

## 1.15.0

- Added Territory Queries & Mutations

## 1.14.0

- Updated pricing service to handle create tag errors properly

## 1.13.0

- Fix a bug to Save Company without changes

## 1.12.0

- Added the weighbridge profiles screen related services and query/mutations.

## 1.11.0

- Added Company Queries & Mutations

## 1.10.0

- Admin Pricing: Search by Text implementation

## 1.9.0

- Added new search account by managers function in account service to filter account by account managers names.

## 1.8.0

- using account code instead of id, as route param for tradeR

## 1.7.0

- Admin Pricing: Added mutation for tag category
- Admin Pricing: Updated mutation for create tag template to have reason as string
- Admin Pricing: Updated mutation for create tag to add OverrideDefaultRateReason

## 1.6.0

- Admin Pricing: Added Tag Reasons filter and facets

## 1.5.1

- Calling update account publications mutation without effective dates.

## 1.5.0

- Added pricing service queries and mutations.

## 1.4.0

- Added Account service queries and mutations.

## 1.3.0

- Added System Role and Job Role Services with mutation and queries.

## 1.2.0

- Removed User fields

## 1.1.0

- Updated the User Permissions screen fetch permissions from RavenDB.

## 1.0.1

- Added the wild character to the query before invoking GetUsers, GetTerritories, GetYards, GetDepots.

## 1.0.0

- Initial version.
