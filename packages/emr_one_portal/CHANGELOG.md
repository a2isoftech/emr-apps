## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.66.0

- Corrected schema typos: `WateProducer` → `WasteProducer`, `WasterTransporter` → `WasteTransporter`.

## 2.65.0

- Updated Dependencies.

## 2.64.0

- Updated flutter to 3.38.3 including required package changes

## 2.63.0

- Radio Api Redesign changes

## 2.62.0

- Fix to load yards from portal api and fallback on default yards

## 2.61.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.60.0

- Using latest graphql schema and changing paymentMethod to financialPaymentMethod

## 2.59.0

- Adding qr code login for portal customers

## 2.58.0

- Changes to fix sign in problems in portal

## 2.57.0

- Using new emr_account_registration package for signup

## 2.56.0

- Updated to Flutter 3.32.5

## 2.55.0

    - Adding image compression on uploading proof of identity and address

## 2.54.0

    - Migrated logging in emr_one_portal from AIHelper to new EmrLogger.
    
## 2.53.0

    - Fixed UI issues in signup flow and address update process.
    
## 2.52.0

    - Merging PDF issue changes into develop.

## 2.51.0

    - Resolved invoice submission issue by updating the company query parameter type.

## 2.50.0

    - Fixed auto-complete to correctly suggest entries based on user input.

## 2.49.0

    - Fixed an issue with updating the preferred site.

## 2.48.0

    - Removed unnecessary filter reset on refresh in the Pricelist page

## 2.47.0

    - Fixed Yard loading issue.
    - Schema update.

## 2.46.0

    - Fixed user info display issue on the top right corner.

## 2.45.0
    
    - Fixed issue where roles were not loading correctly.
    - Updated the "Why do we need proof of identity" message. 

## 2.44.0

    - Added Company Name column to the Statement page.
    - Added filter to search invoices by Company Name.
    
## 2.43.0
    
    - Configuration based Menu items display.

## 2.42.0

    - Text changes on US Self-Service Portal Proof of Identity Page.

## 2.41.0

    - Updated Pricelist page to get the data from Pricing Service.
    - Enabled Sorting feature on Pricelist Page.

## 2.40.0

    - Merging hotfix changes into develop.

## 2.39.0

    - Merging hotfix changes into develop.

## 2.38.0

    - Merging hotfix changes into develop.

## 2.37.0

    - Merging hotfix changes into develop.

## 2.36.0

    - Merging hotfix changes into develop.

## 2.35.0

    - Merging hotfix changes into develop.

## 2.34.0

    - Merging hotfix changes into develop.

## 2.33.0

    - Merging hotfix changes into develop.

## 2.32.0

    - Merging hotfix changes into develop.

## 2.31.0

    - Fixing the way indutrsy groups/roles are used in portal.

## 2.30.0

    - Merging hotfix changes into develop.

## 2.29.0

    - Updated to Flutter 3.27.1 and fixed linter errors.
    
## 2.28.13

    - Fixed case sensitivity issue on PDF uploads.

## 2.28.12

    - Renamed Payment Details button.
    - Updated few texts.

## 2.28.11

    - Updated Bank Details visibility: US/EU business or supplier accounts can view it, UK retail users can view it, and    retail users outside the UK cannot.
    - Removed Proof of Address button for US users from Home Page.

## 2.28.10

    - Dynamic widget rendering logic using json driven configuration.
    - Removed Scan Ticket button for NL users.
    
## 2.28.9

    - Dutch Translation changes
    - Removed bank details from Account Details page for NON-UK users
    - NL users Contact US email updated.
    
## 2.28.8

    - Requesting POA for users with NON-UK driving licenses on the UK sign-up page.
    
## 2.28.7

    - Few more Dutch translations changes.
    - Fixed Contact Us Page loading issue.
    - Fixed an issue where UK yards were appearing in the dropdown for US accounts.

## 2.28.6

    - Address field changes.

## 2.28.5

    - Added Dutch translations for few more texts.
    - Updated Prefix field label texts

## 2.28.4

    - Allowed Mobile number text box input and displayed an error message on "Login" if the Country is not selected, instead of disabling the text box.
    
## 2.28.3

    - Added Dutch translations for few more texts.
    - Mobile Number validation changed for UK and US users.

## 2.28.2

    - Ensure scheduled payments always have future release dates.

## 2.28.1

    - Fixed issue where 'Select Country' could be selected as a valid country.

## 2.28.0

    - Removed Default Country Prefix from Langing Page.
    - Fixed Contact Preference page loading issue.

## 2.27.0

    - Removed the "Pricelist" menu button.

## 2.26.0

    -Added funtionality to sort yards by distance, allowing users to select the nearest yards.

## 2.25.0

    - Allowing user to select the country when the location permissions is granted.

## 2.24.0

    - Restore submitting payment details for non NL accounts.
    
## 2.23.0

    - Merged all hotfixes into develop.
    
## 2.22.0

    - Added Dutch translations for few more texts.
    
## 2.21.7

    - Resolved an issue where users were unable to select their country.

## 2.21.6

    - Auto-Select user's country based on geo location.
    - Changes in Dutch translations.

## 2.21.5

    - Changes in Dutch translations.

