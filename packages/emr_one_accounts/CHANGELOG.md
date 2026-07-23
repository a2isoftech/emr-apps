## 2.3.0

- Account Management Responsibility - Removed hiding of managers on the basis of User Id empty. 
- Account Management Responsibility - Kept default minimum priority for Primary manager as 0 instead of 1.
- Account Management Responsibility - Fixed issue of responsibility grid height not adjusting on add/remove.
- Account Management Contact - Fixed issue of Porta Access flag status is Updated but not refreshing immediately in UI.

## 2.2.0

- Account Contact Enhancements - Implemented sorting of contact on the basis of priority.
- Account Contact Enhancements - User should not able to delete main contact
- Account Contact Enhancements - There should be only 1 main and payment contact. If user try to add multiple then they can resolve inline conflict.
- Account Contact Enhancements - Added option to select multiple contact type for a contact and added separate section for contact type
- Account Contact Enhancements - Done design fixes
- Account Contact Enhancements - Fixed issue - Middle Name, Fax number and Bulk email was not saving.
- Account Identifications - Added a new section to add identification documents for any contact.
- Account Bank account enhancements - User should not able to edit account number and sort code.
- Account Bank account enhancements - Done design enhancement - Moved related fields together. Adding masking on account number and removed comments section.
- Account Responsibility section - Done design enhancements
- Account Responsibility section - Added Priority reordering by drag and drop.
- Account Responsibility section - Implemented logic manager with Priority 1 will be Primary manager.
- Account Responsibility section - While add/edit manager Priority will be auto calculated, user can not edit
- Account Responsibility section - Management Type for all manager will be default User.
- Account Main details, Head office and Handling waste insline to account managemnt screen. No separate popup required for edit.
- Account Management All section - On add/edit/delete it will now refresh specific section only.
- Account Management - Delete functionality improvement - fixed loader issue and done design improvements on Delete confirmation popup.

## 2.1.0

- Account Management: Address Selector widget implementation

## 2.0.0

- Updated Flutter to 3.41.9

## 1.58.0

- Account Management - Fix crash & grey box when clearing Country in Add/Edit Contact and Location popups.

## 1.57.0

- Account Management Location - Fixed an issue where country code was not being persisted to RavenDB during Location create/edit operations.
- Account Management Contact - Resolved validation issue (POI) prevented saving new contacts.
- Account Management Main Detail - Improved GBP currency handling to ensure correct display.

## 1.56.0

- Account Management Location,Contact,Bank Account - Fixed Country dropdown.
- Account Management Location - Add new address field UI fixed.
- Account Management Location - Removed Active field from UI.

## 1.55.0

- Account Management Search Screen - Fixed sorting and pagination.
- Account Management Search Screen - Added new filters for Account managers, status and type.
- Account Management Search Screen - Added facets.
- Account Management Search screen - Fixed data not populating for some columns like status, manager name etc.

## 1.54.0

- Account management - publications - Fixed design issues and done enhancement.
- Account Management - publications - Added feature to allow edit any added publication.
- Account Management - publications - Fixed issue duplicate publications can be added for account.
- Account Management - publications - After clearing publication selection not clearing out allowed parties and yards.

## 1.53.0

- Account Main Details - Fixed design issue for Annual WTN/SSA Required and WTN/SSA Expiry Date.

## 1.52.0

- Account Product EWC - UI enhancement and bug fixes

## 1.51.0

- Licence Exemption - UI enhancement and bug fixes

## 1.50.0
- Account Location – Removed restriction on Location Code and Site Permit/Exemption Number fields.
- Account Location – Implemented dependency for Site Permit/Exemption Number based on Site Permit Holder toggle (disabled when toggle is off).
- Account Location – Disabled Location Code field during edit of an existing location.
- Account Location – Improved UI design for “Add New Address” section.
- Account Location – Added success notification on successful update of location.

## 1.49.0
- Account Management - Fixed issue of add new contact.
- Account Management - Added Toastr to show error and success message for add/edit contact.
- Account Management - Fixed issue of its not showing all validation messages correctly.
- Account Management - Fixed issue of `Displaying wrong message when same contact type added again`

## 1.48.0

- Bank Account - Fixed the validation issue and UX enhancement

## 1.47.0

-Account: Fix Label and data display issue head office

## 1.46.0

- Accounts – Edit Contact: Fixed Validation inconsistencies for DOB field.

## 1.45.0

- Removed duplicate email and mobile validation in contact form to allow updates and reuse across contacts.