## 2.21.4

    - Added Dutch translations for few more texts.
    - Display a green tick button if the address is a NL address. 

## 2.21.3

    - Added Dutch translations for few more texts.
    - Address icon bug fix.

## 2.21.2

    - Added Dutch translations for few more texts.
    - Changed Phone number validation logic to allow users to enter 9,10 or 11 digits.

## 2.21.1

    - Added Dutch translations for few more texts.
    - Fixed Phone number length issue.

## 2.21.0

    - Added Dutch translations for few more texts.

## 2.20.0

    - Fixed Trade2 Sync issue.

## 2.19.0

    - Added validation for Phone number and postcode fields for EU users.

## 2.18.0

    - Added Dutch translations for few more texts.

## 2.17.0

    - Dutch email translation changes.

## 2.16.0

    - Converted EU prospect accounts into retail accounts.
    - EU users now required to add an address and agree to terms and conditions before creating an account.

## 2.15.0

    - Updated Netherlands user phone number validation to accept 9 or 11 digits.

## 2.14.0

    - Fixed incorrect region message displayed on portal for Netherlands settings.

## 2.13.0

    - Added a widget to display market indication data, showing prices for the last two months.

## 2.12.0

    - Refactored marketing preference page.

## 2.11.0

    - Signup workflow redesigned for Netherlands users.
    - Added Dutch translations

## 2.10.0

    - Fixed portal for latest cam raven schema changes 

## 2.9.1

    - Fixed preference page loading issue. 

## 2.8.1

    - Fixed swipe action tab switch issue in Statement Page. 

## 2.8.0

    - Updated preference page to allow users to update their marketing preferences and default yard site. 

## 2.7.0

    - Updated Pricelist page to get the data using new queries.
    
## 2.6.0

-Merging hot fixes from Live: 
- If an error message about the Purchase order number occurs, it will be displayed to the user for easier troubleshooting
- Removed minimum size requirement in Transaction page to allow users to view transactions in mobile.
- Fixed discrepancies in scheduled payment calculations and ensures accurate data display.
- Call cam through account service interface in credit note controller.

## 2.5.0

- Added support to horizontal swipe gestures to change tabs in Statement page.

## 2.4.0

- Enhanced phone number validation to accept hyphens.

## 2.3.0

- Improvement: Implement a check to allow users to submit a change request after 24 hours. 

## 2.2.0

- Upgrade `GoRouter` to `14.3.0`

## 2.1.0

- Updated dependencies.

## 2.0.0

- Updated to work with Flutter 3.24.x

## 1.2.0

- Fixed discrepancies in scheduled payment calculations and ensures accurate data display.

## 1.1.12

- Call cam through account service interface in credit note controller.

## 1.1.11

- Modifying labels on account details page.

## 1.1.10

- Improvement: Redesigned Transaction page grids for improved usability.

## 1.1.9

-Improvement: Removed payment method mappings.

## 1.1.8

- Fixing country id string converted to country id enum which was breaking bank account validation (cam sql schema)

## 1.1.7

-Bug Fix: Added Missing Status columng for Statement Page.
-Bug Fix: The scheduled payment date calculation has been modified to show the next Thursday based on the Invoice's due date.

## 1.1.6

-Bug Fix: Addressed an issue where scheduled payment were not loading properly.

## 1.1.5

-Bug Fix: Fixed an issue where an empty search returned the first element instead of no results.

## 1.1.4

-Improvement: Redesigned Remittance and Statement page grids for improved usability.

## 1.1.3

- Changed "Payment Terms" to "Payment Method" on the Accounde details section.

## 1.1.2

- Fixing country id string converted to country id enum which was breaking bank account validation

## 1.1.1

- Fixing the run time errors introduced in last merged for get account details query in cam raven

## 1.1.0

- Making portal work side by side with cam raven and cam sql based on useCamSql flag in remote config

## 1.0.36

-Improvement: Invoice query updates and schema changes

## 1.0.35

-Improvement: Display a new note for invoice submissions indicating that it may take up to an hour for the invoice to appear on the portal.

## 1.0.34

-Bug Fix: Limiting users to select only one company from a set of 3.

## 1.0.33

- Bug Fix: Display country code for phone numbers

## 1.0.32

- Improvement: Translate payment terms displayed as 'BACS' to 'Bank Account'. 

## 1.0.31

- Bug Fix: Payment Terms are now locked and cannot be modified by users. 

## 1.0.30

- Bug Fix: Updated the contact email address for supplier accounts on the Contact Us page. 

## 1.0.29

- New Feature: Users with L accounts can now view their pricelist from the new pricelist screen. 

## 1.0.28

- Updated date calculation to allow users to submit invoice/credit note from past 60 days instead of 7 days. 

## 1.0.27

- Added specific error messages for invoice and credit note numbers exceeding 39 characters.

## 1.0.26

- Enhanced character limit - The UI now support up to 30 characters for invoice and credit note numbers. 

## 1.0.25

- replaced syncfusion signature pad with emrInkPad and made yard code selection mandatory 

## 1.0.24

- changes to hide mobile or email when not found on almost done screen, fixing the app insights instance for live and message for different name detected

## 1.0.18

- Renamed 'EmrCard' widget so as not to clash with same named widget in Core.

## 0.0.1

* TODO: Describe initial release.