## 1.44.0

- Localisation of Dropdown Fields Across Account Management Sections

## 1.43.0

- Account Management- Displayed Supplier Industry Group and Trader Industry Group on the outer card of the Main Details section.
- Applied localisation to the dropdown values. 

## 1.42.0

- Account Management - Implemented Main Detail and License Exemption responsive UI

## 1.41.0

- Account Management - Implemented License Exemption section under Waste Transfer Details in Account Details.

## 1.40.0

- Account Management - Just removed account license exemption input while saving main details.

## 1.39.0

- Account Management - Add yard code input for replace prepay cards

## 1.38.0

- Account Management - Show Account Name on the grid for bank accounts

## 1.37.0

- Account Management - Added reorderlistview for publications and add allowed permissions for head office details

## 1.36.0

- Account Management - Show Validation Error Messages for each section inside modal popup

## 1.35.0

- Account Management - Migrate Main details, Contact, Location, Managers to EmrGrid and Responsive Card changes

## 1.34.0

- Account Management - Migrate for Product Ewc, Account Access & Loyalty cards emrquerylayoutgrid to EMRGrid and Responsive Card for popup

## 1.33.0

- Account Management - Migrate for Bank Accounts & prepay cards emrquerylayoutgrid to EMRGrid and Responsive Card for popup

## 1.32.0

- Account Management - Added unauthorized account access message

## 1.31.0

- Account Management - Update structure of Industry Groups in Reference Data by using Dictionary Format 

## 1.30.0

- Account Management - Fix for Greyed out credit control section 

## 1.29.0

- Account Management - Head Office Details Responsive UI

## 1.28.0

- Account Management - Replace card implementation

## 1.27.0

- Account Management - Validate Bank Account Number and Sort Code 

## 1.26.0

- Account Management - Product EWC - Enhance Account Product EWC UI with Add/Edit Popup

## 1.25.0

- Account Management - Fixed issue of Account not found after saving main details.
- Account Management - Fixed issue of adding new team access after deleting any existing team.

## 1.24.0

- Account Management - Alignment issue fix

## 1.23.0

- Account Management - HeadOffice details section - Fix for boolean null values

## 1.22.0

- Account Management - Bug fix switch rendering failing for null values

## 1.21.0

- Account Management - Updated Head Office details section to populate dropdowns from referencedata / schema enum types

## 1.20.0

- Account Management - Added new section to add Account team access.

## 1.19.0

- Account Management- Implemented EMR popup-based UI for adding and editing Publications.

## 1.18.0

- Account Management - Manage account main detail

## 1.17.0

- Account Management - Fixed an issue where primary managers were not displayed in the Responsibilities grid.
- Account Management - Fixed an intermittent validation error when adding managers that caused required input failures.

## 1.16.0

- Account Management - Added form fields and tabs for head office section

## 1.15.0

- Loyalty Card - Improve Delete Confirmation Popup UI and Validation Layout Stability

## 1.14.0

- Account Management - Show Bank Accounts section as grid

## 1.13.0

- Loyalty Card UI Feedback Issue Fixed

## 1.12.0

- Account Management - Added some route Register, Replay Registration, Attach documents, Generate QR Code, Scan QR code back which were removed earlier as we have removed emr_one_retail_accounts package.

## 1.11.0

- Loyalty Card Modal Retains Previous State When Opening a Different Record.

## 1.10.0

- Added schema for new add/update/delete mutations to manage account prepay cards and bank accounts
- Move the page redirection to modal popup for account prepay cards and bank accounts

## 1.9.0

- Account Management- Migrated to latest schema and introduced dedicated add, update, and delete account manager mutations.

## 1.8.0

- Account Management- Implemented EMR popup-based UI for adding and editing account managers.

## 1.7.0

- Account Management - Fix schema mismatch and resolve compilation error for non-nullable identification fields.

## 1.6.0

- Account Management - Update account - Add identification document. 

## 1.5.0

- Save Addresses GeoLocation
- Refresh the grid on Save
- Make Active as enabled by default

## 1.4.0

- Moved add/edit contact from page redirection to Modal popup
- Replaced single bulk UpdateAccount mutation with indiviual mutations for add/update/delete contacts.

## 1.3.0

- Address selector search field shown inline and show any error message on save

## 1.2.0

- Added schema for new add/update/delete mutations to manage account locations and move the page redirection to modal popup

## 1.1.0

- Updated flutter to 3.38.3 including required package changes

## 1.0.0

- Initial setup to start account management module for all types of accounts.