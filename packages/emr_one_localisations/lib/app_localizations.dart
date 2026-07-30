import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of EmrAppsLocalisations
/// returned by `EmrAppsLocalisations.of(context)`.
///
/// Applications need to include `EmrAppsLocalisations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'lib/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: EmrAppsLocalisations.localizationsDelegates,
///   supportedLocales: EmrAppsLocalisations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the EmrAppsLocalisations.supportedLocales
/// property.
abstract class EmrAppsLocalisations {
  EmrAppsLocalisations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static EmrAppsLocalisations of(BuildContext context) {
    return Localizations.of<EmrAppsLocalisations>(
      context,
      EmrAppsLocalisations,
    )!;
  }

  static const LocalizationsDelegate<EmrAppsLocalisations> delegate =
      _EmrAppsLocalisationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('en', 'US'),
    Locale('es'),
    Locale('es', 'US'),
    Locale('nl'),
    Locale('zu'),
  ];

  /// No description provided for @aBankTransfer.
  ///
  /// In en, this message translates to:
  /// **'A Bank Transfer'**
  String get aBankTransfer;

  /// No description provided for @abandonJob.
  ///
  /// In en, this message translates to:
  /// **'Abandon Job'**
  String get abandonJob;

  /// No description provided for @abandonQuote.
  ///
  /// In en, this message translates to:
  /// **'Abandon Quote'**
  String get abandonQuote;

  /// No description provided for @abandonReason.
  ///
  /// In en, this message translates to:
  /// **'Abandon Reason'**
  String get abandonReason;

  /// No description provided for @abandoned.
  ///
  /// In en, this message translates to:
  /// **'Abandoned'**
  String get abandoned;

  /// No description provided for @abandoningQuote.
  ///
  /// In en, this message translates to:
  /// **'Abandoning Quote'**
  String get abandoningQuote;

  /// No description provided for @acceptedVehicle.
  ///
  /// In en, this message translates to:
  /// **'Accepted Vehicle'**
  String get acceptedVehicle;

  /// No description provided for @accessDenied.
  ///
  /// In en, this message translates to:
  /// **'Access Denied'**
  String get accessDenied;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountAccess.
  ///
  /// In en, this message translates to:
  /// **'Account Access'**
  String get accountAccess;

  /// No description provided for @accountAndSortCodeValidation.
  ///
  /// In en, this message translates to:
  /// **'The account number and sort code combination is invalid'**
  String get accountAndSortCodeValidation;

  /// No description provided for @accountCode.
  ///
  /// In en, this message translates to:
  /// **'Account Code'**
  String get accountCode;

  /// No description provided for @accountContactHint.
  ///
  /// In en, this message translates to:
  /// **'Select a contact'**
  String get accountContactHint;

  /// No description provided for @accountDetails.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get accountDetails;

  /// No description provided for @accountDetailsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch account details for {accountNumber}'**
  String accountDetailsNotFound(Object accountNumber);

  /// No description provided for @accountEditNote.
  ///
  /// In en, this message translates to:
  /// **'Here you can edit your personal information'**
  String get accountEditNote;

  /// No description provided for @accountHolder.
  ///
  /// In en, this message translates to:
  /// **'Account Holder'**
  String get accountHolder;

  /// No description provided for @accountHolderName.
  ///
  /// In en, this message translates to:
  /// **'Account Holder\'s Name'**
  String get accountHolderName;

  /// No description provided for @accountIdMissing.
  ///
  /// In en, this message translates to:
  /// **'Account id missing e.g. accounts/A11/N50100780'**
  String get accountIdMissing;

  /// No description provided for @accountIdWithExample.
  ///
  /// In en, this message translates to:
  /// **'Account ID (e.g. accounts/A11/N50100780)'**
  String get accountIdWithExample;

  /// No description provided for @accountInactive.
  ///
  /// In en, this message translates to:
  /// **'Account Inactive'**
  String get accountInactive;

  /// No description provided for @accountInformation.
  ///
  /// In en, this message translates to:
  /// **'Account Information'**
  String get accountInformation;

  /// No description provided for @accountLoadErrMsg.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the account. Please check the account number and try again.'**
  String get accountLoadErrMsg;

  /// No description provided for @accountLocation.
  ///
  /// In en, this message translates to:
  /// **'Account Location'**
  String get accountLocation;

  /// No description provided for @accountManagement.
  ///
  /// In en, this message translates to:
  /// **'Account Management'**
  String get accountManagement;

  /// No description provided for @accountManager.
  ///
  /// In en, this message translates to:
  /// **'Manager'**
  String get accountManager;

  /// No description provided for @accountName.
  ///
  /// In en, this message translates to:
  /// **'Account Name'**
  String get accountName;

  /// No description provided for @accountNameAsc.
  ///
  /// In en, this message translates to:
  /// **'Account Name A-Z'**
  String get accountNameAsc;

  /// No description provided for @accountNameDesc.
  ///
  /// In en, this message translates to:
  /// **'Account Name Z-A'**
  String get accountNameDesc;

  /// No description provided for @accountNotFound.
  ///
  /// In en, this message translates to:
  /// **'Account not found'**
  String get accountNotFound;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// No description provided for @accountOwner.
  ///
  /// In en, this message translates to:
  /// **'Account Owner'**
  String get accountOwner;

  /// No description provided for @accountPrices.
  ///
  /// In en, this message translates to:
  /// **'Account Prices'**
  String get accountPrices;

  /// No description provided for @accountQrCode.
  ///
  /// In en, this message translates to:
  /// **'Account QR Code'**
  String get accountQrCode;

  /// No description provided for @accountStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Status'**
  String get accountStatus;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @accountsPayable.
  ///
  /// In en, this message translates to:
  /// **'Accounts Payable'**
  String get accountsPayable;

  /// No description provided for @accountsReceivable.
  ///
  /// In en, this message translates to:
  /// **'Accounts Receivable'**
  String get accountsReceivable;

  /// No description provided for @actionedDate.
  ///
  /// In en, this message translates to:
  /// **'Actioned Date'**
  String get actionedDate;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @actionsStillRequired.
  ///
  /// In en, this message translates to:
  /// **'Actions Still Required'**
  String get actionsStillRequired;

  /// No description provided for @activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get activate;

  /// No description provided for @activateAccountInfo.
  ///
  /// In en, this message translates to:
  /// **'Please activate your account'**
  String get activateAccountInfo;

  /// No description provided for @activateDigitalWallet.
  ///
  /// In en, this message translates to:
  /// **'Activate digital wallet'**
  String get activateDigitalWallet;

  /// No description provided for @activateNow.
  ///
  /// In en, this message translates to:
  /// **'Activate now'**
  String get activateNow;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @activeVorOn.
  ///
  /// In en, this message translates to:
  /// **'Active VOR on'**
  String get activeVorOn;

  /// No description provided for @actual.
  ///
  /// In en, this message translates to:
  /// **'Actual'**
  String get actual;

  /// No description provided for @actualLoad.
  ///
  /// In en, this message translates to:
  /// **'Actual Load'**
  String get actualLoad;

  /// No description provided for @actualWeight.
  ///
  /// In en, this message translates to:
  /// **'Actual Weight'**
  String get actualWeight;

  /// No description provided for @actualWeightPerLoad.
  ///
  /// In en, this message translates to:
  /// **'Actual Weight Per Load'**
  String get actualWeightPerLoad;

  /// No description provided for @adHoc.
  ///
  /// In en, this message translates to:
  /// **'Ad-hoc'**
  String get adHoc;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addACamera.
  ///
  /// In en, this message translates to:
  /// **'Add a camera'**
  String get addACamera;

  /// No description provided for @addAFilter.
  ///
  /// In en, this message translates to:
  /// **'Add a filter'**
  String get addAFilter;

  /// No description provided for @addANewGrade.
  ///
  /// In en, this message translates to:
  /// **'Add a new grade'**
  String get addANewGrade;

  /// No description provided for @addAQuestion.
  ///
  /// In en, this message translates to:
  /// **'Add a question'**
  String get addAQuestion;

  /// No description provided for @addAScale.
  ///
  /// In en, this message translates to:
  /// **'Add a scale'**
  String get addAScale;

  /// No description provided for @addASection.
  ///
  /// In en, this message translates to:
  /// **'Add a section'**
  String get addASection;

  /// No description provided for @addATicketPrint.
  ///
  /// In en, this message translates to:
  /// **'Add a Ticket Print'**
  String get addATicketPrint;

  /// No description provided for @addAccount.
  ///
  /// In en, this message translates to:
  /// **'Add Account'**
  String get addAccount;

  /// No description provided for @addAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Add Adjustment'**
  String get addAdjustment;

  /// No description provided for @addAndGoToBasket.
  ///
  /// In en, this message translates to:
  /// **'Add and go to basket'**
  String get addAndGoToBasket;

  /// No description provided for @addBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Add Bank Account'**
  String get addBankAccount;

  /// No description provided for @addCAT.
  ///
  /// In en, this message translates to:
  /// **'Add CAT'**
  String get addCAT;

  /// No description provided for @addCatalyticConverter.
  ///
  /// In en, this message translates to:
  /// **'Add Catalytic Converter'**
  String get addCatalyticConverter;

  /// No description provided for @addChequeBook.
  ///
  /// In en, this message translates to:
  /// **'Add cheque book'**
  String get addChequeBook;

  /// No description provided for @addClient.
  ///
  /// In en, this message translates to:
  /// **'Create Category'**
  String get addClient;

  /// No description provided for @addConsignmentNote.
  ///
  /// In en, this message translates to:
  /// **'Add Consignment Note'**
  String get addConsignmentNote;

  /// No description provided for @addConsignmentNoteValidation.
  ///
  /// In en, this message translates to:
  /// **'Please add a consignment note'**
  String get addConsignmentNoteValidation;

  /// No description provided for @addContact.
  ///
  /// In en, this message translates to:
  /// **'Add Contact'**
  String get addContact;

  /// No description provided for @addContainer.
  ///
  /// In en, this message translates to:
  /// **'Add Container'**
  String get addContainer;

  /// No description provided for @addCount.
  ///
  /// In en, this message translates to:
  /// **'Add Count'**
  String get addCount;

  /// No description provided for @addCustomerProof.
  ///
  /// In en, this message translates to:
  /// **'Add Customer Proof'**
  String get addCustomerProof;

  /// No description provided for @addDeclaration.
  ///
  /// In en, this message translates to:
  /// **'Add Declaration'**
  String get addDeclaration;

  /// No description provided for @addDelay.
  ///
  /// In en, this message translates to:
  /// **'Add delay'**
  String get addDelay;

  /// No description provided for @addDiscrepancies.
  ///
  /// In en, this message translates to:
  /// **'Add Discrepancies'**
  String get addDiscrepancies;

  /// No description provided for @addEditVOR.
  ///
  /// In en, this message translates to:
  /// **'Add/Edit VOR'**
  String get addEditVOR;

  /// No description provided for @addGrade.
  ///
  /// In en, this message translates to:
  /// **'Add Grade'**
  String get addGrade;

  /// No description provided for @addIdentification.
  ///
  /// In en, this message translates to:
  /// **'Add Identification'**
  String get addIdentification;

  /// No description provided for @addList.
  ///
  /// In en, this message translates to:
  /// **'Add List'**
  String get addList;

  /// No description provided for @addLocations.
  ///
  /// In en, this message translates to:
  /// **'Add Locations'**
  String get addLocations;

  /// No description provided for @addLot.
  ///
  /// In en, this message translates to:
  /// **'Add Lot'**
  String get addLot;

  /// No description provided for @addLoyaltyCard.
  ///
  /// In en, this message translates to:
  /// **'Add Loyalty Card'**
  String get addLoyaltyCard;

  /// No description provided for @addManagedThirdPartyTruck.
  ///
  /// In en, this message translates to:
  /// **'Add Managed Third Party Truck'**
  String get addManagedThirdPartyTruck;

  /// No description provided for @addManager.
  ///
  /// In en, this message translates to:
  /// **'Add Responsibility'**
  String get addManager;

  /// No description provided for @addManualWeight.
  ///
  /// In en, this message translates to:
  /// **'Add Manual Weight'**
  String get addManualWeight;

  /// No description provided for @addManually.
  ///
  /// In en, this message translates to:
  /// **'Add manually'**
  String get addManually;

  /// No description provided for @addMedia.
  ///
  /// In en, this message translates to:
  /// **'Add Media'**
  String get addMedia;

  /// No description provided for @addName.
  ///
  /// In en, this message translates to:
  /// **'Add Name'**
  String get addName;

  /// No description provided for @addNameToPunches.
  ///
  /// In en, this message translates to:
  /// **'Add Name as a Punch In'**
  String get addNameToPunches;

  /// No description provided for @addNew.
  ///
  /// In en, this message translates to:
  /// **'Add new'**
  String get addNew;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add new Address'**
  String get addNewAddress;

  /// No description provided for @addNewCard.
  ///
  /// In en, this message translates to:
  /// **'Add new card'**
  String get addNewCard;

  /// No description provided for @addNewCreditNote.
  ///
  /// In en, this message translates to:
  /// **'Add a new Credit Note'**
  String get addNewCreditNote;

  /// No description provided for @addNewInvoice.
  ///
  /// In en, this message translates to:
  /// **'Add a new invoice'**
  String get addNewInvoice;

  /// No description provided for @addNewLine.
  ///
  /// In en, this message translates to:
  /// **'Add New Line'**
  String get addNewLine;

  /// No description provided for @addNewLocations.
  ///
  /// In en, this message translates to:
  /// **'Add New Locations'**
  String get addNewLocations;

  /// No description provided for @addNewPart.
  ///
  /// In en, this message translates to:
  /// **'Add New Part'**
  String get addNewPart;

  /// No description provided for @addNewStocktake.
  ///
  /// In en, this message translates to:
  /// **'Add New Stock Take'**
  String get addNewStocktake;

  /// No description provided for @addNewVehicle.
  ///
  /// In en, this message translates to:
  /// **'Add New Vehicle'**
  String get addNewVehicle;

  /// No description provided for @addNewWeight.
  ///
  /// In en, this message translates to:
  /// **'Add New Weight'**
  String get addNewWeight;

  /// No description provided for @addNonConformingPart.
  ///
  /// In en, this message translates to:
  /// **'Add Non-Conforming Part'**
  String get addNonConformingPart;

  /// No description provided for @addNote.
  ///
  /// In en, this message translates to:
  /// **'Add Note'**
  String get addNote;

  /// No description provided for @addPart.
  ///
  /// In en, this message translates to:
  /// **'Add Part'**
  String get addPart;

  /// No description provided for @addPartyTag.
  ///
  /// In en, this message translates to:
  /// **'Add Party Tag'**
  String get addPartyTag;

  /// No description provided for @addPaymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Add Payment Details'**
  String get addPaymentDetails;

  /// No description provided for @addPhotos.
  ///
  /// In en, this message translates to:
  /// **'Add Photos'**
  String get addPhotos;

  /// No description provided for @addPrepayCard.
  ///
  /// In en, this message translates to:
  /// **'Add Prepay Card'**
  String get addPrepayCard;

  /// No description provided for @addProductEwc.
  ///
  /// In en, this message translates to:
  /// **'Add Product EWC'**
  String get addProductEwc;

  /// No description provided for @addProductEwcSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Product EWC added successfully'**
  String get addProductEwcSuccessMessage;

  /// No description provided for @addProducts.
  ///
  /// In en, this message translates to:
  /// **'Add Product(s)'**
  String get addProducts;

  /// No description provided for @addQuestionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Add Question'**
  String get addQuestionButtonText;

  /// No description provided for @addSectionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Add Section'**
  String get addSectionButtonText;

  /// No description provided for @addSelectedVehicles.
  ///
  /// In en, this message translates to:
  /// **'Add Selected Vehicles'**
  String get addSelectedVehicles;

  /// No description provided for @addSignature.
  ///
  /// In en, this message translates to:
  /// **'Add Signatures'**
  String get addSignature;

  /// No description provided for @addStockTakeConfig.
  ///
  /// In en, this message translates to:
  /// **'Add Stock Take Config'**
  String get addStockTakeConfig;

  /// No description provided for @addTagTenplatePrices.
  ///
  /// In en, this message translates to:
  /// **'Create a New Tag'**
  String get addTagTenplatePrices;

  /// No description provided for @addTags.
  ///
  /// In en, this message translates to:
  /// **'Add Tag(s)'**
  String get addTags;

  /// No description provided for @addTagsToPrices.
  ///
  /// In en, this message translates to:
  /// **'Add Tags to {pricesCount} price(s)'**
  String addTagsToPrices(Object pricesCount);

  /// No description provided for @addTeam.
  ///
  /// In en, this message translates to:
  /// **'Add Team'**
  String get addTeam;

  /// No description provided for @addTickets.
  ///
  /// In en, this message translates to:
  /// **'Add Tickets'**
  String get addTickets;

  /// No description provided for @addToBasket.
  ///
  /// In en, this message translates to:
  /// **'Add To Basket'**
  String get addToBasket;

  /// No description provided for @addToStockTake.
  ///
  /// In en, this message translates to:
  /// **'Add To Stock Take'**
  String get addToStockTake;

  /// No description provided for @addTruck.
  ///
  /// In en, this message translates to:
  /// **'Add Truck'**
  String get addTruck;

  /// No description provided for @addVehicleOwnershipProof.
  ///
  /// In en, this message translates to:
  /// **'Add Vehicle Ownership Proof'**
  String get addVehicleOwnershipProof;

  /// No description provided for @addVehicles.
  ///
  /// In en, this message translates to:
  /// **'Add Vehicles'**
  String get addVehicles;

  /// No description provided for @addVorSchedule.
  ///
  /// In en, this message translates to:
  /// **'Add VOR Schedule'**
  String get addVorSchedule;

  /// No description provided for @addWeighbridgeConfig.
  ///
  /// In en, this message translates to:
  /// **'Add Weighbridge Configuration'**
  String get addWeighbridgeConfig;

  /// No description provided for @addWeighbridgeGroup.
  ///
  /// In en, this message translates to:
  /// **'Add Weighbridge Group'**
  String get addWeighbridgeGroup;

  /// No description provided for @addWeighbridgeProfile.
  ///
  /// In en, this message translates to:
  /// **'Add Weighbridge Profile'**
  String get addWeighbridgeProfile;

  /// No description provided for @addWeight.
  ///
  /// In en, this message translates to:
  /// **'Add Weight'**
  String get addWeight;

  /// No description provided for @addedContainers.
  ///
  /// In en, this message translates to:
  /// **'Added Containers'**
  String get addedContainers;

  /// No description provided for @addedHaulierDisplay.
  ///
  /// In en, this message translates to:
  /// **'Added Haulier'**
  String get addedHaulierDisplay;

  /// No description provided for @addedToBasket.
  ///
  /// In en, this message translates to:
  /// **'Added to Basket'**
  String get addedToBasket;

  /// No description provided for @addingTags.
  ///
  /// In en, this message translates to:
  /// **'Adding Tags'**
  String get addingTags;

  /// No description provided for @additionalDetails.
  ///
  /// In en, this message translates to:
  /// **'Additional Details'**
  String get additionalDetails;

  /// No description provided for @additionalEmail.
  ///
  /// In en, this message translates to:
  /// **'Additional emails'**
  String get additionalEmail;

  /// No description provided for @additionalEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Multiple email addresses must be separated by a semicolon (‘;’)'**
  String get additionalEmailHint;

  /// No description provided for @additionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Additional Notes'**
  String get additionalNotes;

  /// No description provided for @additionalNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'More Detailed Notes of the Issue'**
  String get additionalNotesLabel;

  /// No description provided for @additionalSeal.
  ///
  /// In en, this message translates to:
  /// **'Additional Seal'**
  String get additionalSeal;

  /// No description provided for @additionalVisitorInfo.
  ///
  /// In en, this message translates to:
  /// **'Additional Visitor Info'**
  String get additionalVisitorInfo;

  /// No description provided for @addlocation.
  ///
  /// In en, this message translates to:
  /// **'Add Location'**
  String get addlocation;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @address1.
  ///
  /// In en, this message translates to:
  /// **'Address 1'**
  String get address1;

  /// No description provided for @address2.
  ///
  /// In en, this message translates to:
  /// **'Address 2'**
  String get address2;

  /// No description provided for @address3.
  ///
  /// In en, this message translates to:
  /// **'Address 3'**
  String get address3;

  /// No description provided for @address4.
  ///
  /// In en, this message translates to:
  /// **'Address 4'**
  String get address4;

  /// No description provided for @address5.
  ///
  /// In en, this message translates to:
  /// **'Address 5'**
  String get address5;

  /// No description provided for @address6.
  ///
  /// In en, this message translates to:
  /// **'Address 6'**
  String get address6;

  /// No description provided for @addressDetails.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get addressDetails;

  /// No description provided for @addressFormat.
  ///
  /// In en, this message translates to:
  /// **'Select the address format'**
  String get addressFormat;

  /// No description provided for @addressLine1.
  ///
  /// In en, this message translates to:
  /// **'Address line 1'**
  String get addressLine1;

  /// No description provided for @addressLine2Optional.
  ///
  /// In en, this message translates to:
  /// **'Address line 2 (optional)'**
  String get addressLine2Optional;

  /// No description provided for @addressNumber.
  ///
  /// In en, this message translates to:
  /// **'Address {number}'**
  String addressNumber(Object number);

  /// No description provided for @addressSearch.
  ///
  /// In en, this message translates to:
  /// **'Address Search'**
  String get addressSearch;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @adhocDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a template description'**
  String get adhocDescriptionHint;

  /// No description provided for @adhocDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Template Description'**
  String get adhocDescriptionLabel;

  /// No description provided for @adhocDescriptionValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a description for the template'**
  String get adhocDescriptionValidation;

  /// No description provided for @adhocQuestionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a question'**
  String get adhocQuestionHint;

  /// No description provided for @adhocQuestionLabel.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get adhocQuestionLabel;

  /// No description provided for @adhocQuestionLabelTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Select a label type'**
  String get adhocQuestionLabelTypeHint;

  /// No description provided for @adhocQuestionLabelTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Label Type'**
  String get adhocQuestionLabelTypeLabel;

  /// No description provided for @adhocQuestionLabelTypeValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a label type'**
  String get adhocQuestionLabelTypeValidation;

  /// No description provided for @adhocQuestionTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Select a question type'**
  String get adhocQuestionTypeHint;

  /// No description provided for @adhocQuestionTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Question Type'**
  String get adhocQuestionTypeLabel;

  /// No description provided for @adhocQuestionTypeValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a question type'**
  String get adhocQuestionTypeValidation;

  /// No description provided for @adhocQuestionValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a question'**
  String get adhocQuestionValidation;

  /// No description provided for @adhocQuestionValidatorHint.
  ///
  /// In en, this message translates to:
  /// **'Select a validator'**
  String get adhocQuestionValidatorHint;

  /// No description provided for @adhocQuestionValidatorLabel.
  ///
  /// In en, this message translates to:
  /// **'Validator'**
  String get adhocQuestionValidatorLabel;

  /// No description provided for @adhocQuestionValidatorValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a validator'**
  String get adhocQuestionValidatorValidation;

  /// No description provided for @adhocSectionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a section name'**
  String get adhocSectionHint;

  /// No description provided for @adhocSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get adhocSectionLabel;

  /// No description provided for @adhocSectionValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name for the section'**
  String get adhocSectionValidation;

  /// No description provided for @adhocTemplate.
  ///
  /// In en, this message translates to:
  /// **'Adhoc Template'**
  String get adhocTemplate;

  /// No description provided for @adhocTemplateCreated.
  ///
  /// In en, this message translates to:
  /// **'Ad hoc template created successfully!'**
  String get adhocTemplateCreated;

  /// No description provided for @adhocTemplateMissingQuestions.
  ///
  /// In en, this message translates to:
  /// **'Please add a question!'**
  String get adhocTemplateMissingQuestions;

  /// No description provided for @adhocTemplateMissingSections.
  ///
  /// In en, this message translates to:
  /// **'Please add a section!'**
  String get adhocTemplateMissingSections;

  /// No description provided for @adhocTemplateUpdated.
  ///
  /// In en, this message translates to:
  /// **'Ad hoc template updated successfully!'**
  String get adhocTemplateUpdated;

  /// No description provided for @adjustPrice.
  ///
  /// In en, this message translates to:
  /// **'Adjust Price (Via Tag)'**
  String get adjustPrice;

  /// No description provided for @adjustTax.
  ///
  /// In en, this message translates to:
  /// **'Adjust Tax'**
  String get adjustTax;

  /// No description provided for @adjustedValue.
  ///
  /// In en, this message translates to:
  /// **'Value Variance'**
  String get adjustedValue;

  /// No description provided for @adjustedWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight Variance'**
  String get adjustedWeight;

  /// No description provided for @adjustment.
  ///
  /// In en, this message translates to:
  /// **'Adjustment'**
  String get adjustment;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @adminMenuAssetTemplate.
  ///
  /// In en, this message translates to:
  /// **'Manage Asset Template'**
  String get adminMenuAssetTemplate;

  /// No description provided for @adminMenuLists.
  ///
  /// In en, this message translates to:
  /// **'Manage Lists'**
  String get adminMenuLists;

  /// No description provided for @adminPricing.
  ///
  /// In en, this message translates to:
  /// **'Admin Pricing'**
  String get adminPricing;

  /// No description provided for @adoptedTaxPayerIdNumber.
  ///
  /// In en, this message translates to:
  /// **'Adopted Tax Payer Identification Number'**
  String get adoptedTaxPayerIdNumber;

  /// No description provided for @advance.
  ///
  /// In en, this message translates to:
  /// **'Advance'**
  String get advance;

  /// No description provided for @advanceCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} Advances} one{1 Advance}}'**
  String advanceCount(num count);

  /// No description provided for @advanceMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Advance Maintenance'**
  String get advanceMaintenance;

  /// No description provided for @advanceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Advance Not Found'**
  String get advanceNotFound;

  /// No description provided for @advanceNumber.
  ///
  /// In en, this message translates to:
  /// **'Advance Number'**
  String get advanceNumber;

  /// No description provided for @advanceOffset.
  ///
  /// In en, this message translates to:
  /// **'Advance Offset'**
  String get advanceOffset;

  /// No description provided for @advanceOffsetConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Entire amount will be offsetted agaisnt the existing advances'**
  String get advanceOffsetConfirmation;

  /// No description provided for @advanceOffsetDetails.
  ///
  /// In en, this message translates to:
  /// **'Advance Offset Details'**
  String get advanceOffsetDetails;

  /// No description provided for @advancePaymentConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Paying {amount} by {paymentMethod}'**
  String advancePaymentConfirmation(Object amount, Object paymentMethod);

  /// No description provided for @advanceValue.
  ///
  /// In en, this message translates to:
  /// **'Advance Value'**
  String get advanceValue;

  /// No description provided for @advanceWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Advance #{advanceNumber}'**
  String advanceWithNumber(Object advanceNumber);

  /// No description provided for @advanceaccountUpdateError.
  ///
  /// In en, this message translates to:
  /// **'Account cannot be updated because it can only be set at creation time.'**
  String get advanceaccountUpdateError;

  /// No description provided for @advancedSearch.
  ///
  /// In en, this message translates to:
  /// **'Advanced Search'**
  String get advancedSearch;

  /// No description provided for @advances.
  ///
  /// In en, this message translates to:
  /// **'Advances'**
  String get advances;

  /// No description provided for @agreeTermsAndConditionNote.
  ///
  /// In en, this message translates to:
  /// **'Once you have entered your address details, please click AGREE to consent with our T&C’s'**
  String get agreeTermsAndConditionNote;

  /// No description provided for @agreeToBulkEmail.
  ///
  /// In en, this message translates to:
  /// **'Agree To Bulk Email'**
  String get agreeToBulkEmail;

  /// No description provided for @agreeToCELEncashment.
  ///
  /// In en, this message translates to:
  /// **'Agree to CEL encashment'**
  String get agreeToCELEncashment;

  /// No description provided for @agreeToCELTnC.
  ///
  /// In en, this message translates to:
  /// **'I agree to CEL terms and conditions'**
  String get agreeToCELTnC;

  /// No description provided for @agreeToCFC.
  ///
  /// In en, this message translates to:
  /// **'Agree to CFC'**
  String get agreeToCFC;

  /// No description provided for @agreeToEmail.
  ///
  /// In en, this message translates to:
  /// **'Agree to Email'**
  String get agreeToEmail;

  /// No description provided for @agreeToFax.
  ///
  /// In en, this message translates to:
  /// **'Agree to Fax'**
  String get agreeToFax;

  /// No description provided for @agreeToLegalTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'I agree to Legal terms and conditions'**
  String get agreeToLegalTermsAndConditions;

  /// No description provided for @agreeToPhone.
  ///
  /// In en, this message translates to:
  /// **'Agree to Phone'**
  String get agreeToPhone;

  /// No description provided for @agreeToPost.
  ///
  /// In en, this message translates to:
  /// **'Agree to Post'**
  String get agreeToPost;

  /// No description provided for @agreeToSecoreLabel.
  ///
  /// In en, this message translates to:
  /// **'I agree to the terms and conditions for payment of materials using the SecOre cash wallet.'**
  String get agreeToSecoreLabel;

  /// No description provided for @agreeToSecoreTitle.
  ///
  /// In en, this message translates to:
  /// **'Secore terms and conditions (Scroll to end and accept)'**
  String get agreeToSecoreTitle;

  /// No description provided for @agreeToSecoreTnc.
  ///
  /// In en, this message translates to:
  /// **' I have read and accept these Terms and Conditions and the Privacy Policy, and consent to the processing of my personal data as described therein. I confirm I am at least 18 years old and I have read and accept the Terms and Conditions of the relevant EMI'**
  String get agreeToSecoreTnc;

  /// No description provided for @agreeToSms.
  ///
  /// In en, this message translates to:
  /// **'Agree to SMS'**
  String get agreeToSms;

  /// No description provided for @agreeToTnc.
  ///
  /// In en, this message translates to:
  /// **'We need you to agree to our terms and conditions'**
  String get agreeToTnc;

  /// No description provided for @agreedOffsetAmount.
  ///
  /// In en, this message translates to:
  /// **'Agreed Offset Amount'**
  String get agreedOffsetAmount;

  /// No description provided for @agreement.
  ///
  /// In en, this message translates to:
  /// **'Agreement'**
  String get agreement;

  /// No description provided for @agreementDate.
  ///
  /// In en, this message translates to:
  /// **'Agreement Date'**
  String get agreementDate;

  /// No description provided for @aiHelperLog.
  ///
  /// In en, this message translates to:
  /// **'AI Helper Log'**
  String get aiHelperLog;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @allDamaged.
  ///
  /// In en, this message translates to:
  /// **'All Damaged'**
  String get allDamaged;

  /// No description provided for @allDone.
  ///
  /// In en, this message translates to:
  /// **'All Done'**
  String get allDone;

  /// No description provided for @allJobs.
  ///
  /// In en, this message translates to:
  /// **'All Jobs'**
  String get allJobs;

  /// No description provided for @allUniqueValuesMustBe.
  ///
  /// In en, this message translates to:
  /// **'All Unique Numbers Values must be {equals} long'**
  String allUniqueValuesMustBe(int equals);

  /// No description provided for @allYards.
  ///
  /// In en, this message translates to:
  /// **'All Yards'**
  String get allYards;

  /// No description provided for @allocate.
  ///
  /// In en, this message translates to:
  /// **'Allocate'**
  String get allocate;

  /// No description provided for @allocateChequeNumbers.
  ///
  /// In en, this message translates to:
  /// **'Allocate cheque numbers'**
  String get allocateChequeNumbers;

  /// No description provided for @allocateUserToJob.
  ///
  /// In en, this message translates to:
  /// **'Allocate User to Job'**
  String get allocateUserToJob;

  /// No description provided for @allocateUserToWorkOrders.
  ///
  /// In en, this message translates to:
  /// **'Allocate User To Work Orders'**
  String get allocateUserToWorkOrders;

  /// No description provided for @allocatedProject.
  ///
  /// In en, this message translates to:
  /// **'Allocated Project'**
  String get allocatedProject;

  /// No description provided for @allocatedTo.
  ///
  /// In en, this message translates to:
  /// **'Allocated To'**
  String get allocatedTo;

  /// No description provided for @allocatedToTeam.
  ///
  /// In en, this message translates to:
  /// **'Allocated To Team'**
  String get allocatedToTeam;

  /// No description provided for @allowAccountCreation.
  ///
  /// In en, this message translates to:
  /// **'Account Creation'**
  String get allowAccountCreation;

  /// No description provided for @allowContactBy.
  ///
  /// In en, this message translates to:
  /// **'Allow contact by'**
  String get allowContactBy;

  /// No description provided for @allowFlexiblePay.
  ///
  /// In en, this message translates to:
  /// **'Allow Flexible Pay'**
  String get allowFlexiblePay;

  /// No description provided for @allowRollingWeights.
  ///
  /// In en, this message translates to:
  /// **'Rolling Weights'**
  String get allowRollingWeights;

  /// No description provided for @allowSaving.
  ///
  /// In en, this message translates to:
  /// **'Allow Saving'**
  String get allowSaving;

  /// No description provided for @allowedFileType.
  ///
  /// In en, this message translates to:
  /// **'Only upload file type'**
  String get allowedFileType;

  /// No description provided for @allowedProducts.
  ///
  /// In en, this message translates to:
  /// **'Allowed Products'**
  String get allowedProducts;

  /// No description provided for @allowedYards.
  ///
  /// In en, this message translates to:
  /// **'Allowed Yards'**
  String get allowedYards;

  /// No description provided for @alloyWheels.
  ///
  /// In en, this message translates to:
  /// **'Alloy Wheels'**
  String get alloyWheels;

  /// No description provided for @alloys.
  ///
  /// In en, this message translates to:
  /// **'Alloys'**
  String get alloys;

  /// No description provided for @amiceCompanyNumber.
  ///
  /// In en, this message translates to:
  /// **'Amice Company Number'**
  String get amiceCompanyNumber;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @amountRemaining.
  ///
  /// In en, this message translates to:
  /// **'Amount Remaining'**
  String get amountRemaining;

  /// No description provided for @anAtmPayment.
  ///
  /// In en, this message translates to:
  /// **'An ATM Payment'**
  String get anAtmPayment;

  /// No description provided for @anErrorOccurredTryAgain.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred please try again.'**
  String get anErrorOccurredTryAgain;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @andCannotBeReverted.
  ///
  /// In en, this message translates to:
  /// **'and cannot be reverted'**
  String get andCannotBeReverted;

  /// No description provided for @annualWTNWarning.
  ///
  /// In en, this message translates to:
  /// **'Annual Waste Transfer Note will also affect Waste Transfer Licence.'**
  String get annualWTNWarning;

  /// No description provided for @annualWasteTransferNote.
  ///
  /// In en, this message translates to:
  /// **'Annual Waste Transfer Note'**
  String get annualWasteTransferNote;

  /// No description provided for @annualWtnSsaRequired.
  ///
  /// In en, this message translates to:
  /// **'Annual WTN/SSA required'**
  String get annualWtnSsaRequired;

  /// No description provided for @annually.
  ///
  /// In en, this message translates to:
  /// **'Annually'**
  String get annually;

  /// No description provided for @any.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get any;

  /// No description provided for @anyScrap.
  ///
  /// In en, this message translates to:
  /// **'Any scrap?'**
  String get anyScrap;

  /// No description provided for @anyWorkWillBeLost.
  ///
  /// In en, this message translates to:
  /// **'Any work will be lost'**
  String get anyWorkWillBeLost;

  /// No description provided for @apiError.
  ///
  /// In en, this message translates to:
  /// **'API Error'**
  String get apiError;

  /// No description provided for @applicableDates.
  ///
  /// In en, this message translates to:
  /// **'Applicable Dates'**
  String get applicableDates;

  /// No description provided for @applicableDatesDescription.
  ///
  /// In en, this message translates to:
  /// **'The selected tags will be applied from the start date and remain effective until the end date that you specify.'**
  String get applicableDatesDescription;

  /// No description provided for @appliedFilters.
  ///
  /// In en, this message translates to:
  /// **'Applied Filters'**
  String get appliedFilters;

  /// No description provided for @appliedTags.
  ///
  /// In en, this message translates to:
  /// **'Applied Tags'**
  String get appliedTags;

  /// No description provided for @appliedTagsDescription.
  ///
  /// In en, this message translates to:
  /// **'These tags are already applied.'**
  String get appliedTagsDescription;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @applyTagsToInfluencePricing.
  ///
  /// In en, this message translates to:
  /// **'Apply tags to influence pricing'**
  String get applyTagsToInfluencePricing;

  /// No description provided for @appointmentDate.
  ///
  /// In en, this message translates to:
  /// **'Appointment Date'**
  String get appointmentDate;

  /// No description provided for @approvals.
  ///
  /// In en, this message translates to:
  /// **'Approvals'**
  String get approvals;

  /// No description provided for @approve.
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get approve;

  /// No description provided for @approveLocation.
  ///
  /// In en, this message translates to:
  /// **'Approve Location'**
  String get approveLocation;

  /// No description provided for @approveStockTake.
  ///
  /// In en, this message translates to:
  /// **'Approve Stock Take'**
  String get approveStockTake;

  /// No description provided for @approved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get approved;

  /// No description provided for @approvedAssets.
  ///
  /// In en, this message translates to:
  /// **'Approved Assets'**
  String get approvedAssets;

  /// No description provided for @approver.
  ///
  /// In en, this message translates to:
  /// **'Approver'**
  String get approver;

  /// No description provided for @archClass.
  ///
  /// In en, this message translates to:
  /// **'Arch Class'**
  String get archClass;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @areYouSureForDeletion.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete?'**
  String get areYouSureForDeletion;

  /// No description provided for @areYouSureForJobStart.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to start this job?'**
  String get areYouSureForJobStart;

  /// No description provided for @areYouSureReopenInspection.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reopen inspection for this vehicle'**
  String get areYouSureReopenInspection;

  /// No description provided for @areYouSureVorDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the VOR schedule?'**
  String get areYouSureVorDelete;

  /// No description provided for @areYouSureYouWant.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to'**
  String get areYouSureYouWant;

  /// No description provided for @areYouSureYouWantToDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete'**
  String get areYouSureYouWantToDelete;

  /// No description provided for @areYouSureYouWantToSplitTheTicket.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to split the ticket lines on ticket'**
  String get areYouSureYouWantToSplitTheTicket;

  /// No description provided for @arisingClass.
  ///
  /// In en, this message translates to:
  /// **'Arising Class'**
  String get arisingClass;

  /// No description provided for @arisingPoint.
  ///
  /// In en, this message translates to:
  /// **'Arising Point'**
  String get arisingPoint;

  /// No description provided for @arisingPointAddress.
  ///
  /// In en, this message translates to:
  /// **'Arising Point Address'**
  String get arisingPointAddress;

  /// No description provided for @arisingPointCode.
  ///
  /// In en, this message translates to:
  /// **'Arising Point Code'**
  String get arisingPointCode;

  /// No description provided for @arisingPointLocation.
  ///
  /// In en, this message translates to:
  /// **'Arising Point Location'**
  String get arisingPointLocation;

  /// No description provided for @arisingPointWrapped.
  ///
  /// In en, this message translates to:
  /// **'Arising\nPoint'**
  String get arisingPointWrapped;

  /// No description provided for @arisingPoints.
  ///
  /// In en, this message translates to:
  /// **'Arising points'**
  String get arisingPoints;

  /// No description provided for @arrangedBy.
  ///
  /// In en, this message translates to:
  /// **'Arranged By'**
  String get arrangedBy;

  /// No description provided for @arrivedAt.
  ///
  /// In en, this message translates to:
  /// **'Arrived at'**
  String get arrivedAt;

  /// No description provided for @artmQrCodePrinted.
  ///
  /// In en, this message translates to:
  /// **'ATM QR code printed'**
  String get artmQrCodePrinted;

  /// No description provided for @ascending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get ascending;

  /// No description provided for @askSnapshotCapture.
  ///
  /// In en, this message translates to:
  /// **'Would you like to capture snapshots now?'**
  String get askSnapshotCapture;

  /// No description provided for @assess.
  ///
  /// In en, this message translates to:
  /// **'Assess'**
  String get assess;

  /// No description provided for @assessed.
  ///
  /// In en, this message translates to:
  /// **'Assessed'**
  String get assessed;

  /// No description provided for @assessmentFailure.
  ///
  /// In en, this message translates to:
  /// **'The Assessment Failed to Upload,\nIt will be uploaded when you regain internet connection'**
  String get assessmentFailure;

  /// No description provided for @assessmentSuccess.
  ///
  /// In en, this message translates to:
  /// **'The Assessment Has Uploaded Successfully'**
  String get assessmentSuccess;

  /// No description provided for @asset.
  ///
  /// In en, this message translates to:
  /// **'Asset'**
  String get asset;

  /// No description provided for @assetCode.
  ///
  /// In en, this message translates to:
  /// **'Asset Code'**
  String get assetCode;

  /// No description provided for @assetCreatedWithCode.
  ///
  /// In en, this message translates to:
  /// **'Asset created with code'**
  String get assetCreatedWithCode;

  /// No description provided for @assetLabel.
  ///
  /// In en, this message translates to:
  /// **'Asset ID'**
  String get assetLabel;

  /// No description provided for @assetLocator.
  ///
  /// In en, this message translates to:
  /// **'Asset Locator'**
  String get assetLocator;

  /// No description provided for @assetMainAttributesOnly.
  ///
  /// In en, this message translates to:
  /// **'Assets (main attributes only)'**
  String get assetMainAttributesOnly;

  /// No description provided for @assetManagement.
  ///
  /// In en, this message translates to:
  /// **'Asset Management'**
  String get assetManagement;

  /// No description provided for @assetName.
  ///
  /// In en, this message translates to:
  /// **'Asset Name'**
  String get assetName;

  /// No description provided for @assetNumber.
  ///
  /// In en, this message translates to:
  /// **'Asset Number'**
  String get assetNumber;

  /// No description provided for @assetNumberAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'Asset number already in use.'**
  String get assetNumberAlreadyInUse;

  /// No description provided for @assetNumberGenerated.
  ///
  /// In en, this message translates to:
  /// **'Asset number already in use. The system has generated a new one. Please check the asset number and try again.'**
  String get assetNumberGenerated;

  /// No description provided for @assetNumberText.
  ///
  /// In en, this message translates to:
  /// **'Asset No.'**
  String get assetNumberText;

  /// No description provided for @assetNumberUpdateRequired.
  ///
  /// In en, this message translates to:
  /// **'Asset number needs to be updated'**
  String get assetNumberUpdateRequired;

  /// No description provided for @assetNumberUsed.
  ///
  /// In en, this message translates to:
  /// **'Asset number used'**
  String get assetNumberUsed;

  /// No description provided for @assetScreenDisplayLabel.
  ///
  /// In en, this message translates to:
  /// **'Asset Screen'**
  String get assetScreenDisplayLabel;

  /// No description provided for @assetSearch.
  ///
  /// In en, this message translates to:
  /// **'Asset Search'**
  String get assetSearch;

  /// No description provided for @assetTemplate.
  ///
  /// In en, this message translates to:
  /// **'Asset Template'**
  String get assetTemplate;

  /// No description provided for @assetType.
  ///
  /// In en, this message translates to:
  /// **'Asset Type'**
  String get assetType;

  /// No description provided for @assets.
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get assets;

  /// No description provided for @assetsAlreadyApproved.
  ///
  /// In en, this message translates to:
  /// **'Selected Assets are already approved!'**
  String get assetsAlreadyApproved;

  /// No description provided for @assetsApprovedSuccesfully.
  ///
  /// In en, this message translates to:
  /// **'Assets approved Succesfully'**
  String get assetsApprovedSuccesfully;

  /// No description provided for @assetsHint.
  ///
  /// In en, this message translates to:
  /// **'Enter an asset code / name'**
  String get assetsHint;

  /// No description provided for @assetsLabel.
  ///
  /// In en, this message translates to:
  /// **'Allocate an asset'**
  String get assetsLabel;

  /// No description provided for @assignButtonText.
  ///
  /// In en, this message translates to:
  /// **'Allocate'**
  String get assignButtonText;

  /// No description provided for @assignDepotValidation.
  ///
  /// In en, this message translates to:
  /// **'Atleast 1 depot is required'**
  String get assignDepotValidation;

  /// No description provided for @assignMessage.
  ///
  /// In en, this message translates to:
  /// **'Assigned'**
  String get assignMessage;

  /// No description provided for @assignToTeamLabel.
  ///
  /// In en, this message translates to:
  /// **'Allocate to team'**
  String get assignToTeamLabel;

  /// No description provided for @assignToUserLabel.
  ///
  /// In en, this message translates to:
  /// **'Allocate to user'**
  String get assignToUserLabel;

  /// No description provided for @assignYardValidation.
  ///
  /// In en, this message translates to:
  /// **'Atleast 1 yard is required'**
  String get assignYardValidation;

  /// No description provided for @assignedJobs.
  ///
  /// In en, this message translates to:
  /// **'Assigned Jobs'**
  String get assignedJobs;

  /// No description provided for @assignedToMe.
  ///
  /// In en, this message translates to:
  /// **'Assigned to Me'**
  String get assignedToMe;

  /// No description provided for @atLeastOneGradeSelected.
  ///
  /// In en, this message translates to:
  /// **'Ensure at least 1 grade is added and selected'**
  String get atLeastOneGradeSelected;

  /// No description provided for @atm.
  ///
  /// In en, this message translates to:
  /// **'ATM'**
  String get atm;

  /// No description provided for @atradiusP1.
  ///
  /// In en, this message translates to:
  /// **'Atradius P1'**
  String get atradiusP1;

  /// No description provided for @atradiusP2.
  ///
  /// In en, this message translates to:
  /// **'Atradius P2'**
  String get atradiusP2;

  /// No description provided for @attachDocuments.
  ///
  /// In en, this message translates to:
  /// **'Attach Documents'**
  String get attachDocuments;

  /// No description provided for @attachImagesToVerifyMaterial.
  ///
  /// In en, this message translates to:
  /// **'Attach images to verify materials'**
  String get attachImagesToVerifyMaterial;

  /// No description provided for @attachImagesToVerifyMaterials.
  ///
  /// In en, this message translates to:
  /// **'Attach images to verify materials'**
  String get attachImagesToVerifyMaterials;

  /// No description provided for @attachments.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get attachments;

  /// No description provided for @attachmentsLinksImages.
  ///
  /// In en, this message translates to:
  /// **'Attachments, Links and Images'**
  String get attachmentsLinksImages;

  /// No description provided for @attribute.
  ///
  /// In en, this message translates to:
  /// **'Attribute'**
  String get attribute;

  /// No description provided for @attributes.
  ///
  /// In en, this message translates to:
  /// **'Attributes'**
  String get attributes;

  /// No description provided for @auction.
  ///
  /// In en, this message translates to:
  /// **'Auction'**
  String get auction;

  /// No description provided for @auditLogs.
  ///
  /// In en, this message translates to:
  /// **'Audit Logs'**
  String get auditLogs;

  /// No description provided for @auditTickets.
  ///
  /// In en, this message translates to:
  /// **'Audit Tickets'**
  String get auditTickets;

  /// No description provided for @authorizationCredentials.
  ///
  /// In en, this message translates to:
  /// **'Payment authorisation credentials'**
  String get authorizationCredentials;

  /// No description provided for @authorizationMessage.
  ///
  /// In en, this message translates to:
  /// **'Please select an authorisation mode to process payment on this ticket.'**
  String get authorizationMessage;

  /// No description provided for @authorizationRequired.
  ///
  /// In en, this message translates to:
  /// **'Authorisation Required'**
  String get authorizationRequired;

  /// No description provided for @authorizeWithPassword.
  ///
  /// In en, this message translates to:
  /// **'Authorise With Password'**
  String get authorizeWithPassword;

  /// No description provided for @authorized.
  ///
  /// In en, this message translates to:
  /// **'Authorised'**
  String get authorized;

  /// No description provided for @autoApprove.
  ///
  /// In en, this message translates to:
  /// **'Auto Approve'**
  String get autoApprove;

  /// No description provided for @autoCheque.
  ///
  /// In en, this message translates to:
  /// **'Auto Cheque'**
  String get autoCheque;

  /// No description provided for @autoChequeWithEncashmentAtm.
  ///
  /// In en, this message translates to:
  /// **'Auto Cheque With Encashment Atm'**
  String get autoChequeWithEncashmentAtm;

  /// No description provided for @autoChequeWithEncashmentCash.
  ///
  /// In en, this message translates to:
  /// **'Auto Cheque With Encashment Cash'**
  String get autoChequeWithEncashmentCash;

  /// No description provided for @autoExpiryInDays.
  ///
  /// In en, this message translates to:
  /// **'Auto Expiry (Days)'**
  String get autoExpiryInDays;

  /// No description provided for @autoHulkAffidavit.
  ///
  /// In en, this message translates to:
  /// **'Auto Hulk Affidavit'**
  String get autoHulkAffidavit;

  /// No description provided for @autoPrice.
  ///
  /// In en, this message translates to:
  /// **'Auto Price'**
  String get autoPrice;

  /// No description provided for @availableLoads.
  ///
  /// In en, this message translates to:
  /// **'Available loads'**
  String get availableLoads;

  /// No description provided for @availableTags.
  ///
  /// In en, this message translates to:
  /// **'Available Tags'**
  String get availableTags;

  /// No description provided for @averageH.
  ///
  /// In en, this message translates to:
  /// **'Average H'**
  String get averageH;

  /// No description provided for @awaitingApproval.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Approval'**
  String get awaitingApproval;

  /// No description provided for @awaitingPayment.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Payment'**
  String get awaitingPayment;

  /// No description provided for @awaitingPaymentApproval.
  ///
  /// In en, this message translates to:
  /// **'Awaiting approval for payment'**
  String get awaitingPaymentApproval;

  /// No description provided for @b2b.
  ///
  /// In en, this message translates to:
  /// **'B2B'**
  String get b2b;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @bacsAndCheque.
  ///
  /// In en, this message translates to:
  /// **'BACS and Cheque'**
  String get bacsAndCheque;

  /// No description provided for @bacsOnly.
  ///
  /// In en, this message translates to:
  /// **'BACS only'**
  String get bacsOnly;

  /// No description provided for @bankAccount.
  ///
  /// In en, this message translates to:
  /// **'Bank Account'**
  String get bankAccount;

  /// No description provided for @bankAccountDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Details'**
  String get bankAccountDetails;

  /// No description provided for @bankAccountDetailsAreNotValid.
  ///
  /// In en, this message translates to:
  /// **'Bank account details are not valid'**
  String get bankAccountDetailsAreNotValid;

  /// No description provided for @bankAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Number'**
  String get bankAccountNumber;

  /// No description provided for @bankAccountType.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Type'**
  String get bankAccountType;

  /// No description provided for @bankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Bank Accounts'**
  String get bankAccounts;

  /// No description provided for @bankCode.
  ///
  /// In en, this message translates to:
  /// **'Bank Code'**
  String get bankCode;

  /// No description provided for @bankDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank Details'**
  String get bankDetails;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @bankSortCode.
  ///
  /// In en, this message translates to:
  /// **'Bank Sort Code'**
  String get bankSortCode;

  /// No description provided for @bankTransfer.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get bankTransfer;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcode;

  /// No description provided for @basePrice.
  ///
  /// In en, this message translates to:
  /// **'Base Price'**
  String get basePrice;

  /// No description provided for @baselinePoRaised.
  ///
  /// In en, this message translates to:
  /// **'Baseline PO Raised'**
  String get baselinePoRaised;

  /// No description provided for @basic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basic;

  /// No description provided for @basicDetails.
  ///
  /// In en, this message translates to:
  /// **'Basic Details'**
  String get basicDetails;

  /// No description provided for @battery.
  ///
  /// In en, this message translates to:
  /// **'Battery'**
  String get battery;

  /// No description provided for @batteryDetails.
  ///
  /// In en, this message translates to:
  /// **'Battery Details'**
  String get batteryDetails;

  /// No description provided for @batterySelectionRequired.
  ///
  /// In en, this message translates to:
  /// **'Battery Selection Required'**
  String get batterySelectionRequired;

  /// No description provided for @beamLocationAlert.
  ///
  /// In en, this message translates to:
  /// **'Beam is already in the {location}.'**
  String beamLocationAlert(Object location);

  /// No description provided for @beamMovedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Beam has been moved to {location}.'**
  String beamMovedSuccess(Object location);

  /// No description provided for @beamSaved.
  ///
  /// In en, this message translates to:
  /// **'Beam details have been saved.'**
  String get beamSaved;

  /// No description provided for @beamSearch.
  ///
  /// In en, this message translates to:
  /// **'Member Search'**
  String get beamSearch;

  /// No description provided for @beamStatusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Beam status has been updated as {status}.'**
  String beamStatusSuccess(Object status);

  /// No description provided for @belowPropertiesModified.
  ///
  /// In en, this message translates to:
  /// **'Below Properties   are modified'**
  String get belowPropertiesModified;

  /// No description provided for @bestDelivery.
  ///
  /// In en, this message translates to:
  /// **'Best Delivery'**
  String get bestDelivery;

  /// No description provided for @biMonthly.
  ///
  /// In en, this message translates to:
  /// **'Bi-Monthly'**
  String get biMonthly;

  /// No description provided for @biWeekly.
  ///
  /// In en, this message translates to:
  /// **'Bi-Weekly'**
  String get biWeekly;

  /// No description provided for @billOfMaterials.
  ///
  /// In en, this message translates to:
  /// **'Bill of Materials'**
  String get billOfMaterials;

  /// No description provided for @bodyType.
  ///
  /// In en, this message translates to:
  /// **'Body Type'**
  String get bodyType;

  /// No description provided for @boltSeal.
  ///
  /// In en, this message translates to:
  /// **'Bolt Seal'**
  String get boltSeal;

  /// No description provided for @both.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get both;

  /// No description provided for @brokerReference.
  ///
  /// In en, this message translates to:
  /// **'Broker Reference'**
  String get brokerReference;

  /// No description provided for @brokerage.
  ///
  /// In en, this message translates to:
  /// **'brokerage'**
  String get brokerage;

  /// No description provided for @bulkAssetAttributes.
  ///
  /// In en, this message translates to:
  /// **'Bulk Import Asset Attributes'**
  String get bulkAssetAttributes;

  /// No description provided for @bulkAssetTemplate.
  ///
  /// In en, this message translates to:
  /// **'Import Asset Template'**
  String get bulkAssetTemplate;

  /// No description provided for @bulkCostAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Bulk Cost Adjustment'**
  String get bulkCostAdjustment;

  /// No description provided for @bulkPod.
  ///
  /// In en, this message translates to:
  /// **'Bulk Pod'**
  String get bulkPod;

  /// No description provided for @bulkPriceAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Bulk Price Adjustment'**
  String get bulkPriceAdjustment;

  /// No description provided for @bulkUpdateAssets.
  ///
  /// In en, this message translates to:
  /// **'Bulk Update Assets'**
  String get bulkUpdateAssets;

  /// No description provided for @bulkUpdateAttributes.
  ///
  /// In en, this message translates to:
  /// **'Bulk Update Attributes'**
  String get bulkUpdateAttributes;

  /// No description provided for @bulkUpdateWeights.
  ///
  /// In en, this message translates to:
  /// **'Bulk Update Weights'**
  String get bulkUpdateWeights;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get business;

  /// No description provided for @businessAccount.
  ///
  /// In en, this message translates to:
  /// **'Business Account'**
  String get businessAccount;

  /// No description provided for @cEVResult.
  ///
  /// In en, this message translates to:
  /// **'CEV Result'**
  String get cEVResult;

  /// No description provided for @cResult.
  ///
  /// In en, this message translates to:
  /// **'C Result'**
  String get cResult;

  /// No description provided for @cToFAdjustment.
  ///
  /// In en, this message translates to:
  /// **'C to F ADJUSTMENT'**
  String get cToFAdjustment;

  /// No description provided for @cachedJobs.
  ///
  /// In en, this message translates to:
  /// **'cachedJobs'**
  String get cachedJobs;

  /// No description provided for @calculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get calculate;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @cameraName.
  ///
  /// In en, this message translates to:
  /// **'Camera name'**
  String get cameraName;

  /// No description provided for @cameraPreviewParameters.
  ///
  /// In en, this message translates to:
  /// **'Camera Preview Parameters'**
  String get cameraPreviewParameters;

  /// No description provided for @cameras.
  ///
  /// In en, this message translates to:
  /// **'Cameras'**
  String get cameras;

  /// No description provided for @canEmail.
  ///
  /// In en, this message translates to:
  /// **'Can Email'**
  String get canEmail;

  /// No description provided for @canMode.
  ///
  /// In en, this message translates to:
  /// **'CAN Mode'**
  String get canMode;

  /// No description provided for @canPhone.
  ///
  /// In en, this message translates to:
  /// **'Can Phone'**
  String get canPhone;

  /// No description provided for @canPost.
  ///
  /// In en, this message translates to:
  /// **'Can Post'**
  String get canPost;

  /// No description provided for @canSchedule.
  ///
  /// In en, this message translates to:
  /// **'Can Schedule'**
  String get canSchedule;

  /// No description provided for @canSms.
  ///
  /// In en, this message translates to:
  /// **'Can SMS'**
  String get canSms;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cancelAndReturnToHomePage.
  ///
  /// In en, this message translates to:
  /// **'Cancel and return to homepage'**
  String get cancelAndReturnToHomePage;

  /// No description provided for @cancelGradeAddition.
  ///
  /// In en, this message translates to:
  /// **'Cancel Grade Addition'**
  String get cancelGradeAddition;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @cancelledNoPosition.
  ///
  /// In en, this message translates to:
  /// **'Cancelled - No Position'**
  String get cancelledNoPosition;

  /// No description provided for @cancelledSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Cancelled Successfully'**
  String get cancelledSuccessfully;

  /// No description provided for @cannotAddVehicleToPrice.
  ///
  /// In en, this message translates to:
  /// **'Cannot Add Vehicle To Price'**
  String get cannotAddVehicleToPrice;

  /// No description provided for @cannotBeEdited.
  ///
  /// In en, this message translates to:
  /// **'This information cannot be edited once saved.'**
  String get cannotBeEdited;

  /// No description provided for @cannotBeEmptyText.
  ///
  /// In en, this message translates to:
  /// **'Cannot be empty!'**
  String get cannotBeEmptyText;

  /// No description provided for @cannotConfirmCollectedQuote.
  ///
  /// In en, this message translates to:
  /// **'You cannot confirm a collected quote for an'**
  String get cannotConfirmCollectedQuote;

  /// No description provided for @cannotMoveUnsavedWeightLine.
  ///
  /// In en, this message translates to:
  /// **'Cannot move unsaved weight line'**
  String get cannotMoveUnsavedWeightLine;

  /// No description provided for @cannotPerformActionAsset.
  ///
  /// In en, this message translates to:
  /// **'Cannot Perform action for selected assets'**
  String get cannotPerformActionAsset;

  /// No description provided for @carBody.
  ///
  /// In en, this message translates to:
  /// **'Car Body'**
  String get carBody;

  /// No description provided for @carBodyValue.
  ///
  /// In en, this message translates to:
  /// **'CarBody'**
  String get carBodyValue;

  /// No description provided for @carTakeBack.
  ///
  /// In en, this message translates to:
  /// **'Car Take Back'**
  String get carTakeBack;

  /// No description provided for @card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get card;

  /// No description provided for @cardHint.
  ///
  /// In en, this message translates to:
  /// **'hint: S12345'**
  String get cardHint;

  /// No description provided for @cardId.
  ///
  /// In en, this message translates to:
  /// **'Card Id'**
  String get cardId;

  /// No description provided for @cardIssuer.
  ///
  /// In en, this message translates to:
  /// **'Card Issuer'**
  String get cardIssuer;

  /// No description provided for @cardLastFourDigits.
  ///
  /// In en, this message translates to:
  /// **'Card Last Four Digits'**
  String get cardLastFourDigits;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @cardView.
  ///
  /// In en, this message translates to:
  /// **'Card View'**
  String get cardView;

  /// No description provided for @carrier.
  ///
  /// In en, this message translates to:
  /// **'Carrier'**
  String get carrier;

  /// No description provided for @carrierAddressAndPostcode.
  ///
  /// In en, this message translates to:
  /// **'Carrier address and postcode'**
  String get carrierAddressAndPostcode;

  /// No description provided for @carrierAddressValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the carrier address'**
  String get carrierAddressValidationText;

  /// No description provided for @carrierCompanyName.
  ///
  /// In en, this message translates to:
  /// **'Carrier Company Name'**
  String get carrierCompanyName;

  /// No description provided for @carrierCompanyNameValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the name of the carrier company'**
  String get carrierCompanyNameValidationText;

  /// No description provided for @carrierEmail.
  ///
  /// In en, this message translates to:
  /// **'Carrier email'**
  String get carrierEmail;

  /// No description provided for @carrierPhone.
  ///
  /// In en, this message translates to:
  /// **'Carrier phone'**
  String get carrierPhone;

  /// No description provided for @carrierRegistrationNumber.
  ///
  /// In en, this message translates to:
  /// **'Carrier registration number'**
  String get carrierRegistrationNumber;

  /// No description provided for @carrierRegistrationNumberValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the waste carrier licence number'**
  String get carrierRegistrationNumberValidationText;

  /// No description provided for @carrierSignature.
  ///
  /// In en, this message translates to:
  /// **'Carrier Signature'**
  String get carrierSignature;

  /// No description provided for @carrierVehicleReg.
  ///
  /// In en, this message translates to:
  /// **'Carrier vehicle reg'**
  String get carrierVehicleReg;

  /// No description provided for @carrierVehicleRegValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the carrier vehicle registration'**
  String get carrierVehicleRegValidationText;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @cashAndDeduction.
  ///
  /// In en, this message translates to:
  /// **'Cash Ded'**
  String get cashAndDeduction;

  /// No description provided for @cashDeductions.
  ///
  /// In en, this message translates to:
  /// **'Cash Deductions'**
  String get cashDeductions;

  /// No description provided for @cashPaymentLimitExemptionDate.
  ///
  /// In en, this message translates to:
  /// **'Cash Payment Limit Exception Date'**
  String get cashPaymentLimitExemptionDate;

  /// No description provided for @cashier.
  ///
  /// In en, this message translates to:
  /// **'cashier'**
  String get cashier;

  /// No description provided for @cashierEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Scan to Fetch Records'**
  String get cashierEmptyMessage;

  /// No description provided for @cat.
  ///
  /// In en, this message translates to:
  /// **'CAT'**
  String get cat;

  /// No description provided for @catClassification.
  ///
  /// In en, this message translates to:
  /// **'CAT Classification'**
  String get catClassification;

  /// No description provided for @catClassificationTextValidation.
  ///
  /// In en, this message translates to:
  /// **'CAT Classification must be at least 3 characters long'**
  String get catClassificationTextValidation;

  /// No description provided for @catCount.
  ///
  /// In en, this message translates to:
  /// **'CAT Count'**
  String get catCount;

  /// No description provided for @catDetails.
  ///
  /// In en, this message translates to:
  /// **'CAT Details'**
  String get catDetails;

  /// No description provided for @catLocation.
  ///
  /// In en, this message translates to:
  /// **'CAT Location'**
  String get catLocation;

  /// No description provided for @catLocationTextValidation.
  ///
  /// In en, this message translates to:
  /// **'CAT Location must be at least 3 characters long'**
  String get catLocationTextValidation;

  /// No description provided for @catPrice.
  ///
  /// In en, this message translates to:
  /// **'CAT Price'**
  String get catPrice;

  /// No description provided for @catValue.
  ///
  /// In en, this message translates to:
  /// **'CAT Value'**
  String get catValue;

  /// No description provided for @catalyticConverter.
  ///
  /// In en, this message translates to:
  /// **'Catalytic Converter'**
  String get catalyticConverter;

  /// No description provided for @catalyticConverterDetail.
  ///
  /// In en, this message translates to:
  /// **'Catalytic Converter Detail'**
  String get catalyticConverterDetail;

  /// No description provided for @catalyticFill.
  ///
  /// In en, this message translates to:
  /// **'Catalytic Fill'**
  String get catalyticFill;

  /// No description provided for @categoriesLabel.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categoriesLabel;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @cats.
  ///
  /// In en, this message translates to:
  /// **'CAT(s)'**
  String get cats;

  /// No description provided for @celAgreement.
  ///
  /// In en, this message translates to:
  /// **'CEL Agreement'**
  String get celAgreement;

  /// No description provided for @celAgreementDate.
  ///
  /// In en, this message translates to:
  /// **'CEL Agreement Date'**
  String get celAgreementDate;

  /// No description provided for @celAgreementExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'CEL Agreement Expiry Date'**
  String get celAgreementExpiryDate;

  /// No description provided for @celTnCScroll.
  ///
  /// In en, this message translates to:
  /// **'CEL terms and conditions (Scroll to end and accept)'**
  String get celTnCScroll;

  /// No description provided for @cellNumber.
  ///
  /// In en, this message translates to:
  /// **'Cell Number'**
  String get cellNumber;

  /// No description provided for @cellValue.
  ///
  /// In en, this message translates to:
  /// **'CellValue'**
  String get cellValue;

  /// No description provided for @certificationMethod.
  ///
  /// In en, this message translates to:
  /// **'Certification Method'**
  String get certificationMethod;

  /// No description provided for @cfcAgreementDate.
  ///
  /// In en, this message translates to:
  /// **'CFC Agreement Date'**
  String get cfcAgreementDate;

  /// No description provided for @cfcAgreementExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'CFC Agreement Expiry Date'**
  String get cfcAgreementExpiryDate;

  /// No description provided for @changeAccount.
  ///
  /// In en, this message translates to:
  /// **'Change Account'**
  String get changeAccount;

  /// No description provided for @changeCollectionOperator.
  ///
  /// In en, this message translates to:
  /// **'Change Collection Operator'**
  String get changeCollectionOperator;

  /// No description provided for @changeInCommercialAgreement.
  ///
  /// In en, this message translates to:
  /// **'Change in commercial agreement'**
  String get changeInCommercialAgreement;

  /// No description provided for @changePostCode.
  ///
  /// In en, this message translates to:
  /// **'Change Post Code'**
  String get changePostCode;

  /// No description provided for @changeRequestPending.
  ///
  /// In en, this message translates to:
  /// **'Change Request Pending'**
  String get changeRequestPending;

  /// No description provided for @changeTrackingDates.
  ///
  /// In en, this message translates to:
  /// **'Change tracking dates'**
  String get changeTrackingDates;

  /// No description provided for @changeTypeTo.
  ///
  /// In en, this message translates to:
  /// **'Change Type To'**
  String get changeTypeTo;

  /// No description provided for @changeYard.
  ///
  /// In en, this message translates to:
  /// **'Change Yard'**
  String get changeYard;

  /// No description provided for @changeZipCode.
  ///
  /// In en, this message translates to:
  /// **'Change ZIP Code'**
  String get changeZipCode;

  /// No description provided for @changesConfirmation.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to apply changes. Continue?'**
  String get changesConfirmation;

  /// No description provided for @changingAccount.
  ///
  /// In en, this message translates to:
  /// **'Changing Account'**
  String get changingAccount;

  /// No description provided for @chart.
  ///
  /// In en, this message translates to:
  /// **'Chart'**
  String get chart;

  /// No description provided for @chartFrequency.
  ///
  /// In en, this message translates to:
  /// **'Chart Frequency'**
  String get chartFrequency;

  /// No description provided for @checkAll.
  ///
  /// In en, this message translates to:
  /// **'Check All'**
  String get checkAll;

  /// No description provided for @checkForW9.
  ///
  /// In en, this message translates to:
  /// **'Check for W-9'**
  String get checkForW9;

  /// No description provided for @checkInternetTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please check internet connection and try again'**
  String get checkInternetTryAgain;

  /// No description provided for @checkPaymentProcessorLogsAzure.
  ///
  /// In en, this message translates to:
  /// **'Check Payment Processor logs in Azure'**
  String get checkPaymentProcessorLogsAzure;

  /// No description provided for @checkPostingDataCheckFunctionLogs.
  ///
  /// In en, this message translates to:
  /// **'Check PostingDataCheckFunction logs in Azure'**
  String get checkPostingDataCheckFunctionLogs;

  /// No description provided for @checkWeighbridgeSyncLogs.
  ///
  /// In en, this message translates to:
  /// **'Check logs for Weighbridge sync task'**
  String get checkWeighbridgeSyncLogs;

  /// No description provided for @checkingCode.
  ///
  /// In en, this message translates to:
  /// **'Checking Code'**
  String get checkingCode;

  /// No description provided for @checkingYards.
  ///
  /// In en, this message translates to:
  /// **'Checking Yards'**
  String get checkingYards;

  /// No description provided for @chequeBooks.
  ///
  /// In en, this message translates to:
  /// **'Cheque Books'**
  String get chequeBooks;

  /// No description provided for @chequeEncashingCompanies.
  ///
  /// In en, this message translates to:
  /// **'Cheque Encashing Companies'**
  String get chequeEncashingCompanies;

  /// No description provided for @chequeNumber.
  ///
  /// In en, this message translates to:
  /// **'Cheque Number'**
  String get chequeNumber;

  /// No description provided for @chequeOnly.
  ///
  /// In en, this message translates to:
  /// **'Cheque only'**
  String get chequeOnly;

  /// No description provided for @chequePrinter.
  ///
  /// In en, this message translates to:
  /// **'Cheque Printer'**
  String get chequePrinter;

  /// No description provided for @chkDefabRequired.
  ///
  /// In en, this message translates to:
  /// **'Defab Required'**
  String get chkDefabRequired;

  /// No description provided for @choiceChipTextAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get choiceChipTextAll;

  /// No description provided for @choiceChipTextAssigned.
  ///
  /// In en, this message translates to:
  /// **'Allocated'**
  String get choiceChipTextAssigned;

  /// No description provided for @choiceChipTextSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get choiceChipTextSelected;

  /// No description provided for @choiceChipTextUnassigned.
  ///
  /// In en, this message translates to:
  /// **'Unallocated'**
  String get choiceChipTextUnassigned;

  /// No description provided for @chooseAReasonToSkip.
  ///
  /// In en, this message translates to:
  /// **'Choose a reason to skip'**
  String get chooseAReasonToSkip;

  /// No description provided for @chooseATemplate.
  ///
  /// In en, this message translates to:
  /// **'Choose a template'**
  String get chooseATemplate;

  /// No description provided for @chooseReason.
  ///
  /// In en, this message translates to:
  /// **'Choose a reason'**
  String get chooseReason;

  /// No description provided for @chooseSpecificCatFor.
  ///
  /// In en, this message translates to:
  /// **'Choose specific CAT, for '**
  String get chooseSpecificCatFor;

  /// No description provided for @chooseYourCountry.
  ///
  /// In en, this message translates to:
  /// **'Choose your country'**
  String get chooseYourCountry;

  /// No description provided for @chooseaFileToUploadHint.
  ///
  /// In en, this message translates to:
  /// **'Choose a file to upload'**
  String get chooseaFileToUploadHint;

  /// No description provided for @chromeData.
  ///
  /// In en, this message translates to:
  /// **'Chrome Data'**
  String get chromeData;

  /// No description provided for @chromeDataVinDecode.
  ///
  /// In en, this message translates to:
  /// **'Chrome Data VIN Decode'**
  String get chromeDataVinDecode;

  /// No description provided for @chromeWheels.
  ///
  /// In en, this message translates to:
  /// **'Chrome Wheels'**
  String get chromeWheels;

  /// No description provided for @chromes.
  ///
  /// In en, this message translates to:
  /// **'Chromes'**
  String get chromes;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @classification.
  ///
  /// In en, this message translates to:
  /// **'Classification'**
  String get classification;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @clearBasket.
  ///
  /// In en, this message translates to:
  /// **'Clear Basket'**
  String get clearBasket;

  /// No description provided for @clearSelection.
  ///
  /// In en, this message translates to:
  /// **'Clear selection'**
  String get clearSelection;

  /// No description provided for @clearSignature.
  ///
  /// In en, this message translates to:
  /// **'Clear signature'**
  String get clearSignature;

  /// No description provided for @clickHere.
  ///
  /// In en, this message translates to:
  /// **'Click here'**
  String get clickHere;

  /// No description provided for @clickHereToBrowse.
  ///
  /// In en, this message translates to:
  /// **'Click here to browse'**
  String get clickHereToBrowse;

  /// No description provided for @clickHereToReturnHome.
  ///
  /// In en, this message translates to:
  /// **'Click here to return home'**
  String get clickHereToReturnHome;

  /// No description provided for @clickToEdit.
  ///
  /// In en, this message translates to:
  /// **'Click To Edit'**
  String get clickToEdit;

  /// No description provided for @clickToSyncTicket.
  ///
  /// In en, this message translates to:
  /// **'Click to Sync Ticket'**
  String get clickToSyncTicket;

  /// No description provided for @clickToUnlock.
  ///
  /// In en, this message translates to:
  /// **'Click here to unlock'**
  String get clickToUnlock;

  /// No description provided for @clickingHere.
  ///
  /// In en, this message translates to:
  /// **'clicking here'**
  String get clickingHere;

  /// No description provided for @clientApproval.
  ///
  /// In en, this message translates to:
  /// **'Client Approval'**
  String get clientApproval;

  /// No description provided for @clientDiagnosticTool.
  ///
  /// In en, this message translates to:
  /// **'Client Diagnostic Tool'**
  String get clientDiagnosticTool;

  /// No description provided for @clientNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a Category name'**
  String get clientNameHint;

  /// No description provided for @clientNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get clientNameLabel;

  /// No description provided for @clientNameValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a category name'**
  String get clientNameValidation;

  /// No description provided for @clients.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get clients;

  /// No description provided for @clone.
  ///
  /// In en, this message translates to:
  /// **'Clone'**
  String get clone;

  /// No description provided for @cloneBomSuccessful.
  ///
  /// In en, this message translates to:
  /// **'The bill of materials has been cloned successfully'**
  String get cloneBomSuccessful;

  /// No description provided for @cloneFromDateTime.
  ///
  /// In en, this message translates to:
  /// **'Clone From Date'**
  String get cloneFromDateTime;

  /// No description provided for @cloneJob.
  ///
  /// In en, this message translates to:
  /// **'Clone Job'**
  String get cloneJob;

  /// No description provided for @cloneJobsForward.
  ///
  /// In en, this message translates to:
  /// **'Clone Jobs Forward'**
  String get cloneJobsForward;

  /// No description provided for @clonePlan.
  ///
  /// In en, this message translates to:
  /// **'Clone Plan'**
  String get clonePlan;

  /// No description provided for @clonePlanForDays.
  ///
  /// In en, this message translates to:
  /// **'Clone Plan (Weekdays)'**
  String get clonePlanForDays;

  /// No description provided for @cloneQuote.
  ///
  /// In en, this message translates to:
  /// **'Clone Quote'**
  String get cloneQuote;

  /// No description provided for @cloneStocktake.
  ///
  /// In en, this message translates to:
  /// **'Clone Stock Take'**
  String get cloneStocktake;

  /// No description provided for @cloneToDateTime.
  ///
  /// In en, this message translates to:
  /// **'Clone To Date'**
  String get cloneToDateTime;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @closeContract.
  ///
  /// In en, this message translates to:
  /// **'Close contract'**
  String get closeContract;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @closureType.
  ///
  /// In en, this message translates to:
  /// **'Closure type'**
  String get closureType;

  /// No description provided for @codaAnalysisCode.
  ///
  /// In en, this message translates to:
  /// **'CODA Analysis Code'**
  String get codaAnalysisCode;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @codeFormat.
  ///
  /// In en, this message translates to:
  /// **'Code Format'**
  String get codeFormat;

  /// No description provided for @codeIsAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'Code is already in use'**
  String get codeIsAlreadyInUse;

  /// No description provided for @codeMaxLengthError.
  ///
  /// In en, this message translates to:
  /// **'Code cannot exceed {maxLength} characters'**
  String codeMaxLengthError(Object maxLength);

  /// No description provided for @colPrice.
  ///
  /// In en, this message translates to:
  /// **'Col Price'**
  String get colPrice;

  /// No description provided for @collectFromRegistered.
  ///
  /// In en, this message translates to:
  /// **'Collect From Registered'**
  String get collectFromRegistered;

  /// No description provided for @collected.
  ///
  /// In en, this message translates to:
  /// **'Collected'**
  String get collected;

  /// No description provided for @collectedChargeDetails.
  ///
  /// In en, this message translates to:
  /// **'Collected Charge Details'**
  String get collectedChargeDetails;

  /// No description provided for @collectedCost.
  ///
  /// In en, this message translates to:
  /// **'Collected Cost'**
  String get collectedCost;

  /// No description provided for @collectedDelta.
  ///
  /// In en, this message translates to:
  /// **'Collected Delta'**
  String get collectedDelta;

  /// No description provided for @collectedFullyCharged.
  ///
  /// In en, this message translates to:
  /// **'Collected fully charged'**
  String get collectedFullyCharged;

  /// No description provided for @collectedLessCharge.
  ///
  /// In en, this message translates to:
  /// **'Collected less charge'**
  String get collectedLessCharge;

  /// No description provided for @collectedPrice.
  ///
  /// In en, this message translates to:
  /// **'Collected Price'**
  String get collectedPrice;

  /// No description provided for @collectionAddress.
  ///
  /// In en, this message translates to:
  /// **'Collection Address'**
  String get collectionAddress;

  /// No description provided for @collectionCost.
  ///
  /// In en, this message translates to:
  /// **'Collection Cost'**
  String get collectionCost;

  /// No description provided for @collectionCostIfSelected.
  ///
  /// In en, this message translates to:
  /// **'Collection Cost (If selected)'**
  String get collectionCostIfSelected;

  /// No description provided for @collectionDate.
  ///
  /// In en, this message translates to:
  /// **'Collection Date'**
  String get collectionDate;

  /// No description provided for @collectionDateandTime.
  ///
  /// In en, this message translates to:
  /// **'Collection Date and Time'**
  String get collectionDateandTime;

  /// No description provided for @collectionDetails.
  ///
  /// In en, this message translates to:
  /// **'Collection Details'**
  String get collectionDetails;

  /// No description provided for @collectionOperator.
  ///
  /// In en, this message translates to:
  /// **'Collection Operator'**
  String get collectionOperator;

  /// No description provided for @collectionOperatorCodeorName.
  ///
  /// In en, this message translates to:
  /// **'Collection Operator Code or Name'**
  String get collectionOperatorCodeorName;

  /// No description provided for @collectionOptions.
  ///
  /// In en, this message translates to:
  /// **'Collection Options'**
  String get collectionOptions;

  /// No description provided for @collectionRequired.
  ///
  /// In en, this message translates to:
  /// **'Collection Required'**
  String get collectionRequired;

  /// No description provided for @collectionStatus.
  ///
  /// In en, this message translates to:
  /// **'Collection Status'**
  String get collectionStatus;

  /// No description provided for @collectionTime.
  ///
  /// In en, this message translates to:
  /// **'Collection Time'**
  String get collectionTime;

  /// No description provided for @collectionYard.
  ///
  /// In en, this message translates to:
  /// **'Collection Yard'**
  String get collectionYard;

  /// No description provided for @colour.
  ///
  /// In en, this message translates to:
  /// **'Colour'**
  String get colour;

  /// No description provided for @column.
  ///
  /// In en, this message translates to:
  /// **'Column'**
  String get column;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @comingSoonText.
  ///
  /// In en, this message translates to:
  /// **'Coming soon!'**
  String get comingSoonText;

  /// No description provided for @commentDeletionConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this comment?'**
  String get commentDeletionConfirmation;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @commercialBuyingAdmin.
  ///
  /// In en, this message translates to:
  /// **'Commercial Buying Admin'**
  String get commercialBuyingAdmin;

  /// No description provided for @commercialSalesAdmin.
  ///
  /// In en, this message translates to:
  /// **'Commercial Sales Admin'**
  String get commercialSalesAdmin;

  /// No description provided for @commodity.
  ///
  /// In en, this message translates to:
  /// **'Commodity'**
  String get commodity;

  /// No description provided for @communicationContact.
  ///
  /// In en, this message translates to:
  /// **'Communication Contact'**
  String get communicationContact;

  /// No description provided for @compNine.
  ///
  /// In en, this message translates to:
  /// **'CompNine'**
  String get compNine;

  /// No description provided for @companies.
  ///
  /// In en, this message translates to:
  /// **'Companies'**
  String get companies;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @companyBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Company Bank Account'**
  String get companyBankAccount;

  /// No description provided for @companyBankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Company Bank Accounts'**
  String get companyBankAccounts;

  /// No description provided for @companyBankStatement.
  ///
  /// In en, this message translates to:
  /// **'Company Bank Statement'**
  String get companyBankStatement;

  /// No description provided for @companyCode.
  ///
  /// In en, this message translates to:
  /// **'Company Code'**
  String get companyCode;

  /// No description provided for @companyDetails.
  ///
  /// In en, this message translates to:
  /// **'Company Details'**
  String get companyDetails;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get companyName;

  /// No description provided for @companyPayingInSlip.
  ///
  /// In en, this message translates to:
  /// **'Company Paying In Slip'**
  String get companyPayingInSlip;

  /// No description provided for @companyPreference.
  ///
  /// In en, this message translates to:
  /// **'Company Preference'**
  String get companyPreference;

  /// No description provided for @companyRegNo.
  ///
  /// In en, this message translates to:
  /// **'Company Registration Number'**
  String get companyRegNo;

  /// No description provided for @companyValidation.
  ///
  /// In en, this message translates to:
  /// **'No company found for the entered purchase order number.'**
  String get companyValidation;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @completeAllMarkedItems.
  ///
  /// In en, this message translates to:
  /// **'Complete all marked items'**
  String get completeAllMarkedItems;

  /// No description provided for @completeDismantling.
  ///
  /// In en, this message translates to:
  /// **'Complete Dismantling'**
  String get completeDismantling;

  /// No description provided for @completeInspection.
  ///
  /// In en, this message translates to:
  /// **'Complete Inspection'**
  String get completeInspection;

  /// No description provided for @completeLoadout.
  ///
  /// In en, this message translates to:
  /// **'Complete Load Out'**
  String get completeLoadout;

  /// No description provided for @completeQuote.
  ///
  /// In en, this message translates to:
  /// **'Complete Quote'**
  String get completeQuote;

  /// No description provided for @completeStockTakeNoStockImpact.
  ///
  /// In en, this message translates to:
  /// **'Complete Stock Take – No Stock Impact'**
  String get completeStockTakeNoStockImpact;

  /// No description provided for @completeStockTakeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Stock take has been marked as completed'**
  String get completeStockTakeSuccess;

  /// No description provided for @completeStocktake.
  ///
  /// In en, this message translates to:
  /// **'Complete Stock Take'**
  String get completeStocktake;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @completedBy.
  ///
  /// In en, this message translates to:
  /// **'Completed By'**
  String get completedBy;

  /// No description provided for @completedJobs.
  ///
  /// In en, this message translates to:
  /// **'Completed Jobs'**
  String get completedJobs;

  /// No description provided for @completedNoPosition.
  ///
  /// In en, this message translates to:
  /// **'Completed - No Position'**
  String get completedNoPosition;

  /// No description provided for @component.
  ///
  /// In en, this message translates to:
  /// **'Component'**
  String get component;

  /// No description provided for @concentration.
  ///
  /// In en, this message translates to:
  /// **'Concentration'**
  String get concentration;

  /// No description provided for @condition.
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get condition;

  /// No description provided for @conductedBy.
  ///
  /// In en, this message translates to:
  /// **'Conducted By'**
  String get conductedBy;

  /// No description provided for @config.
  ///
  /// In en, this message translates to:
  /// **'Config'**
  String get config;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @confirmDelete.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirmDelete;

  /// No description provided for @confirmDeleteClient.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this category?'**
  String get confirmDeleteClient;

  /// No description provided for @confirmDeleteHaulier.
  ///
  /// In en, this message translates to:
  /// **'Do you want to remove this haulier?'**
  String get confirmDeleteHaulier;

  /// No description provided for @confirmDeleteList.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this list?'**
  String get confirmDeleteList;

  /// No description provided for @confirmDeleteLocationWeight.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {weightTitle}?'**
  String confirmDeleteLocationWeight(Object weightTitle);

  /// Confirmation message shown before deleting an entity
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this {entityName}?'**
  String confirmDeleteMessage(String entityName);

  /// No description provided for @confirmDeleteScheduleItem.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this schedule item'**
  String get confirmDeleteScheduleItem;

  /// No description provided for @confirmDeleteStockTakeConfig.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this stock take configuration?'**
  String get confirmDeleteStockTakeConfig;

  /// No description provided for @confirmDeleteTeam.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this team?'**
  String get confirmDeleteTeam;

  /// No description provided for @confirmDeletion.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get confirmDeletion;

  /// No description provided for @confirmExit.
  ///
  /// In en, this message translates to:
  /// **'Confirm Exit'**
  String get confirmExit;

  /// No description provided for @confirmJobStart.
  ///
  /// In en, this message translates to:
  /// **'Confirm Job Start'**
  String get confirmJobStart;

  /// No description provided for @confirmLot.
  ///
  /// In en, this message translates to:
  /// **'Confirm Lot'**
  String get confirmLot;

  /// No description provided for @confirmMediaDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this media?'**
  String get confirmMediaDelete;

  /// No description provided for @confirmRemoveDiscrepancy.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this discrepancy? Any attached images will be removed.'**
  String get confirmRemoveDiscrepancy;

  /// No description provided for @confirmSTODeletion.
  ///
  /// In en, this message translates to:
  /// **'Confirm Standing Order Deletion'**
  String get confirmSTODeletion;

  /// No description provided for @confirmSTODeletionMsg.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete Standing Order'**
  String get confirmSTODeletionMsg;

  /// No description provided for @confirmSTOUpdationMsg.
  ///
  /// In en, this message translates to:
  /// **'Do you want to update Standing Order'**
  String get confirmSTOUpdationMsg;

  /// No description provided for @confirmSelectedAsFound.
  ///
  /// In en, this message translates to:
  /// **'Confirm selected staff/visitors as found'**
  String get confirmSelectedAsFound;

  /// No description provided for @confirmSelectedDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the selected item(s)?'**
  String get confirmSelectedDelete;

  /// No description provided for @confirmTagDeleteMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to proceed with deleting this tag?'**
  String get confirmTagDeleteMessage;

  /// No description provided for @confirmYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Confirm your email'**
  String get confirmYourEmail;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @confirmationActivateScheduler.
  ///
  /// In en, this message translates to:
  /// **'Are you sure, you want to activate this scheduler ?'**
  String get confirmationActivateScheduler;

  /// No description provided for @confirmationCreateValidationTask.
  ///
  /// In en, this message translates to:
  /// **'This will create a new work order to validate. Do you want to continue ?'**
  String get confirmationCreateValidationTask;

  /// No description provided for @confirmationCreditNoteSubmission.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you wish to submit this Credit note for total {totalAmount}'**
  String confirmationCreditNoteSubmission(Object totalAmount);

  /// No description provided for @confirmationDeactivateScheduler.
  ///
  /// In en, this message translates to:
  /// **'Are you sure, you want to deactivate this scheduler ?'**
  String get confirmationDeactivateScheduler;

  /// No description provided for @confirmationDisableSignature.
  ///
  /// In en, this message translates to:
  /// **'Are you sure, you want to diable digital signature for this scheduler ?'**
  String get confirmationDisableSignature;

  /// No description provided for @confirmationEnableSignature.
  ///
  /// In en, this message translates to:
  /// **'Are you sure, you want to enable digital signature for this scheduler ?'**
  String get confirmationEnableSignature;

  /// No description provided for @confirmationInvoiceSubmission.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you wish to submit this Invoice for total {totalAmount}'**
  String confirmationInvoiceSubmission(Object totalAmount);

  /// No description provided for @confirmationToMove.
  ///
  /// In en, this message translates to:
  /// **'Confirmation to Move'**
  String get confirmationToMove;

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get confirmed;

  /// No description provided for @confirming.
  ///
  /// In en, this message translates to:
  /// **'Confirming'**
  String get confirming;

  /// No description provided for @confirmingQuote.
  ///
  /// In en, this message translates to:
  /// **'Confirming Quote'**
  String get confirmingQuote;

  /// No description provided for @confrimDeleteRecord.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to do this?'**
  String get confrimDeleteRecord;

  /// No description provided for @consignOnBehalfOf.
  ///
  /// In en, this message translates to:
  /// **'Consign on behalf of'**
  String get consignOnBehalfOf;

  /// No description provided for @consignOnBehalfOfValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the name of company that the waste is being consigned on behalf of'**
  String get consignOnBehalfOfValidationText;

  /// No description provided for @consigneeAddress.
  ///
  /// In en, this message translates to:
  /// **'Consignee Address'**
  String get consigneeAddress;

  /// No description provided for @consigneeAddressValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the address of the waste receiver'**
  String get consigneeAddressValidationText;

  /// No description provided for @consigneeName.
  ///
  /// In en, this message translates to:
  /// **'Consignee Name'**
  String get consigneeName;

  /// No description provided for @consigneeNameValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the name of the person receiving the waste'**
  String get consigneeNameValidationText;

  /// No description provided for @consigneeOnBehalfOf.
  ///
  /// In en, this message translates to:
  /// **'Consignee On behalf of'**
  String get consigneeOnBehalfOf;

  /// No description provided for @consigneePostcode.
  ///
  /// In en, this message translates to:
  /// **'Consignee Postcode'**
  String get consigneePostcode;

  /// No description provided for @consigneePostcodeValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the premises waste permit or exemption number'**
  String get consigneePostcodeValidationText;

  /// No description provided for @consigneeWPorExemNo.
  ///
  /// In en, this message translates to:
  /// **'Consignee Premises Permit / Exemption No.'**
  String get consigneeWPorExemNo;

  /// No description provided for @consigneeWPorExemNoValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the premises waste permit or exemption number'**
  String get consigneeWPorExemNoValidationText;

  /// No description provided for @consignmentAlreadyCreated.
  ///
  /// In en, this message translates to:
  /// **'Consignment note already created for ticket'**
  String get consignmentAlreadyCreated;

  /// No description provided for @consignmentCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Consignment Created successfully'**
  String get consignmentCreatedSuccessfully;

  /// No description provided for @consignmentInfo.
  ///
  /// In en, this message translates to:
  /// **'Consignment Info'**
  String get consignmentInfo;

  /// No description provided for @consignmentNote.
  ///
  /// In en, this message translates to:
  /// **'Consignment Note'**
  String get consignmentNote;

  /// No description provided for @consignmentNoteNumber.
  ///
  /// In en, this message translates to:
  /// **'Consignment Note Number'**
  String get consignmentNoteNumber;

  /// No description provided for @consignmentValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter your consignment note number before continuing'**
  String get consignmentValidationText;

  /// No description provided for @consignorName.
  ///
  /// In en, this message translates to:
  /// **'Consignor Name'**
  String get consignorName;

  /// No description provided for @consignorNameValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the name of the consignor for the waste'**
  String get consignorNameValidationText;

  /// No description provided for @consoleLogger.
  ///
  /// In en, this message translates to:
  /// **'Console Logger'**
  String get consoleLogger;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @contactDeleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Contact deleted successfully.'**
  String get contactDeleteSuccess;

  /// No description provided for @contactEmail.
  ///
  /// In en, this message translates to:
  /// **'Contact Email'**
  String get contactEmail;

  /// No description provided for @contactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact Info'**
  String get contactInfo;

  /// No description provided for @contactName.
  ///
  /// In en, this message translates to:
  /// **'Contact Name'**
  String get contactName;

  /// No description provided for @contactNumber.
  ///
  /// In en, this message translates to:
  /// **'Contact Number'**
  String get contactNumber;

  /// No description provided for @contactPreferences.
  ///
  /// In en, this message translates to:
  /// **'Contact Preferences'**
  String get contactPreferences;

  /// No description provided for @contactSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Contact saved successfully.'**
  String get contactSavedSuccessfully;

  /// No description provided for @contactType.
  ///
  /// In en, this message translates to:
  /// **'Contact Type'**
  String get contactType;

  /// No description provided for @contactTypeAlreadyExistsError.
  ///
  /// In en, this message translates to:
  /// **'{conflictTypeText} type already exists. Please remove it and try saving again.'**
  String contactTypeAlreadyExistsError(Object conflictTypeText);

  /// No description provided for @contactTypeNotSet.
  ///
  /// In en, this message translates to:
  /// **'Contact type not set'**
  String get contactTypeNotSet;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @contactUsDetailsNotFoundFor.
  ///
  /// In en, this message translates to:
  /// **'Contact us details not found for {partyAccountNumber}'**
  String contactUsDetailsNotFoundFor(Object partyAccountNumber);

  /// No description provided for @contacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contacts;

  /// No description provided for @container.
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get container;

  /// No description provided for @containerAgeSuitable.
  ///
  /// In en, this message translates to:
  /// **'Container age suitable for loading metal scrap? (advisory age min. 8 years old)'**
  String get containerAgeSuitable;

  /// No description provided for @containerAlreadyScannedMsg.
  ///
  /// In en, this message translates to:
  /// **'Container cannot be removed !\\n As it\'s already scanned by driver'**
  String get containerAlreadyScannedMsg;

  /// No description provided for @containerCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Container Created Successfully'**
  String get containerCreatedSuccessfully;

  /// No description provided for @containerCustomerDisplay.
  ///
  /// In en, this message translates to:
  /// **'Containers at Customer Location'**
  String get containerCustomerDisplay;

  /// No description provided for @containerDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Container Deleted Successfully'**
  String get containerDeletedSuccessfully;

  /// No description provided for @containerDetails.
  ///
  /// In en, this message translates to:
  /// **'Container Details'**
  String get containerDetails;

  /// No description provided for @containerDrop.
  ///
  /// In en, this message translates to:
  /// **'Container (Drop)'**
  String get containerDrop;

  /// No description provided for @containerHalfLoadedWithContainerNumber.
  ///
  /// In en, this message translates to:
  /// **'Half Loaded Container'**
  String get containerHalfLoadedWithContainerNumber;

  /// No description provided for @containerId.
  ///
  /// In en, this message translates to:
  /// **'Container ID'**
  String get containerId;

  /// No description provided for @containerImageGallery.
  ///
  /// In en, this message translates to:
  /// **'Container Image Gallery'**
  String get containerImageGallery;

  /// No description provided for @containerLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get containerLocation;

  /// No description provided for @containerNetWeightRestriction.
  ///
  /// In en, this message translates to:
  /// **'Container net weight under max payload & within contract eight restriction?'**
  String get containerNetWeightRestriction;

  /// No description provided for @containerNumber.
  ///
  /// In en, this message translates to:
  /// **'Container Number'**
  String get containerNumber;

  /// No description provided for @containerNumberAbbr.
  ///
  /// In en, this message translates to:
  /// **'CTN'**
  String get containerNumberAbbr;

  /// No description provided for @containerPick.
  ///
  /// In en, this message translates to:
  /// **'Container (Pick)'**
  String get containerPick;

  /// No description provided for @containerReqWarningMsg.
  ///
  /// In en, this message translates to:
  /// **'A container needs to be added'**
  String get containerReqWarningMsg;

  /// No description provided for @containerSize.
  ///
  /// In en, this message translates to:
  /// **'Container Size'**
  String get containerSize;

  /// No description provided for @containerToExpireInNext.
  ///
  /// In en, this message translates to:
  /// **'Containers to expire in next'**
  String get containerToExpireInNext;

  /// No description provided for @containerType.
  ///
  /// In en, this message translates to:
  /// **'Container type'**
  String get containerType;

  /// No description provided for @containerUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Container Updated Successfully'**
  String get containerUpdatedSuccessfully;

  /// No description provided for @containers.
  ///
  /// In en, this message translates to:
  /// **'Containers'**
  String get containers;

  /// No description provided for @containersAtStartLocation.
  ///
  /// In en, this message translates to:
  /// **'Containers at Start Location'**
  String get containersAtStartLocation;

  /// No description provided for @containersLeftToUpdate.
  ///
  /// In en, this message translates to:
  /// **'Containers Left to Update'**
  String get containersLeftToUpdate;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get content;

  /// No description provided for @continueForm.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueForm;

  /// No description provided for @contraAgreed.
  ///
  /// In en, this message translates to:
  /// **'Contra Agreed'**
  String get contraAgreed;

  /// No description provided for @contract.
  ///
  /// In en, this message translates to:
  /// **'Contract'**
  String get contract;

  /// No description provided for @contractClosedSuccessfullyMessage.
  ///
  /// In en, this message translates to:
  /// **'The contract was closed successfully.'**
  String get contractClosedSuccessfullyMessage;

  /// No description provided for @contractCompleteAsPerContractualTerms.
  ///
  /// In en, this message translates to:
  /// **'Contract complete as per contractual terms'**
  String get contractCompleteAsPerContractualTerms;

  /// No description provided for @contractDetails.
  ///
  /// In en, this message translates to:
  /// **'Contract Details'**
  String get contractDetails;

  /// No description provided for @contractErrorOrIncorrectTerms.
  ///
  /// In en, this message translates to:
  /// **'Contract error or incorrect terms'**
  String get contractErrorOrIncorrectTerms;

  /// No description provided for @contractExpiredOrOutOfDate.
  ///
  /// In en, this message translates to:
  /// **'Contract expired or out of date'**
  String get contractExpiredOrOutOfDate;

  /// No description provided for @contractExtendedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Contract extended successfully.'**
  String get contractExtendedSuccessfully;

  /// No description provided for @contractHeader.
  ///
  /// In en, this message translates to:
  /// **'Contract Header'**
  String get contractHeader;

  /// No description provided for @contractLines.
  ///
  /// In en, this message translates to:
  /// **'Contract Lines'**
  String get contractLines;

  /// No description provided for @contractPricedManually.
  ///
  /// In en, this message translates to:
  /// **'Contract priced manually'**
  String get contractPricedManually;

  /// No description provided for @contractRef.
  ///
  /// In en, this message translates to:
  /// **'Contract Ref'**
  String get contractRef;

  /// No description provided for @contractType.
  ///
  /// In en, this message translates to:
  /// **'Contract Type'**
  String get contractType;

  /// No description provided for @contractor.
  ///
  /// In en, this message translates to:
  /// **'Contractor'**
  String get contractor;

  /// No description provided for @contracts.
  ///
  /// In en, this message translates to:
  /// **'Contracts'**
  String get contracts;

  /// No description provided for @convertTo.
  ///
  /// In en, this message translates to:
  /// **'Convert to'**
  String get convertTo;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to Clipboard'**
  String get copiedToClipboard;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copyAndEditThisBatchQuote.
  ///
  /// In en, this message translates to:
  /// **'Copy & Edit This Batch Quote'**
  String get copyAndEditThisBatchQuote;

  /// No description provided for @copyContract.
  ///
  /// In en, this message translates to:
  /// **'Copy Contract'**
  String get copyContract;

  /// No description provided for @copyHaulierCode.
  ///
  /// In en, this message translates to:
  /// **'Copy Haulier Code to Clipboard'**
  String get copyHaulierCode;

  /// No description provided for @copyOfCompanyCheque.
  ///
  /// In en, this message translates to:
  /// **'Copy Of Company Cheque'**
  String get copyOfCompanyCheque;

  /// No description provided for @copyTag.
  ///
  /// In en, this message translates to:
  /// **'Copy Tag'**
  String get copyTag;

  /// No description provided for @copyTagRangeError.
  ///
  /// In en, this message translates to:
  /// **'The new tag \'[tagReason]\' with validity from [EffectiveFrom] to [EffectiveTo] intersects with an already active tag.'**
  String get copyTagRangeError;

  /// No description provided for @copyVrm.
  ///
  /// In en, this message translates to:
  /// **'Copy Vrm to Clipboard'**
  String get copyVrm;

  /// No description provided for @cornerCastings.
  ///
  /// In en, this message translates to:
  /// **'Corner Castings'**
  String get cornerCastings;

  /// No description provided for @correctTheValidationErrors.
  ///
  /// In en, this message translates to:
  /// **'Please correct the validation error(s).'**
  String get correctTheValidationErrors;

  /// No description provided for @cost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get cost;

  /// No description provided for @costAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Cost Adjustment'**
  String get costAdjustment;

  /// No description provided for @costCenter.
  ///
  /// In en, this message translates to:
  /// **'Cost Center'**
  String get costCenter;

  /// No description provided for @costDeduction.
  ///
  /// In en, this message translates to:
  /// **'Cost Deduction'**
  String get costDeduction;

  /// No description provided for @couldNotLoadContractDetails.
  ///
  /// In en, this message translates to:
  /// **'Could not load contract details because there was an error loading the contract data'**
  String get couldNotLoadContractDetails;

  /// No description provided for @couldNotLoadContractDetailsBecauseThereWasAnError.
  ///
  /// In en, this message translates to:
  /// **'Could not load contract details because there was an error loading the contract data'**
  String get couldNotLoadContractDetailsBecauseThereWasAnError;

  /// No description provided for @couldNotOpenPhoneDialer.
  ///
  /// In en, this message translates to:
  /// **'Could not open phone dialler'**
  String get couldNotOpenPhoneDialer;

  /// No description provided for @couldNotPrintAtmQrCode.
  ///
  /// In en, this message translates to:
  /// **'Could not print ATM QR code'**
  String get couldNotPrintAtmQrCode;

  /// No description provided for @couldNotPrintReceipt.
  ///
  /// In en, this message translates to:
  /// **'Could not print Receipt'**
  String get couldNotPrintReceipt;

  /// No description provided for @counter.
  ///
  /// In en, this message translates to:
  /// **'Counter'**
  String get counter;

  /// No description provided for @counterName.
  ///
  /// In en, this message translates to:
  /// **'Counter Name'**
  String get counterName;

  /// No description provided for @counterType.
  ///
  /// In en, this message translates to:
  /// **'Counter Type'**
  String get counterType;

  /// No description provided for @counters.
  ///
  /// In en, this message translates to:
  /// **'Counters'**
  String get counters;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @countryCode.
  ///
  /// In en, this message translates to:
  /// **'Country Code'**
  String get countryCode;

  /// No description provided for @countryCurrencyLink.
  ///
  /// In en, this message translates to:
  /// **'Country / Currency Link'**
  String get countryCurrencyLink;

  /// No description provided for @countryOrState.
  ///
  /// In en, this message translates to:
  /// **'County / State'**
  String get countryOrState;

  /// No description provided for @countryUK.
  ///
  /// In en, this message translates to:
  /// **'UK'**
  String get countryUK;

  /// No description provided for @countryUS.
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get countryUS;

  /// No description provided for @county.
  ///
  /// In en, this message translates to:
  /// **'County'**
  String get county;

  /// No description provided for @countyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a 2 character contact county.'**
  String get countyValidation;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @createAFixedContract.
  ///
  /// In en, this message translates to:
  /// **'Create a Fixed Contract'**
  String get createAFixedContract;

  /// No description provided for @createAPriceList.
  ///
  /// In en, this message translates to:
  /// **'Create A Price List'**
  String get createAPriceList;

  /// No description provided for @createASpotContract.
  ///
  /// In en, this message translates to:
  /// **'Create A Spot Contract'**
  String get createASpotContract;

  /// No description provided for @createATask.
  ///
  /// In en, this message translates to:
  /// **'Create a task'**
  String get createATask;

  /// No description provided for @createATemplate.
  ///
  /// In en, this message translates to:
  /// **'Create a template'**
  String get createATemplate;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @createAdhocTemplate.
  ///
  /// In en, this message translates to:
  /// **'Create Adhoc Template'**
  String get createAdhocTemplate;

  /// No description provided for @createAdhocTemplateNew.
  ///
  /// In en, this message translates to:
  /// **'Create Adhoc Template New'**
  String get createAdhocTemplateNew;

  /// No description provided for @createAdvance.
  ///
  /// In en, this message translates to:
  /// **'Create Advance'**
  String get createAdvance;

  /// No description provided for @createAnAccountBelow.
  ///
  /// In en, this message translates to:
  /// **'Create an Account Below'**
  String get createAnAccountBelow;

  /// No description provided for @createAnotherPriceList.
  ///
  /// In en, this message translates to:
  /// **'Create Another Price List'**
  String get createAnotherPriceList;

  /// No description provided for @createConsignmentNote.
  ///
  /// In en, this message translates to:
  /// **'Creating Consignment Note'**
  String get createConsignmentNote;

  /// No description provided for @createConsignmentTicketTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Consignment for ticket {number} {accountName}'**
  String createConsignmentTicketTitle(Object accountName, Object number);

  /// No description provided for @createContainer.
  ///
  /// In en, this message translates to:
  /// **'Create Container'**
  String get createContainer;

  /// No description provided for @createContractPopupHeading.
  ///
  /// In en, this message translates to:
  /// **'Create a New contract/Price List'**
  String get createContractPopupHeading;

  /// No description provided for @createJob.
  ///
  /// In en, this message translates to:
  /// **'Create Job'**
  String get createJob;

  /// No description provided for @createList.
  ///
  /// In en, this message translates to:
  /// **'Create List'**
  String get createList;

  /// No description provided for @createLot.
  ///
  /// In en, this message translates to:
  /// **'Create Lot'**
  String get createLot;

  /// No description provided for @createNewLine.
  ///
  /// In en, this message translates to:
  /// **'Create New Line'**
  String get createNewLine;

  /// No description provided for @createNewPalletPrompt.
  ///
  /// In en, this message translates to:
  /// **'Create a new Pallet by assiging a QR code.'**
  String get createNewPalletPrompt;

  /// No description provided for @createNewTag.
  ///
  /// In en, this message translates to:
  /// **'Create New Tag'**
  String get createNewTag;

  /// No description provided for @createPallet.
  ///
  /// In en, this message translates to:
  /// **'Create Pallet'**
  String get createPallet;

  /// No description provided for @createPlan.
  ///
  /// In en, this message translates to:
  /// **'Create Plan'**
  String get createPlan;

  /// No description provided for @createPriceList.
  ///
  /// In en, this message translates to:
  /// **'Create Price List'**
  String get createPriceList;

  /// No description provided for @createPriceMatrix.
  ///
  /// In en, this message translates to:
  /// **'Create Price Matrix'**
  String get createPriceMatrix;

  /// No description provided for @createSchedule.
  ///
  /// In en, this message translates to:
  /// **'Create Schedule'**
  String get createSchedule;

  /// No description provided for @createStandingOrder.
  ///
  /// In en, this message translates to:
  /// **'Create Standing Order'**
  String get createStandingOrder;

  /// No description provided for @createStockTake.
  ///
  /// In en, this message translates to:
  /// **'Create Stock Take'**
  String get createStockTake;

  /// No description provided for @createStocktakeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Please fill out the form below to start your stock take and ensure accurate inventory records.'**
  String get createStocktakeInstruction;

  /// No description provided for @createStocktakeNext.
  ///
  /// In en, this message translates to:
  /// **'Next: Select Locations'**
  String get createStocktakeNext;

  /// No description provided for @createTagCategory.
  ///
  /// In en, this message translates to:
  /// **'Create Tag Category'**
  String get createTagCategory;

  /// No description provided for @createTagCategoryError.
  ///
  /// In en, this message translates to:
  /// **'Error in creating tag.'**
  String get createTagCategoryError;

  /// No description provided for @createTagError.
  ///
  /// In en, this message translates to:
  /// **'Error in creating tag'**
  String get createTagError;

  /// No description provided for @createTagTemplate.
  ///
  /// In en, this message translates to:
  /// **'Create Tag Template'**
  String get createTagTemplate;

  /// No description provided for @createTagTemplateError.
  ///
  /// In en, this message translates to:
  /// **'Error in creating tag template.'**
  String get createTagTemplateError;

  /// No description provided for @createTask.
  ///
  /// In en, this message translates to:
  /// **'Create Task'**
  String get createTask;

  /// No description provided for @createTemplate.
  ///
  /// In en, this message translates to:
  /// **'Create Template'**
  String get createTemplate;

  /// No description provided for @createTemplateConfirmationMessage.
  ///
  /// In en, this message translates to:
  /// **'Template changes will be lost!'**
  String get createTemplateConfirmationMessage;

  /// No description provided for @createTemplateConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to go back?'**
  String get createTemplateConfirmationTitle;

  /// No description provided for @createTicket.
  ///
  /// In en, this message translates to:
  /// **'Create Ticket'**
  String get createTicket;

  /// No description provided for @createWorkOrder.
  ///
  /// In en, this message translates to:
  /// **'Create Work Order'**
  String get createWorkOrder;

  /// No description provided for @createWorkRequest.
  ///
  /// In en, this message translates to:
  /// **'Create Work Request'**
  String get createWorkRequest;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get createdAt;

  /// No description provided for @createdBy.
  ///
  /// In en, this message translates to:
  /// **'Created By'**
  String get createdBy;

  /// No description provided for @createdDate.
  ///
  /// In en, this message translates to:
  /// **'Created Date'**
  String get createdDate;

  /// No description provided for @createdDateFrom.
  ///
  /// In en, this message translates to:
  /// **'Created Date From'**
  String get createdDateFrom;

  /// No description provided for @createdDateTo.
  ///
  /// In en, this message translates to:
  /// **'Created Date To'**
  String get createdDateTo;

  /// No description provided for @createdOnDateText.
  ///
  /// In en, this message translates to:
  /// **'Created on '**
  String get createdOnDateText;

  /// No description provided for @creating.
  ///
  /// In en, this message translates to:
  /// **'Creating'**
  String get creating;

  /// No description provided for @creationDate.
  ///
  /// In en, this message translates to:
  /// **'Creation Date'**
  String get creationDate;

  /// No description provided for @creditControl.
  ///
  /// In en, this message translates to:
  /// **'Credit Control'**
  String get creditControl;

  /// No description provided for @creditLimit.
  ///
  /// In en, this message translates to:
  /// **'Credit Limit'**
  String get creditLimit;

  /// No description provided for @creditLimitReviewDate.
  ///
  /// In en, this message translates to:
  /// **'Credit Limit Review Date'**
  String get creditLimitReviewDate;

  /// No description provided for @creditNote.
  ///
  /// In en, this message translates to:
  /// **'Credit Note'**
  String get creditNote;

  /// No description provided for @creditNoteCompanyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a company from the dropdown'**
  String get creditNoteCompanyValidation;

  /// No description provided for @creditNoteDate.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Date'**
  String get creditNoteDate;

  /// No description provided for @creditNoteDateValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter your Credit Note date'**
  String get creditNoteDateValidation;

  /// No description provided for @creditNoteDescription.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Description'**
  String get creditNoteDescription;

  /// No description provided for @creditNoteDetails.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Details'**
  String get creditNoteDetails;

  /// No description provided for @creditNoteEntry.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Entry'**
  String get creditNoteEntry;

  /// No description provided for @creditNoteHeader.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Header'**
  String get creditNoteHeader;

  /// No description provided for @creditNoteNetAmount.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Net Amount'**
  String get creditNoteNetAmount;

  /// No description provided for @creditNoteNo.
  ///
  /// In en, this message translates to:
  /// **'Credit Note No.'**
  String get creditNoteNo;

  /// No description provided for @creditNoteNumberEmptyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter an Credit Note number'**
  String get creditNoteNumberEmptyValidation;

  /// No description provided for @creditNoteNumberTooLongError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid credit note number that is less than 39 characters.'**
  String get creditNoteNumberTooLongError;

  /// No description provided for @creditNoteNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'Please Enter a Valid Credit Note number'**
  String get creditNoteNumberValidation;

  /// No description provided for @creditNotePDFValidation.
  ///
  /// In en, this message translates to:
  /// **'Please upload your Credit Note as a PDF'**
  String get creditNotePDFValidation;

  /// No description provided for @creditNoteSubmitError.
  ///
  /// In en, this message translates to:
  /// **'Credit Note could not be submitted. Please try again.'**
  String get creditNoteSubmitError;

  /// No description provided for @creditNoteSubmitSuccess.
  ///
  /// In en, this message translates to:
  /// **'Credit Note submitted successfully.'**
  String get creditNoteSubmitSuccess;

  /// No description provided for @creditNoteTotal.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Total'**
  String get creditNoteTotal;

  /// No description provided for @creditNoteUploadError.
  ///
  /// In en, this message translates to:
  /// **'Failed to upload credit note, Please try again.'**
  String get creditNoteUploadError;

  /// No description provided for @creditNoteVatAmount.
  ///
  /// In en, this message translates to:
  /// **'Credit Note VAT Amount'**
  String get creditNoteVatAmount;

  /// No description provided for @creditReportDate.
  ///
  /// In en, this message translates to:
  /// **'Credit Report Date'**
  String get creditReportDate;

  /// No description provided for @creditReportValue.
  ///
  /// In en, this message translates to:
  /// **'Credit Report Value'**
  String get creditReportValue;

  /// No description provided for @creditTerms.
  ///
  /// In en, this message translates to:
  /// **'Credit Terms'**
  String get creditTerms;

  /// No description provided for @ctoFAdjust.
  ///
  /// In en, this message translates to:
  /// **'C to F Adjustment'**
  String get ctoFAdjust;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @currencyCode.
  ///
  /// In en, this message translates to:
  /// **'Currency Code'**
  String get currencyCode;

  /// No description provided for @currencyNotLoaded.
  ///
  /// In en, this message translates to:
  /// **'Currency could not be loaded.'**
  String get currencyNotLoaded;

  /// No description provided for @currentIssue.
  ///
  /// In en, this message translates to:
  /// **'Current Issue'**
  String get currentIssue;

  /// No description provided for @currentJob.
  ///
  /// In en, this message translates to:
  /// **'Current Job'**
  String get currentJob;

  /// No description provided for @currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get currentLocation;

  /// No description provided for @currentLocationStatus.
  ///
  /// In en, this message translates to:
  /// **'Current Location Status'**
  String get currentLocationStatus;

  /// No description provided for @currentPermissions.
  ///
  /// In en, this message translates to:
  /// **'Current Permissions'**
  String get currentPermissions;

  /// No description provided for @currentPrice.
  ///
  /// In en, this message translates to:
  /// **'Current Price'**
  String get currentPrice;

  /// No description provided for @currentStage.
  ///
  /// In en, this message translates to:
  /// **'Current Stage'**
  String get currentStage;

  /// No description provided for @currentlySelectedAccount.
  ///
  /// In en, this message translates to:
  /// **'Currently selected account'**
  String get currentlySelectedAccount;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @customerAccount.
  ///
  /// In en, this message translates to:
  /// **'Customer Account'**
  String get customerAccount;

  /// No description provided for @customerCode.
  ///
  /// In en, this message translates to:
  /// **'Customer Code'**
  String get customerCode;

  /// No description provided for @customerCollections.
  ///
  /// In en, this message translates to:
  /// **'Customer Collections'**
  String get customerCollections;

  /// No description provided for @customerContractRef.
  ///
  /// In en, this message translates to:
  /// **'Customer Contract Ref'**
  String get customerContractRef;

  /// No description provided for @customerContractReference.
  ///
  /// In en, this message translates to:
  /// **'Customer Contract Reference'**
  String get customerContractReference;

  /// No description provided for @customerInformationProvided.
  ///
  /// In en, this message translates to:
  /// **'Customer Information Provided'**
  String get customerInformationProvided;

  /// No description provided for @customerInformationProvidedMessage.
  ///
  /// In en, this message translates to:
  /// **'No - Please advice customer to provide details at secure.emrvehiclerecycling.com (B2C) or mobile app (B2B). Once done, click the refresh button to reload. This may take a few minutes to sync.'**
  String get customerInformationProvidedMessage;

  /// No description provided for @customerLocation.
  ///
  /// In en, this message translates to:
  /// **'Customer Location'**
  String get customerLocation;

  /// No description provided for @customerLocationAddress.
  ///
  /// In en, this message translates to:
  /// **'Customer location address.'**
  String get customerLocationAddress;

  /// No description provided for @customerName.
  ///
  /// In en, this message translates to:
  /// **'Customer Name'**
  String get customerName;

  /// No description provided for @customerPaymentTerms.
  ///
  /// In en, this message translates to:
  /// **'Customer Payment Terms'**
  String get customerPaymentTerms;

  /// No description provided for @customerProof.
  ///
  /// In en, this message translates to:
  /// **'CUSTOMER PROOF'**
  String get customerProof;

  /// No description provided for @customerProvenanceInformation.
  ///
  /// In en, this message translates to:
  /// **'Customer and Provenance Information'**
  String get customerProvenanceInformation;

  /// No description provided for @customerReference.
  ///
  /// In en, this message translates to:
  /// **'Customer Reference'**
  String get customerReference;

  /// No description provided for @customerVatGroup.
  ///
  /// In en, this message translates to:
  /// **'Customer VAT Group'**
  String get customerVatGroup;

  /// No description provided for @customers.
  ///
  /// In en, this message translates to:
  /// **'Customers'**
  String get customers;

  /// No description provided for @customersEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Customers Email Address'**
  String get customersEmailAddress;

  /// No description provided for @cut.
  ///
  /// In en, this message translates to:
  /// **'Cut'**
  String get cut;

  /// No description provided for @cutStatus.
  ///
  /// In en, this message translates to:
  /// **'CUT'**
  String get cutStatus;

  /// No description provided for @cutting.
  ///
  /// In en, this message translates to:
  /// **'Cutting'**
  String get cutting;

  /// No description provided for @cuttingInstructionRequired.
  ///
  /// In en, this message translates to:
  /// **'Cutting instructions are required.'**
  String get cuttingInstructionRequired;

  /// No description provided for @cuttingInstructions.
  ///
  /// In en, this message translates to:
  /// **'Cutting instructions'**
  String get cuttingInstructions;

  /// No description provided for @cuttingRequired.
  ///
  /// In en, this message translates to:
  /// **'Cutting Required'**
  String get cuttingRequired;

  /// No description provided for @cuttingSchedule.
  ///
  /// In en, this message translates to:
  /// **'Cutting Schedule'**
  String get cuttingSchedule;

  /// No description provided for @d365.
  ///
  /// In en, this message translates to:
  /// **'d365'**
  String get d365;

  /// No description provided for @daAccessCredentials.
  ///
  /// In en, this message translates to:
  /// **'Access Credentials'**
  String get daAccessCredentials;

  /// No description provided for @daAccessPointDetail.
  ///
  /// In en, this message translates to:
  /// **'Access Point Detail'**
  String get daAccessPointDetail;

  /// No description provided for @daAccessPoints.
  ///
  /// In en, this message translates to:
  /// **'Access Points'**
  String get daAccessPoints;

  /// No description provided for @daAddNewGroup.
  ///
  /// In en, this message translates to:
  /// **'Add New Group'**
  String get daAddNewGroup;

  /// No description provided for @daAddSchedule.
  ///
  /// In en, this message translates to:
  /// **'Add Schedule'**
  String get daAddSchedule;

  /// No description provided for @daAlerts.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get daAlerts;

  /// No description provided for @daAlertsDoorAccessAttempts.
  ///
  /// In en, this message translates to:
  /// **'Door Access Attempts'**
  String get daAlertsDoorAccessAttempts;

  /// No description provided for @daAlertsScheduleUpdates.
  ///
  /// In en, this message translates to:
  /// **'Schedule Updates'**
  String get daAlertsScheduleUpdates;

  /// No description provided for @daDoorControllerDetail.
  ///
  /// In en, this message translates to:
  /// **'Door Controller Detail'**
  String get daDoorControllerDetail;

  /// No description provided for @daDoorControllers.
  ///
  /// In en, this message translates to:
  /// **'Door Controllers'**
  String get daDoorControllers;

  /// No description provided for @daDoorSchedules.
  ///
  /// In en, this message translates to:
  /// **'Door Schedules'**
  String get daDoorSchedules;

  /// No description provided for @daFloorPlanEditor.
  ///
  /// In en, this message translates to:
  /// **'Floor Plan Editor'**
  String get daFloorPlanEditor;

  /// No description provided for @daFloorPlans.
  ///
  /// In en, this message translates to:
  /// **'Floor Plans'**
  String get daFloorPlans;

  /// No description provided for @daGroups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get daGroups;

  /// No description provided for @daLinkAccessPoint.
  ///
  /// In en, this message translates to:
  /// **'Link Access Point'**
  String get daLinkAccessPoint;

  /// No description provided for @daSchedules.
  ///
  /// In en, this message translates to:
  /// **'Schedules'**
  String get daSchedules;

  /// No description provided for @daSiteDetails.
  ///
  /// In en, this message translates to:
  /// **'Site Details'**
  String get daSiteDetails;

  /// No description provided for @daSites.
  ///
  /// In en, this message translates to:
  /// **'Sites'**
  String get daSites;

  /// No description provided for @daUserDetails.
  ///
  /// In en, this message translates to:
  /// **'User Details'**
  String get daUserDetails;

  /// No description provided for @daUsers.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get daUsers;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @damaged.
  ///
  /// In en, this message translates to:
  /// **'Damaged'**
  String get damaged;

  /// No description provided for @damagedRest.
  ///
  /// In en, this message translates to:
  /// **'Damaged Rest'**
  String get damagedRest;

  /// No description provided for @danger.
  ///
  /// In en, this message translates to:
  /// **'Danger'**
  String get danger;

  /// No description provided for @dataImportQueued.
  ///
  /// In en, this message translates to:
  /// **'Data import has been queued succesfully'**
  String get dataImportQueued;

  /// No description provided for @dataImportedText.
  ///
  /// In en, this message translates to:
  /// **'Data imported succesfully'**
  String get dataImportedText;

  /// No description provided for @dataManagement.
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// No description provided for @dataSyncLabel.
  ///
  /// In en, this message translates to:
  /// **'Data Sync'**
  String get dataSyncLabel;

  /// No description provided for @dataType.
  ///
  /// In en, this message translates to:
  /// **'Data Type'**
  String get dataType;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @dateConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Date confirmed'**
  String get dateConfirmed;

  /// No description provided for @dateFrom.
  ///
  /// In en, this message translates to:
  /// **'Date from'**
  String get dateFrom;

  /// No description provided for @dateOfAquisition.
  ///
  /// In en, this message translates to:
  /// **'Date of Acquisition'**
  String get dateOfAquisition;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date Of Birth'**
  String get dateOfBirth;

  /// Date of birth must fall within firstDate and lastDate (earliest and latest allowed).
  ///
  /// In en, this message translates to:
  /// **'Enter Date of Birth between {firstDate} and {lastDate}'**
  String dateOfBirthBetween(DateTime firstDate, DateTime lastDate);

  /// No description provided for @dateRange.
  ///
  /// In en, this message translates to:
  /// **'Date Range'**
  String get dateRange;

  /// No description provided for @dateRangeInvalidMsg.
  ///
  /// In en, this message translates to:
  /// **'Date Range values are invalid'**
  String get dateRangeInvalidMsg;

  /// No description provided for @dateTime.
  ///
  /// In en, this message translates to:
  /// **'Date Time'**
  String get dateTime;

  /// No description provided for @dateTo.
  ///
  /// In en, this message translates to:
  /// **'Date to'**
  String get dateTo;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day(s)'**
  String get day;

  /// No description provided for @dayOnly.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get dayOnly;

  /// No description provided for @dayRange.
  ///
  /// In en, this message translates to:
  /// **'Day Range'**
  String get dayRange;

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{days}d ago'**
  String daysAgo(int days);

  /// No description provided for @deactivate.
  ///
  /// In en, this message translates to:
  /// **'Deactivate'**
  String get deactivate;

  /// No description provided for @dealerAct1.
  ///
  /// In en, this message translates to:
  /// **'We have to authenticate your ID and address to comply with the'**
  String get dealerAct1;

  /// No description provided for @dealerAct2.
  ///
  /// In en, this message translates to:
  /// **'along with all of the usual checks around money laundering and bank account authenticity, to enable us to pay you regardless of whether that is by cash, cheque, bank transfer or any other agree method of payment.'**
  String get dealerAct2;

  /// No description provided for @debtManager.
  ///
  /// In en, this message translates to:
  /// **'Debt Manager'**
  String get debtManager;

  /// No description provided for @debugCopyToken.
  ///
  /// In en, this message translates to:
  /// **'Copy Token'**
  String get debugCopyToken;

  /// No description provided for @decisionLimit.
  ///
  /// In en, this message translates to:
  /// **'Decision Limit'**
  String get decisionLimit;

  /// No description provided for @declarationLabel.
  ///
  /// In en, this message translates to:
  /// **'Declaration'**
  String get declarationLabel;

  /// No description provided for @declarationValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter the declaration text'**
  String get declarationValidation;

  /// No description provided for @defab.
  ///
  /// In en, this message translates to:
  /// **'Defab'**
  String get defab;

  /// No description provided for @defabInstructions.
  ///
  /// In en, this message translates to:
  /// **'Defab instructions'**
  String get defabInstructions;

  /// No description provided for @defabRequired.
  ///
  /// In en, this message translates to:
  /// **'Defab instructions are required.'**
  String get defabRequired;

  /// No description provided for @defabStatus.
  ///
  /// In en, this message translates to:
  /// **'DEFABRICATED'**
  String get defabStatus;

  /// No description provided for @defabricate.
  ///
  /// In en, this message translates to:
  /// **'De-Fabricate'**
  String get defabricate;

  /// No description provided for @defabrication.
  ///
  /// In en, this message translates to:
  /// **'Defabrication'**
  String get defabrication;

  /// No description provided for @defaultDepot.
  ///
  /// In en, this message translates to:
  /// **'Default Depot'**
  String get defaultDepot;

  /// No description provided for @defaultLifeCycleState.
  ///
  /// In en, this message translates to:
  /// **'Default Life Cycle State'**
  String get defaultLifeCycleState;

  /// No description provided for @defaultLocation.
  ///
  /// In en, this message translates to:
  /// **'Default Location'**
  String get defaultLocation;

  /// No description provided for @defaultMedia.
  ///
  /// In en, this message translates to:
  /// **'Default Media'**
  String get defaultMedia;

  /// No description provided for @defaultOrderbook.
  ///
  /// In en, this message translates to:
  /// **'Default order book'**
  String get defaultOrderbook;

  /// No description provided for @defaultProduct.
  ///
  /// In en, this message translates to:
  /// **'Default Product'**
  String get defaultProduct;

  /// No description provided for @defaultRate.
  ///
  /// In en, this message translates to:
  /// **'Default Rate'**
  String get defaultRate;

  /// No description provided for @defaultTerritory.
  ///
  /// In en, this message translates to:
  /// **'Default territory'**
  String get defaultTerritory;

  /// No description provided for @defaultTruckGrouping.
  ///
  /// In en, this message translates to:
  /// **'Default truck grouping'**
  String get defaultTruckGrouping;

  /// No description provided for @defaultUOM.
  ///
  /// In en, this message translates to:
  /// **'Default UOM'**
  String get defaultUOM;

  /// No description provided for @defaultWeight.
  ///
  /// In en, this message translates to:
  /// **'Default Weight'**
  String get defaultWeight;

  /// No description provided for @defaultWeightUom.
  ///
  /// In en, this message translates to:
  /// **'Default Weight UOM'**
  String get defaultWeightUom;

  /// No description provided for @defaultYard.
  ///
  /// In en, this message translates to:
  /// **'Default Yard'**
  String get defaultYard;

  /// No description provided for @defaultYardNotSet.
  ///
  /// In en, this message translates to:
  /// **'Default Yard Not Set'**
  String get defaultYardNotSet;

  /// No description provided for @defaultYardNotSetErrorMessageBody.
  ///
  /// In en, this message translates to:
  /// **'Please select Default Yard from Settings to continue'**
  String get defaultYardNotSetErrorMessageBody;

  /// No description provided for @delPrice.
  ///
  /// In en, this message translates to:
  /// **'Del Price'**
  String get delPrice;

  /// No description provided for @delay.
  ///
  /// In en, this message translates to:
  /// **'Delay'**
  String get delay;

  /// No description provided for @delayEvents.
  ///
  /// In en, this message translates to:
  /// **'Delay events'**
  String get delayEvents;

  /// No description provided for @delayInProgress.
  ///
  /// In en, this message translates to:
  /// **'Delay in progress'**
  String get delayInProgress;

  /// No description provided for @delays.
  ///
  /// In en, this message translates to:
  /// **'Delays'**
  String get delays;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleteAssessment.
  ///
  /// In en, this message translates to:
  /// **'Delete Assessment'**
  String get deleteAssessment;

  /// No description provided for @deleteBomSuccessful.
  ///
  /// In en, this message translates to:
  /// **'The bill of materials has been deleted successfully.'**
  String get deleteBomSuccessful;

  /// No description provided for @deleteComments.
  ///
  /// In en, this message translates to:
  /// **'Delete Comments'**
  String get deleteComments;

  /// No description provided for @deleteEntityAccountMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this {entityName}?'**
  String deleteEntityAccountMessage(Object entityName);

  /// No description provided for @deleteJob.
  ///
  /// In en, this message translates to:
  /// **'Delete Job'**
  String get deleteJob;

  /// No description provided for @deleteLineConfirmation.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to delete line {lineNumber}. Proceed?'**
  String deleteLineConfirmation(Object lineNumber);

  /// No description provided for @deletePendingAndScheduledJobs.
  ///
  /// In en, this message translates to:
  /// **'Delete pending and scheduled jobs as well'**
  String get deletePendingAndScheduledJobs;

  /// No description provided for @deleteProductEwcSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Product EWC deleted successfully'**
  String get deleteProductEwcSuccessMessage;

  /// No description provided for @deleteProofOwnership.
  ///
  /// In en, this message translates to:
  /// **'Delete Proof of Ownership'**
  String get deleteProofOwnership;

  /// No description provided for @deleteReason.
  ///
  /// In en, this message translates to:
  /// **'Delete Reason'**
  String get deleteReason;

  /// No description provided for @deleteSelectionMsg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the selected'**
  String get deleteSelectionMsg;

  /// No description provided for @deleteStockTake.
  ///
  /// In en, this message translates to:
  /// **'Delete Stock Take'**
  String get deleteStockTake;

  /// No description provided for @deleteStockTakeConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {stockTakeName} stock take?'**
  String deleteStockTakeConfirmation(Object stockTakeName);

  /// No description provided for @deleteTemplate.
  ///
  /// In en, this message translates to:
  /// **'Delete Template'**
  String get deleteTemplate;

  /// No description provided for @deleteTemplateConfirmationMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this template?'**
  String get deleteTemplateConfirmationMessage;

  /// No description provided for @deleteThisContact.
  ///
  /// In en, this message translates to:
  /// **'Delete this contact'**
  String get deleteThisContact;

  /// No description provided for @deleteVehicle.
  ///
  /// In en, this message translates to:
  /// **'Delete Vehicle'**
  String get deleteVehicle;

  /// No description provided for @deleteVorErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete VOR Schedule.'**
  String get deleteVorErrorMsg;

  /// No description provided for @deleteWeighbridgeProfileConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this weighbridge profile?'**
  String get deleteWeighbridgeProfileConfirmation;

  /// No description provided for @deleteWeight.
  ///
  /// In en, this message translates to:
  /// **'Delete Weight'**
  String get deleteWeight;

  /// No description provided for @deleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get deleted;

  /// No description provided for @deletedTheJob.
  ///
  /// In en, this message translates to:
  /// **'Deleted the job'**
  String get deletedTheJob;

  /// No description provided for @deletingProofOfOwnership.
  ///
  /// In en, this message translates to:
  /// **'Deleting Proof of Ownership For'**
  String get deletingProofOfOwnership;

  /// No description provided for @deletionDetails.
  ///
  /// In en, this message translates to:
  /// **'Deletion details'**
  String get deletionDetails;

  /// No description provided for @deliverTo.
  ///
  /// In en, this message translates to:
  /// **'Deliver to'**
  String get deliverTo;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @deliveredPrice.
  ///
  /// In en, this message translates to:
  /// **'Delivered Price'**
  String get deliveredPrice;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @deliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'Delivery Method'**
  String get deliveryMethod;

  /// No description provided for @deliveryNote.
  ///
  /// In en, this message translates to:
  /// **'Delivery note'**
  String get deliveryNote;

  /// No description provided for @deliveryNotes.
  ///
  /// In en, this message translates to:
  /// **'Delivery Notes'**
  String get deliveryNotes;

  /// No description provided for @deliveryPoint.
  ///
  /// In en, this message translates to:
  /// **'Delivery Point'**
  String get deliveryPoint;

  /// No description provided for @demolitionContractor.
  ///
  /// In en, this message translates to:
  /// **'Demolition Contractor'**
  String get demolitionContractor;

  /// No description provided for @dents.
  ///
  /// In en, this message translates to:
  /// **'Dents'**
  String get dents;

  /// No description provided for @departedEvent.
  ///
  /// In en, this message translates to:
  /// **'Departed'**
  String get departedEvent;

  /// No description provided for @departedFrom.
  ///
  /// In en, this message translates to:
  /// **'Departed from'**
  String get departedFrom;

  /// No description provided for @depollutants.
  ///
  /// In en, this message translates to:
  /// **'Depollutants'**
  String get depollutants;

  /// No description provided for @depot.
  ///
  /// In en, this message translates to:
  /// **'Depot'**
  String get depot;

  /// No description provided for @depotHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a depot'**
  String get depotHint;

  /// No description provided for @depotLabel.
  ///
  /// In en, this message translates to:
  /// **'Depot'**
  String get depotLabel;

  /// No description provided for @depotNo.
  ///
  /// In en, this message translates to:
  /// **'Depot No'**
  String get depotNo;

  /// No description provided for @depotValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a Depot name'**
  String get depotValidation;

  /// No description provided for @descending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get descending;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @descriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Brief Description of the Issue'**
  String get descriptionLabel;

  /// No description provided for @desks.
  ///
  /// In en, this message translates to:
  /// **'Desks'**
  String get desks;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Detail'**
  String get detail;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @detectedDifferentDetailsNote.
  ///
  /// In en, this message translates to:
  /// **'We have detected your name is different on the uploaded documents to what has been provided, please check your details are correct and proceed.'**
  String get detectedDifferentDetailsNote;

  /// No description provided for @diagnosticLog.
  ///
  /// In en, this message translates to:
  /// **'DIAGNOSTIC LOG'**
  String get diagnosticLog;

  /// No description provided for @diagnosticMedia.
  ///
  /// In en, this message translates to:
  /// **'Diagnostic Media'**
  String get diagnosticMedia;

  /// No description provided for @diagnostics.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get diagnostics;

  /// No description provided for @digitalSignatureRequired.
  ///
  /// In en, this message translates to:
  /// **'Requires Digital Signature'**
  String get digitalSignatureRequired;

  /// No description provided for @digitalWalletActivated.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Activated'**
  String get digitalWalletActivated;

  /// No description provided for @digitalWalletDeactivated.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Deactivated'**
  String get digitalWalletDeactivated;

  /// No description provided for @digitalWalletWithAtm.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet With Atm'**
  String get digitalWalletWithAtm;

  /// No description provided for @digitalWalletWithCash.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet With Cash'**
  String get digitalWalletWithCash;

  /// No description provided for @directCover.
  ///
  /// In en, this message translates to:
  /// **'Direct Cover'**
  String get directCover;

  /// No description provided for @directDebit.
  ///
  /// In en, this message translates to:
  /// **'Direct Debit'**
  String get directDebit;

  /// No description provided for @dirt.
  ///
  /// In en, this message translates to:
  /// **'Dirt'**
  String get dirt;

  /// No description provided for @dirtDeduction.
  ///
  /// In en, this message translates to:
  /// **'Dirt Deduction'**
  String get dirtDeduction;

  /// No description provided for @dirtDeductionUOM.
  ///
  /// In en, this message translates to:
  /// **'Dirt Deduction UOM'**
  String get dirtDeductionUOM;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @discardLoadOut.
  ///
  /// In en, this message translates to:
  /// **'Discard Load Out'**
  String get discardLoadOut;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @discountPercentage.
  ///
  /// In en, this message translates to:
  /// **'Discount Percentage'**
  String get discountPercentage;

  /// No description provided for @discountTerms.
  ///
  /// In en, this message translates to:
  /// **'Discount Terms'**
  String get discountTerms;

  /// No description provided for @discrepancy.
  ///
  /// In en, this message translates to:
  /// **'Discrepancy'**
  String get discrepancy;

  /// No description provided for @discrepancyMediaError.
  ///
  /// In en, this message translates to:
  /// **'You must capture media for {reason}.'**
  String discrepancyMediaError(Object reason);

  /// No description provided for @discrepantDetails.
  ///
  /// In en, this message translates to:
  /// **'Discrepant Details'**
  String get discrepantDetails;

  /// No description provided for @discrepantMedia.
  ///
  /// In en, this message translates to:
  /// **'Discrepant Media'**
  String get discrepantMedia;

  /// No description provided for @discrepantReasons.
  ///
  /// In en, this message translates to:
  /// **'Discrepant Reasons'**
  String get discrepantReasons;

  /// No description provided for @discrepantSubmitMsg.
  ///
  /// In en, this message translates to:
  /// **'Discrepant details submitted successfully.'**
  String get discrepantSubmitMsg;

  /// No description provided for @dismantle.
  ///
  /// In en, this message translates to:
  /// **'Dismantle'**
  String get dismantle;

  /// No description provided for @dismantleEachListedPart.
  ///
  /// In en, this message translates to:
  /// **'Dismantle each listed part one at a time'**
  String get dismantleEachListedPart;

  /// No description provided for @dismantled.
  ///
  /// In en, this message translates to:
  /// **'Dismantled'**
  String get dismantled;

  /// No description provided for @dispatchSlip.
  ///
  /// In en, this message translates to:
  /// **'dispatch slip'**
  String get dispatchSlip;

  /// No description provided for @dispatchYard.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Yard'**
  String get dispatchYard;

  /// No description provided for @dispatchYards.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Yards'**
  String get dispatchYards;

  /// No description provided for @dispatcher.
  ///
  /// In en, this message translates to:
  /// **'Dispatcher'**
  String get dispatcher;

  /// No description provided for @dispatcherNotes.
  ///
  /// In en, this message translates to:
  /// **'Dispatcher Notes'**
  String get dispatcherNotes;

  /// No description provided for @displayCollectedDeltaOnRemittance.
  ///
  /// In en, this message translates to:
  /// **'Display Collected Delta on Remittance'**
  String get displayCollectedDeltaOnRemittance;

  /// No description provided for @displayName.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get displayName;

  /// No description provided for @disposalStatus.
  ///
  /// In en, this message translates to:
  /// **'Disposal Status'**
  String get disposalStatus;

  /// No description provided for @dispose.
  ///
  /// In en, this message translates to:
  /// **'Dispose'**
  String get dispose;

  /// No description provided for @disposeAlreadyProcess.
  ///
  /// In en, this message translates to:
  /// **'Dispose is already process'**
  String get disposeAlreadyProcess;

  /// No description provided for @disposeApprovals.
  ///
  /// In en, this message translates to:
  /// **'Disposal Approvals'**
  String get disposeApprovals;

  /// No description provided for @doNotHaveAccessToAccount.
  ///
  /// In en, this message translates to:
  /// **'You do not have access to this account'**
  String get doNotHaveAccessToAccount;

  /// No description provided for @doNotUse.
  ///
  /// In en, this message translates to:
  /// **'Set Do Not Use Message'**
  String get doNotUse;

  /// No description provided for @doNotWantToBeContactedByPost.
  ///
  /// In en, this message translates to:
  /// **'No thanks, I do not want to be contacted by post'**
  String get doNotWantToBeContactedByPost;

  /// No description provided for @doNotpayTicketsOlderThan.
  ///
  /// In en, this message translates to:
  /// **'Do not pay tickets older than'**
  String get doNotpayTicketsOlderThan;

  /// No description provided for @doYouWantToProceed.
  ///
  /// In en, this message translates to:
  /// **'Do you want to proceed?'**
  String get doYouWantToProceed;

  /// No description provided for @docPathMissing.
  ///
  /// In en, this message translates to:
  /// **'Document path missing e.g. com.emrgroup.emrapps/N00006569/signature.png'**
  String get docPathMissing;

  /// No description provided for @docPathWithExample.
  ///
  /// In en, this message translates to:
  /// **'Document Path (e.g. com.emrgroup.emrapps/N00006569/signature.png)'**
  String get docPathWithExample;

  /// No description provided for @document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// No description provided for @documentDeleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Document deleted successfully.'**
  String get documentDeleteSuccess;

  /// No description provided for @documentDetails.
  ///
  /// In en, this message translates to:
  /// **'Document Details'**
  String get documentDetails;

  /// No description provided for @documentHoldStatusType.
  ///
  /// In en, this message translates to:
  /// **'Document Hold Status Type'**
  String get documentHoldStatusType;

  /// No description provided for @documentIdentification.
  ///
  /// In en, this message translates to:
  /// **'Documents/Identification'**
  String get documentIdentification;

  /// No description provided for @documentInformation.
  ///
  /// In en, this message translates to:
  /// **'Document Information'**
  String get documentInformation;

  /// No description provided for @documentNotOCRed.
  ///
  /// In en, this message translates to:
  /// **'Document could not be OCRed'**
  String get documentNotOCRed;

  /// No description provided for @documentNotUpdated.
  ///
  /// In en, this message translates to:
  /// **'Document could not be updated'**
  String get documentNotUpdated;

  /// No description provided for @documentNumber.
  ///
  /// In en, this message translates to:
  /// **'Document Number'**
  String get documentNumber;

  /// No description provided for @documentOrLicenceNumber.
  ///
  /// In en, this message translates to:
  /// **'Document/Licence Number'**
  String get documentOrLicenceNumber;

  /// No description provided for @documentSubType.
  ///
  /// In en, this message translates to:
  /// **'Document Sub Type'**
  String get documentSubType;

  /// No description provided for @documentSubTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Select a document sub type'**
  String get documentSubTypeHint;

  /// No description provided for @documentType.
  ///
  /// In en, this message translates to:
  /// **'Document Type'**
  String get documentType;

  /// No description provided for @documentTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Select a document type'**
  String get documentTypeHint;

  /// No description provided for @documentUpdated.
  ///
  /// In en, this message translates to:
  /// **'Document updated'**
  String get documentUpdated;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @documentsAndIdentification.
  ///
  /// In en, this message translates to:
  /// **'Documents/\nIdentification'**
  String get documentsAndIdentification;

  /// No description provided for @doesNotRepeat.
  ///
  /// In en, this message translates to:
  /// **'No repeat'**
  String get doesNotRepeat;

  /// No description provided for @doingBusinessAs.
  ///
  /// In en, this message translates to:
  /// **'Doing Business As'**
  String get doingBusinessAs;

  /// No description provided for @domestic.
  ///
  /// In en, this message translates to:
  /// **'Domestic'**
  String get domestic;

  /// No description provided for @domesticNotRegistered.
  ///
  /// In en, this message translates to:
  /// **'Domestic Not Registered'**
  String get domesticNotRegistered;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAnAccount;

  @override
  String get doorAccess => 'Door Access';
  /// No description provided for @doors.
  ///
  /// In en, this message translates to:
  /// **'Doors'**
  String get doors;

  /// No description provided for @dormant.
  ///
  /// In en, this message translates to:
  /// **'Dormant'**
  String get dormant;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @downloadDispatchSlip.
  ///
  /// In en, this message translates to:
  /// **'Download Dispatch Slip'**
  String get downloadDispatchSlip;

  /// No description provided for @downloadQRCode.
  ///
  /// In en, this message translates to:
  /// **'Download QR Code'**
  String get downloadQRCode;

  /// No description provided for @downloadQuoteRemittance.
  ///
  /// In en, this message translates to:
  /// **'Download Quote Remittance'**
  String get downloadQuoteRemittance;

  /// No description provided for @downloadTemplate.
  ///
  /// In en, this message translates to:
  /// **'Download Template'**
  String get downloadTemplate;

  /// No description provided for @draft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get draft;

  /// No description provided for @drafted.
  ///
  /// In en, this message translates to:
  /// **'Drafted'**
  String get drafted;

  /// No description provided for @dragdropOrBrowse.
  ///
  /// In en, this message translates to:
  /// **'Drag & Drop or Choose file to upload...'**
  String get dragdropOrBrowse;

  /// No description provided for @driveTrain.
  ///
  /// In en, this message translates to:
  /// **'Drive Train'**
  String get driveTrain;

  /// No description provided for @driver.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get driver;

  /// No description provided for @driverAppliedDelay.
  ///
  /// In en, this message translates to:
  /// **'Driver has applied delay'**
  String get driverAppliedDelay;

  /// No description provided for @driverName.
  ///
  /// In en, this message translates to:
  /// **'Driver\'s name (carrier)'**
  String get driverName;

  /// No description provided for @driverNameValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the name of the driver'**
  String get driverNameValidationText;

  /// No description provided for @driverNotes.
  ///
  /// In en, this message translates to:
  /// **'Driver notes'**
  String get driverNotes;

  /// No description provided for @drivingLicence.
  ///
  /// In en, this message translates to:
  /// **'Driving Licence'**
  String get drivingLicence;

  /// No description provided for @drop.
  ///
  /// In en, this message translates to:
  /// **'Drop'**
  String get drop;

  /// No description provided for @droppedContainer.
  ///
  /// In en, this message translates to:
  /// **'Dropped Container'**
  String get droppedContainer;

  /// No description provided for @due.
  ///
  /// In en, this message translates to:
  /// **'Due'**
  String get due;

  /// No description provided for @dueDateBeforeStartDateMessage.
  ///
  /// In en, this message translates to:
  /// **'Due date is before start date!'**
  String get dueDateBeforeStartDateMessage;

  /// No description provided for @dueDateFrom.
  ///
  /// In en, this message translates to:
  /// **'Due Date From'**
  String get dueDateFrom;

  /// No description provided for @dueDateHint.
  ///
  /// In en, this message translates to:
  /// **'Schedule Task due date'**
  String get dueDateHint;

  /// No description provided for @dueDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Due Date'**
  String get dueDateLabel;

  /// No description provided for @dueDateText.
  ///
  /// In en, this message translates to:
  /// **'Due '**
  String get dueDateText;

  /// No description provided for @dueDateValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a due date'**
  String get dueDateValidation;

  /// No description provided for @duplicatePortalAccount.
  ///
  /// In en, this message translates to:
  /// **'You already have an account please visit our yard and ask to activate your online account'**
  String get duplicatePortalAccount;

  /// No description provided for @duplicateTagCategoryError.
  ///
  /// In en, this message translates to:
  /// **'This tag category already exists.'**
  String get duplicateTagCategoryError;

  /// No description provided for @duplicateTagReasonError.
  ///
  /// In en, this message translates to:
  /// **'Template with this reason already exist.'**
  String get duplicateTagReasonError;

  /// No description provided for @duplicatesFoundInUniqueNumbers.
  ///
  /// In en, this message translates to:
  /// **'Duplicates Found in Unique Numbers'**
  String get duplicatesFoundInUniqueNumbers;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @durationInMins.
  ///
  /// In en, this message translates to:
  /// **'Duration (Mins)'**
  String get durationInMins;

  /// No description provided for @eAMLists.
  ///
  /// In en, this message translates to:
  /// **'EAM Lists'**
  String get eAMLists;

  /// No description provided for @eamAssetSaved.
  ///
  /// In en, this message translates to:
  /// **'Asset Saved Succesfully'**
  String get eamAssetSaved;

  /// No description provided for @eamCannotApproveMessage.
  ///
  /// In en, this message translates to:
  /// **'Cannot approve. Please make sure Functional location is added for the required ones'**
  String get eamCannotApproveMessage;

  /// No description provided for @eamConfirmApprovalMessage.
  ///
  /// In en, this message translates to:
  /// **'Are your sure You want to Approve the selected approvals?'**
  String get eamConfirmApprovalMessage;

  /// No description provided for @eamConfirmRejectMessage.
  ///
  /// In en, this message translates to:
  /// **'Are your sure You want to Reject the selected approvals?'**
  String get eamConfirmRejectMessage;

  /// No description provided for @eamDisposalBeingApproved.
  ///
  /// In en, this message translates to:
  /// **'A Disposal is in the process of being approved!'**
  String get eamDisposalBeingApproved;

  /// No description provided for @eamFailedRejectMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to reject approval for one or more assets'**
  String get eamFailedRejectMessage;

  /// No description provided for @eamFailedToApproveMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to Approve one or more assets'**
  String get eamFailedToApproveMessage;

  /// No description provided for @eamNavigateToSearchTransferAndDisposal.
  ///
  /// In en, this message translates to:
  /// **'Please Navigate to Search and Select assets for Transfer and Disposal'**
  String get eamNavigateToSearchTransferAndDisposal;

  /// No description provided for @eamNavigationMessageToSearchApproveNewAsset.
  ///
  /// In en, this message translates to:
  /// **'Navigate to Search screen for Approving new assets'**
  String get eamNavigationMessageToSearchApproveNewAsset;

  /// No description provided for @eamNoAssetSelectedNavigationMessage.
  ///
  /// In en, this message translates to:
  /// **'No Asset Selected. Please Navigate to Search and select an Asset!'**
  String get eamNoAssetSelectedNavigationMessage;

  /// No description provided for @eamOnlyApprovedAssetsMessage.
  ///
  /// In en, this message translates to:
  /// **'Only approved assets will sync'**
  String get eamOnlyApprovedAssetsMessage;

  /// No description provided for @eamTransferBeingApproved.
  ///
  /// In en, this message translates to:
  /// **'A transfer is in the process of being approved!'**
  String get eamTransferBeingApproved;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editAdvance.
  ///
  /// In en, this message translates to:
  /// **'Edit Advance'**
  String get editAdvance;

  /// No description provided for @editAdvanceOffsets.
  ///
  /// In en, this message translates to:
  /// **'Edit Advance Offsets'**
  String get editAdvanceOffsets;

  /// No description provided for @editAgain.
  ///
  /// In en, this message translates to:
  /// **'Edit Again'**
  String get editAgain;

  /// No description provided for @editAssetTemplate.
  ///
  /// In en, this message translates to:
  /// **'Edit Asset Template'**
  String get editAssetTemplate;

  /// No description provided for @editBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Edit Bank Account'**
  String get editBankAccount;

  /// No description provided for @editBankDetailsAndNotes.
  ///
  /// In en, this message translates to:
  /// **'Edit Bank Details & Notes'**
  String get editBankDetailsAndNotes;

  /// No description provided for @editBankInformationNote.
  ///
  /// In en, this message translates to:
  /// **'Here you can edit your bank information'**
  String get editBankInformationNote;

  /// No description provided for @editCAT.
  ///
  /// In en, this message translates to:
  /// **'Edit CAT'**
  String get editCAT;

  /// No description provided for @editClient.
  ///
  /// In en, this message translates to:
  /// **'Edit Category'**
  String get editClient;

  /// No description provided for @editCollectionInformation.
  ///
  /// In en, this message translates to:
  /// **'Edit Collection Information'**
  String get editCollectionInformation;

  /// No description provided for @editContact.
  ///
  /// In en, this message translates to:
  /// **'Edit Contact'**
  String get editContact;

  /// No description provided for @editContainer.
  ///
  /// In en, this message translates to:
  /// **'Edit Container'**
  String get editContainer;

  /// No description provided for @editContract.
  ///
  /// In en, this message translates to:
  /// **'Edit Contract'**
  String get editContract;

  /// No description provided for @editCounterProperty.
  ///
  /// In en, this message translates to:
  /// **'Edit Counter Property'**
  String get editCounterProperty;

  /// No description provided for @editDisplay.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editDisplay;

  /// No description provided for @editFixedContract.
  ///
  /// In en, this message translates to:
  /// **'Edit Fixed Contract'**
  String get editFixedContract;

  /// No description provided for @editGDPRPreferences.
  ///
  /// In en, this message translates to:
  /// **'Edit GDPR Preferences'**
  String get editGDPRPreferences;

  /// No description provided for @editHeadOfficeDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit Head Office Details'**
  String get editHeadOfficeDetails;

  /// No description provided for @editImage.
  ///
  /// In en, this message translates to:
  /// **'Edit Image'**
  String get editImage;

  /// No description provided for @editJob.
  ///
  /// In en, this message translates to:
  /// **'Edit Job'**
  String get editJob;

  /// No description provided for @editList.
  ///
  /// In en, this message translates to:
  /// **'Edit List'**
  String get editList;

  /// No description provided for @editLocation.
  ///
  /// In en, this message translates to:
  /// **'Edit Location'**
  String get editLocation;

  /// No description provided for @editLoyaltyCard.
  ///
  /// In en, this message translates to:
  /// **'Edit Loyalty Card'**
  String get editLoyaltyCard;

  /// No description provided for @editManagedThirdPartyTruck.
  ///
  /// In en, this message translates to:
  /// **'Edit Managed Third Party Truck'**
  String get editManagedThirdPartyTruck;

  /// No description provided for @editManager.
  ///
  /// In en, this message translates to:
  /// **'Edit Responsibility'**
  String get editManager;

  /// No description provided for @editNote.
  ///
  /// In en, this message translates to:
  /// **'Edit Note'**
  String get editNote;

  /// No description provided for @editPlan.
  ///
  /// In en, this message translates to:
  /// **'Edit Plan'**
  String get editPlan;

  /// No description provided for @editPrepayCard.
  ///
  /// In en, this message translates to:
  /// **'Edit Prepay Card'**
  String get editPrepayCard;

  /// No description provided for @editProductEwc.
  ///
  /// In en, this message translates to:
  /// **'Edit Product EWC'**
  String get editProductEwc;

  /// No description provided for @editProperty.
  ///
  /// In en, this message translates to:
  /// **'Edit Property'**
  String get editProperty;

  /// No description provided for @editPublication.
  ///
  /// In en, this message translates to:
  /// **'Edit Publication'**
  String get editPublication;

  /// No description provided for @editRowEWC.
  ///
  /// In en, this message translates to:
  /// **'Edit Row EWC({ewcCode})'**
  String editRowEWC(Object ewcCode);

  /// No description provided for @editSchedule.
  ///
  /// In en, this message translates to:
  /// **'Edit Schedule'**
  String get editSchedule;

  /// No description provided for @editScheduler.
  ///
  /// In en, this message translates to:
  /// **'Edit Scheduler'**
  String get editScheduler;

  /// No description provided for @editSplitPayment.
  ///
  /// In en, this message translates to:
  /// **'Edit Split Payment'**
  String get editSplitPayment;

  /// No description provided for @editSpotContract.
  ///
  /// In en, this message translates to:
  /// **'Edit Spot Contract'**
  String get editSpotContract;

  /// No description provided for @editStockTake.
  ///
  /// In en, this message translates to:
  /// **'Edit Stock Take'**
  String get editStockTake;

  /// No description provided for @editStocktake.
  ///
  /// In en, this message translates to:
  /// **'Edit Stocktake'**
  String get editStocktake;

  /// No description provided for @editTag.
  ///
  /// In en, this message translates to:
  /// **'Edit Tag'**
  String get editTag;

  /// No description provided for @editTagTemplate.
  ///
  /// In en, this message translates to:
  /// **'Edit Tag Template'**
  String get editTagTemplate;

  /// No description provided for @editTask.
  ///
  /// In en, this message translates to:
  /// **'Edit task'**
  String get editTask;

  /// No description provided for @editTeam.
  ///
  /// In en, this message translates to:
  /// **'Edit Team'**
  String get editTeam;

  /// No description provided for @editTemplateLibraryMetaData.
  ///
  /// In en, this message translates to:
  /// **'Edit Template Metadata'**
  String get editTemplateLibraryMetaData;

  /// No description provided for @editTemplateProperty.
  ///
  /// In en, this message translates to:
  /// **'Edit Template Property'**
  String get editTemplateProperty;

  /// No description provided for @editTicket.
  ///
  /// In en, this message translates to:
  /// **'Edit Ticket'**
  String get editTicket;

  /// No description provided for @editTicketWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Edit Ticket #{ticketNumber}'**
  String editTicketWithNumber(Object ticketNumber);

  /// No description provided for @editTooltipDisplay.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editTooltipDisplay;

  /// No description provided for @editTruck.
  ///
  /// In en, this message translates to:
  /// **'Edit Truck'**
  String get editTruck;

  /// No description provided for @editVehicle.
  ///
  /// In en, this message translates to:
  /// **'Edit Vehicle'**
  String get editVehicle;

  /// No description provided for @editWeight.
  ///
  /// In en, this message translates to:
  /// **'Edit Weight'**
  String get editWeight;

  /// No description provided for @effectiveDate.
  ///
  /// In en, this message translates to:
  /// **'EffectiveDate'**
  String get effectiveDate;

  /// No description provided for @effectiveDateDisplay.
  ///
  /// In en, this message translates to:
  /// **'Effective Date'**
  String get effectiveDateDisplay;

  /// No description provided for @effectiveFrom.
  ///
  /// In en, this message translates to:
  /// **'Effective From'**
  String get effectiveFrom;

  /// No description provided for @elapsed.
  ///
  /// In en, this message translates to:
  /// **'Elapsed'**
  String get elapsed;

  /// No description provided for @electricOrHybridVehicle.
  ///
  /// In en, this message translates to:
  /// **'Electric/Hybrid Vehicle'**
  String get electricOrHybridVehicle;

  /// No description provided for @electrician.
  ///
  /// In en, this message translates to:
  /// **'Electrician'**
  String get electrician;

  /// No description provided for @electronicWires.
  ///
  /// In en, this message translates to:
  /// **'Electronic/Wires'**
  String get electronicWires;

  /// No description provided for @elementsFreeFromAfterLoad.
  ///
  /// In en, this message translates to:
  /// **'Are all listed elements free of bulges or holes after loading?'**
  String get elementsFreeFromAfterLoad;

  /// No description provided for @elementsFreeFromBulges.
  ///
  /// In en, this message translates to:
  /// **'Are all listed elements free of bulges / holes?'**
  String get elementsFreeFromBulges;

  /// No description provided for @elv.
  ///
  /// In en, this message translates to:
  /// **'ELV'**
  String get elv;

  /// No description provided for @elvCoinfigurations.
  ///
  /// In en, this message translates to:
  /// **'Elv Configurations'**
  String get elvCoinfigurations;

  /// No description provided for @elvDismantle.
  ///
  /// In en, this message translates to:
  /// **'ELV Dismantle'**
  String get elvDismantle;

  /// No description provided for @elvInspection.
  ///
  /// In en, this message translates to:
  /// **'ELV Inspection'**
  String get elvInspection;

  /// No description provided for @elvLocation.
  ///
  /// In en, this message translates to:
  /// **'ELV Location'**
  String get elvLocation;

  /// No description provided for @elvProduct.
  ///
  /// In en, this message translates to:
  /// **'ELV Product'**
  String get elvProduct;

  /// No description provided for @elvQuickQuoteNew.
  ///
  /// In en, this message translates to:
  /// **'Quick Quote'**
  String get elvQuickQuoteNew;

  /// No description provided for @elvQuotes.
  ///
  /// In en, this message translates to:
  /// **'ELV Quotes'**
  String get elvQuotes;

  /// No description provided for @elvT2.
  ///
  /// In en, this message translates to:
  /// **'ELV T2'**
  String get elvT2;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @emailAddressMissing.
  ///
  /// In en, this message translates to:
  /// **'Email Address is Missing from this Account'**
  String get emailAddressMissing;

  /// No description provided for @emailAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'Email already exists.'**
  String get emailAlreadyExists;

  /// No description provided for @emailAndConfirmQuote.
  ///
  /// In en, this message translates to:
  /// **'Email & Confirm Quote'**
  String get emailAndConfirmQuote;

  /// No description provided for @emailCustomer.
  ///
  /// In en, this message translates to:
  /// **'Email Customer'**
  String get emailCustomer;

  /// No description provided for @emailDraftQuoteToCustomer.
  ///
  /// In en, this message translates to:
  /// **'Email Draft Quote To Customer'**
  String get emailDraftQuoteToCustomer;

  /// No description provided for @emailQuote.
  ///
  /// In en, this message translates to:
  /// **'Email Quote'**
  String get emailQuote;

  /// No description provided for @emailReportTo.
  ///
  /// In en, this message translates to:
  /// **'Email To'**
  String get emailReportTo;

  /// No description provided for @emailSelf.
  ///
  /// In en, this message translates to:
  /// **'Email Self'**
  String get emailSelf;

  /// No description provided for @employee.
  ///
  /// In en, this message translates to:
  /// **'Employee'**
  String get employee;

  /// No description provided for @employerIdNumber.
  ///
  /// In en, this message translates to:
  /// **'Employer Identification Number'**
  String get employerIdNumber;

  /// No description provided for @emptyBasketMessage.
  ///
  /// In en, this message translates to:
  /// **'No items have been added to the basket.'**
  String get emptyBasketMessage;

  /// No description provided for @emptyContainer.
  ///
  /// In en, this message translates to:
  /// **'Empty Container'**
  String get emptyContainer;

  /// No description provided for @emptyGallery.
  ///
  /// In en, this message translates to:
  /// **'Your gallery is empty!'**
  String get emptyGallery;

  /// No description provided for @emrCashService.
  ///
  /// In en, this message translates to:
  /// **'At some EMR locations, we can encash cheques on-site. Would you like us to encash your cheque for you?'**
  String get emrCashService;

  /// No description provided for @emrClass.
  ///
  /// In en, this message translates to:
  /// **'EMR Classification'**
  String get emrClass;

  /// No description provided for @emrCollection.
  ///
  /// In en, this message translates to:
  /// **'EMR Collection'**
  String get emrCollection;

  /// No description provided for @emrNote.
  ///
  /// In en, this message translates to:
  /// **'EMR Note'**
  String get emrNote;

  /// No description provided for @emrVehicleRecycling.
  ///
  /// In en, this message translates to:
  /// **'EMR Vehicle Recycling'**
  String get emrVehicleRecycling;

  /// No description provided for @enableCheckWeight.
  ///
  /// In en, this message translates to:
  /// **'Check Weight'**
  String get enableCheckWeight;

  /// No description provided for @enableCollection.
  ///
  /// In en, this message translates to:
  /// **'Enable Collection'**
  String get enableCollection;

  /// No description provided for @enableContainerTicket.
  ///
  /// In en, this message translates to:
  /// **'Container Ticket'**
  String get enableContainerTicket;

  /// No description provided for @enableDeltaSnapshot.
  ///
  /// In en, this message translates to:
  /// **'Enable Delta Snapshot'**
  String get enableDeltaSnapshot;

  /// No description provided for @enablePricingServices.
  ///
  /// In en, this message translates to:
  /// **'Enable Pricing Services'**
  String get enablePricingServices;

  /// No description provided for @enableTicketSplit.
  ///
  /// In en, this message translates to:
  /// **'Enable Ticket Split'**
  String get enableTicketSplit;

  /// No description provided for @enableWeighbridgePay.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Pay'**
  String get enableWeighbridgePay;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @encashmentDetails.
  ///
  /// In en, this message translates to:
  /// **'Encashment Details'**
  String get encashmentDetails;

  /// No description provided for @encashmentSummary.
  ///
  /// In en, this message translates to:
  /// **'Encashment Summary'**
  String get encashmentSummary;

  /// No description provided for @encashments.
  ///
  /// In en, this message translates to:
  /// **'Encashments'**
  String get encashments;

  /// No description provided for @end.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get end;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @endDateDisplay.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDateDisplay;

  /// No description provided for @endDateNotSet.
  ///
  /// In en, this message translates to:
  /// **'end date not set'**
  String get endDateNotSet;

  /// No description provided for @endDateRequired.
  ///
  /// In en, this message translates to:
  /// **'End date is required'**
  String get endDateRequired;

  /// No description provided for @endDateTimeValidationMsg.
  ///
  /// In en, this message translates to:
  /// **'End Time must be greater than Start Time'**
  String get endDateTimeValidationMsg;

  /// No description provided for @endDateUppercase.
  ///
  /// In en, this message translates to:
  /// **'END DATE'**
  String get endDateUppercase;

  /// No description provided for @endDateValidationMsg.
  ///
  /// In en, this message translates to:
  /// **'EndDate must be greater or equal to StartDate'**
  String get endDateValidationMsg;

  /// No description provided for @endLocation.
  ///
  /// In en, this message translates to:
  /// **'End Location'**
  String get endLocation;

  /// No description provided for @endLocationAddress.
  ///
  /// In en, this message translates to:
  /// **'End location address.'**
  String get endLocationAddress;

  /// No description provided for @endLocationDisplay.
  ///
  /// In en, this message translates to:
  /// **'End Location'**
  String get endLocationDisplay;

  /// No description provided for @endLocationText.
  ///
  /// In en, this message translates to:
  /// **'End Location:'**
  String get endLocationText;

  /// No description provided for @endOfLoadOut.
  ///
  /// In en, this message translates to:
  /// **'End of Load Out'**
  String get endOfLoadOut;

  /// No description provided for @endRow.
  ///
  /// In en, this message translates to:
  /// **'End Row'**
  String get endRow;

  /// No description provided for @endTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get endTime;

  /// No description provided for @endingDate.
  ///
  /// In en, this message translates to:
  /// **'Ending Date'**
  String get endingDate;

  /// No description provided for @enforce.
  ///
  /// In en, this message translates to:
  /// **'Enforce'**
  String get enforce;

  /// No description provided for @enforceELVInspectionForLeadSources.
  ///
  /// In en, this message translates to:
  /// **'Enforce ELV Inspection For Lead Sources'**
  String get enforceELVInspectionForLeadSources;

  /// No description provided for @enforceJobSequence.
  ///
  /// In en, this message translates to:
  /// **'Enforce Job Sequence'**
  String get enforceJobSequence;

  /// No description provided for @enforceJobSequenceToolTip.
  ///
  /// In en, this message translates to:
  /// **'Job sequence enforced on this truck'**
  String get enforceJobSequenceToolTip;

  /// No description provided for @engClass.
  ///
  /// In en, this message translates to:
  /// **'Eng Class'**
  String get engClass;

  /// No description provided for @engineSize.
  ///
  /// In en, this message translates to:
  /// **'Engine Size'**
  String get engineSize;

  /// No description provided for @engines.
  ///
  /// In en, this message translates to:
  /// **'Engines'**
  String get engines;

  /// No description provided for @enlarge.
  ///
  /// In en, this message translates to:
  /// **'Enlarge'**
  String get enlarge;

  /// No description provided for @ensureAtLeast1TagIsAdded.
  ///
  /// In en, this message translates to:
  /// **'Ensure at least 1 tag is added'**
  String get ensureAtLeast1TagIsAdded;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @enterACommentForThisLot.
  ///
  /// In en, this message translates to:
  /// **'Enter a comment for this lot'**
  String get enterACommentForThisLot;

  /// No description provided for @enterAccountCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Account Code'**
  String get enterAccountCode;

  /// No description provided for @enterAccountName.
  ///
  /// In en, this message translates to:
  /// **'Please enter account holder name'**
  String get enterAccountName;

  /// No description provided for @enterAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter Address'**
  String get enterAddress;

  /// No description provided for @enterAssetNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Asset Number'**
  String get enterAssetNumber;

  /// No description provided for @enterBankDetailsForSameDay.
  ///
  /// In en, this message translates to:
  /// **'Enter your bank details to receive same-day payments directly to your account.'**
  String get enterBankDetailsForSameDay;

  /// No description provided for @enterCatClassification.
  ///
  /// In en, this message translates to:
  /// **'Please enter CAT Classification'**
  String get enterCatClassification;

  /// No description provided for @enterCatLocation.
  ///
  /// In en, this message translates to:
  /// **'Please enter CAT Location'**
  String get enterCatLocation;

  /// No description provided for @enterCode.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get enterCode;

  /// No description provided for @enterCollectedCostMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter the Collected Cost'**
  String get enterCollectedCostMsg;

  /// No description provided for @enterCount.
  ///
  /// In en, this message translates to:
  /// **'Enter Count'**
  String get enterCount;

  /// No description provided for @enterCutting.
  ///
  /// In en, this message translates to:
  /// **'Enter Cutting instructions'**
  String get enterCutting;

  /// No description provided for @enterDefab.
  ///
  /// In en, this message translates to:
  /// **'Enter Defab instructions'**
  String get enterDefab;

  /// No description provided for @enterDescription.
  ///
  /// In en, this message translates to:
  /// **'You must enter a Description'**
  String get enterDescription;

  /// No description provided for @enterDocumentNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter document number'**
  String get enterDocumentNumber;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter email...'**
  String get enterEmail;

  /// No description provided for @enterEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter email address'**
  String get enterEmailAddress;

  /// No description provided for @enterExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Please select Expiry date'**
  String get enterExpiryDate;

  /// No description provided for @enterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Please enter first name'**
  String get enterFirstName;

  /// No description provided for @enterHardness.
  ///
  /// In en, this message translates to:
  /// **'Enter hardness'**
  String get enterHardness;

  /// No description provided for @enterLast4DigitsOfVinValidation.
  ///
  /// In en, this message translates to:
  /// **'Enter last 4 digit of VIN number'**
  String get enterLast4DigitsOfVinValidation;

  /// No description provided for @enterLastFourDigits.
  ///
  /// In en, this message translates to:
  /// **'Please enter last four digits'**
  String get enterLastFourDigits;

  /// No description provided for @enterLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter location code , description'**
  String get enterLocation;

  /// No description provided for @enterLocationCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Location Code or Description'**
  String get enterLocationCode;

  /// No description provided for @enterManualWeight.
  ///
  /// In en, this message translates to:
  /// **'Enter Manual Weight'**
  String get enterManualWeight;

  /// No description provided for @enterName.
  ///
  /// In en, this message translates to:
  /// **'Enter Name'**
  String get enterName;

  /// No description provided for @enterNetherlandPhoneNumberMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter Mobile Number'**
  String get enterNetherlandPhoneNumberMsg;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter {phoneNumberString}'**
  String enterPhoneNumber(Object phoneNumberString);

  /// No description provided for @enterPhoneOrEmailMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter your mobile number or email address and press ‘Log in’'**
  String get enterPhoneOrEmailMsg;

  /// No description provided for @enterProductItem.
  ///
  /// In en, this message translates to:
  /// **'Enter product or item'**
  String get enterProductItem;

  /// No description provided for @enterTheCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the code'**
  String get enterTheCode;

  /// No description provided for @enterUrl.
  ///
  /// In en, this message translates to:
  /// **'Enter URL'**
  String get enterUrl;

  /// No description provided for @enterValidBankDetails.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid sort code and account number to fetch the bank name'**
  String get enterValidBankDetails;

  /// No description provided for @enterValidDutchPostalCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid Dutch postcode (e.g., 1234AB)'**
  String get enterValidDutchPostalCode;

  /// No description provided for @enterValidEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address that was used to log in.'**
  String get enterValidEmailAddress;

  /// No description provided for @enterValidMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid mobile number'**
  String get enterValidMobileNumber;

  /// No description provided for @enterValidSecoreCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid secore card number'**
  String get enterValidSecoreCardNumber;

  /// No description provided for @enterVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid verification code.'**
  String get enterVerificationCode;

  /// No description provided for @enterVinNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter VIN number'**
  String get enterVinNumber;

  /// No description provided for @enterYourComments.
  ///
  /// In en, this message translates to:
  /// **'Enter your comments'**
  String get enterYourComments;

  /// No description provided for @envCompliance.
  ///
  /// In en, this message translates to:
  /// **'Environmental Compliance'**
  String get envCompliance;

  /// No description provided for @environment.
  ///
  /// In en, this message translates to:
  /// **'Environment'**
  String get environment;

  /// No description provided for @eoriNumber.
  ///
  /// In en, this message translates to:
  /// **'EORI Number'**
  String get eoriNumber;

  /// No description provided for @equals.
  ///
  /// In en, this message translates to:
  /// **'Equals'**
  String get equals;

  /// No description provided for @equinoxTopup.
  ///
  /// In en, this message translates to:
  /// **'Equinox Topup'**
  String get equinoxTopup;

  /// No description provided for @errAccountAlreadyExist.
  ///
  /// In en, this message translates to:
  /// **'Account already exists'**
  String get errAccountAlreadyExist;

  /// No description provided for @errAccountCouldNotBeConverted.
  ///
  /// In en, this message translates to:
  /// **'Account could not be converted to retail account.'**
  String get errAccountCouldNotBeConverted;

  /// No description provided for @errAccountCouldNotBeCreated.
  ///
  /// In en, this message translates to:
  /// **'Account could not be created'**
  String get errAccountCouldNotBeCreated;

  /// No description provided for @errAccountCouldNotBeLoaded.
  ///
  /// In en, this message translates to:
  /// **'Account could not be loaded'**
  String get errAccountCouldNotBeLoaded;

  /// No description provided for @errAccountInformation.
  ///
  /// In en, this message translates to:
  /// **'Account information could not be loaded'**
  String get errAccountInformation;

  /// No description provided for @errDidnotGetTheCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get the code?'**
  String get errDidnotGetTheCode;

  /// No description provided for @errEmailOrPhoneWrong.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while logging in. Please make sure to enter valid mobile number or email'**
  String get errEmailOrPhoneWrong;

  /// No description provided for @errEnterAddress1.
  ///
  /// In en, this message translates to:
  /// **'Please enter Address 1'**
  String get errEnterAddress1;

  /// No description provided for @errEnterAddress2.
  ///
  /// In en, this message translates to:
  /// **'Please enter Address 2'**
  String get errEnterAddress2;

  /// No description provided for @errEnterCity.
  ///
  /// In en, this message translates to:
  /// **'Please enter city'**
  String get errEnterCity;

  /// No description provided for @errEnterCounty.
  ///
  /// In en, this message translates to:
  /// **'Please enter county'**
  String get errEnterCounty;

  /// No description provided for @errEnterHouseNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter house number'**
  String get errEnterHouseNumber;

  /// No description provided for @errEnterPlace.
  ///
  /// In en, this message translates to:
  /// **'Please enter place'**
  String get errEnterPlace;

  /// No description provided for @errEnterStreet.
  ///
  /// In en, this message translates to:
  /// **'Please enter street'**
  String get errEnterStreet;

  /// No description provided for @errInspectionAlreadyCompleted.
  ///
  /// In en, this message translates to:
  /// **'Inspection already completed for this vehicle'**
  String get errInspectionAlreadyCompleted;

  /// No description provided for @errInvalidAccountSelected.
  ///
  /// In en, this message translates to:
  /// **'The selected account is not valid.'**
  String get errInvalidAccountSelected;

  /// No description provided for @errInvalidPostcode.
  ///
  /// In en, this message translates to:
  /// **'Invalid Postcode'**
  String get errInvalidPostcode;

  /// No description provided for @errLinkInvalid.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the link you provided is not valid'**
  String get errLinkInvalid;

  /// No description provided for @errMsgAddressLine1Length.
  ///
  /// In en, this message translates to:
  /// **'Address Line 1 must be between 3 and 35 characters'**
  String get errMsgAddressLine1Length;

  /// No description provided for @errMsgAddressLine2Length.
  ///
  /// In en, this message translates to:
  /// **'Address Line 2 must be between 3 and 35 characters'**
  String get errMsgAddressLine2Length;

  /// No description provided for @errMsgAddressLine3Length.
  ///
  /// In en, this message translates to:
  /// **'Address Line 3 must be between 3 and 35 characters'**
  String get errMsgAddressLine3Length;

  /// No description provided for @errMsgCityLength.
  ///
  /// In en, this message translates to:
  /// **'Town/City must be between 3 and 35 characters'**
  String get errMsgCityLength;

  /// No description provided for @errMsgCurrencyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select your currency from the dropdown'**
  String get errMsgCurrencyValidation;

  /// No description provided for @errMsgDescriptionValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a description'**
  String get errMsgDescriptionValidation;

  /// No description provided for @errMsgDocumentCouldNotBeUploaded.
  ///
  /// In en, this message translates to:
  /// **'Document could not be uploaded'**
  String get errMsgDocumentCouldNotBeUploaded;

  /// No description provided for @errMsgDownloadErrorPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Download error. Please try again.'**
  String get errMsgDownloadErrorPleaseTryAgain;

  /// No description provided for @errMsgEnterAValidLabel.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid {label}'**
  String errMsgEnterAValidLabel(Object label);

  /// No description provided for @errMsgEnterAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter account number'**
  String get errMsgEnterAccountNumber;

  /// No description provided for @errMsgEnterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a {phoneNumberString}'**
  String errMsgEnterMobileNumber(Object phoneNumberString);

  /// No description provided for @errMsgEnterSortCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter sort code'**
  String get errMsgEnterSortCode;

  /// No description provided for @errMsgEnterValidUrl.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid url'**
  String get errMsgEnterValidUrl;

  /// No description provided for @errMsgEnterValidVATNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid VAT number'**
  String get errMsgEnterValidVATNumber;

  /// No description provided for @errMsgExpectedVATAmount.
  ///
  /// In en, this message translates to:
  /// **'The VAT amount is greater than the expected VAT Amount'**
  String get errMsgExpectedVATAmount;

  /// No description provided for @errMsgHaulageRateRequired.
  ///
  /// In en, this message translates to:
  /// **'No haulage rates are defined for the selected location and yard. You may still proceed by entering your desired rate manually.'**
  String get errMsgHaulageRateRequired;

  /// No description provided for @errMsgHaulageRateRequiredForCollectedTag.
  ///
  /// In en, this message translates to:
  /// **'Haulage charge is required when less charge is collected'**
  String get errMsgHaulageRateRequiredForCollectedTag;

  /// No description provided for @errMsgInvalidAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid 8 digit account number'**
  String get errMsgInvalidAccountNumber;

  /// No description provided for @errMsgInvalidEORINumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid EORI nummber'**
  String get errMsgInvalidEORINumber;

  /// No description provided for @errMsgInvalidSortCode.
  ///
  /// In en, this message translates to:
  /// **'\'Please enter a valid 6 digit sort code'**
  String get errMsgInvalidSortCode;

  /// No description provided for @errMsgInvalidURL.
  ///
  /// In en, this message translates to:
  /// **'Invalid url'**
  String get errMsgInvalidURL;

  /// No description provided for @errMsgInvalidVATNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid VAT number'**
  String get errMsgInvalidVATNumber;

  /// No description provided for @errMsgLocationPermissionsDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied'**
  String get errMsgLocationPermissionsDenied;

  /// No description provided for @errMsgMobileNumberLength.
  ///
  /// In en, this message translates to:
  /// **'Must contain only 10 to 12 digits'**
  String get errMsgMobileNumberLength;

  /// No description provided for @errMsgNetAmountNullValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter the net amount'**
  String get errMsgNetAmountNullValidation;

  /// No description provided for @errMsgNetAmountValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid net amount'**
  String get errMsgNetAmountValidation;

  /// No description provided for @errMsgNetherlandMobileNumberLength.
  ///
  /// In en, this message translates to:
  /// **'The number must consist of exactly 10 digits without spaces'**
  String get errMsgNetherlandMobileNumberLength;

  /// No description provided for @errMsgNullReturnedFromAccountService.
  ///
  /// In en, this message translates to:
  /// **'Null returned from account service'**
  String get errMsgNullReturnedFromAccountService;

  /// No description provided for @errMsgPleaseEnter.
  ///
  /// In en, this message translates to:
  /// **'Please enter {label}'**
  String errMsgPleaseEnter(Object label);

  /// No description provided for @errMsgPleaseEnterAddressLine1.
  ///
  /// In en, this message translates to:
  /// **'Please enter Address Line 1'**
  String get errMsgPleaseEnterAddressLine1;

  /// No description provided for @errMsgPleaseEnterValidEORINumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid EORI number'**
  String get errMsgPleaseEnterValidEORINumber;

  /// No description provided for @errMsgPostcodeLength.
  ///
  /// In en, this message translates to:
  /// **'Postcode must be between 3 and 12 characters'**
  String get errMsgPostcodeLength;

  /// No description provided for @errMsgRateRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid rate'**
  String get errMsgRateRequired;

  /// No description provided for @errMsgSelectCountry.
  ///
  /// In en, this message translates to:
  /// **'Please select a country from the list before continuing.'**
  String get errMsgSelectCountry;

  /// No description provided for @errMsgSelectYourLocalYard.
  ///
  /// In en, this message translates to:
  /// **'Please select your local yard'**
  String get errMsgSelectYourLocalYard;

  /// No description provided for @errMsgTagTemplateRequired.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one tag template/reason.'**
  String get errMsgTagTemplateRequired;

  /// No description provided for @errMsgUKMobileNumberLength.
  ///
  /// In en, this message translates to:
  /// **'Must Contain 10 or 11 digits. If it\'s 11 digits, it must start with \'0\''**
  String get errMsgUKMobileNumberLength;

  /// No description provided for @errMsgUSMobileNumberLength.
  ///
  /// In en, this message translates to:
  /// **'Must Contain 10 digits'**
  String get errMsgUSMobileNumberLength;

  /// No description provided for @errMsgUnitMismatchError.
  ///
  /// In en, this message translates to:
  /// **'You can only select prices with the same unit. Please deselect the current selection to choose a different unit.'**
  String get errMsgUnitMismatchError;

  /// No description provided for @errMsgVATAmountNullValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter the VAT amount'**
  String get errMsgVATAmountNullValidation;

  /// No description provided for @errMsgVATAmountValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid VAT amount'**
  String get errMsgVATAmountValidation;

  /// No description provided for @errMsgVerificationCodeInvalid.
  ///
  /// In en, this message translates to:
  /// **'Verification code must be only numbers and 6 digits long.'**
  String get errMsgVerificationCodeInvalid;

  /// No description provided for @errPaymentDetailsCouldNotBeUpdated.
  ///
  /// In en, this message translates to:
  /// **'Payment details could not be updated.'**
  String get errPaymentDetailsCouldNotBeUpdated;

  /// No description provided for @errPostcodeIsNotValid.
  ///
  /// In en, this message translates to:
  /// **'Postcode is not valid'**
  String get errPostcodeIsNotValid;

  /// No description provided for @errQuoteNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Quote confirmation is pending, please confirm before proceeding.'**
  String get errQuoteNotConfirmed;

  /// No description provided for @errSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops, Something went wrong'**
  String get errSomethingWentWrong;

  /// No description provided for @errUploadDocumentFailed.
  ///
  /// In en, this message translates to:
  /// **'Document upload failed. Please try again, or bring your document(s) to your nearest EMR Yard for assistance'**
  String get errUploadDocumentFailed;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @errorAndTryAgainMsg.
  ///
  /// In en, this message translates to:
  /// **'An error occurred \nPlease try again later'**
  String get errorAndTryAgainMsg;

  /// No description provided for @errorFetchingAdvances.
  ///
  /// In en, this message translates to:
  /// **'Error fetching advances'**
  String get errorFetchingAdvances;

  /// No description provided for @errorFetchingEncashmentValues.
  ///
  /// In en, this message translates to:
  /// **'Error fetching encashment values'**
  String get errorFetchingEncashmentValues;

  /// No description provided for @errorFetchingPaymentRules.
  ///
  /// In en, this message translates to:
  /// **'Error fetching payment rules'**
  String get errorFetchingPaymentRules;

  /// No description provided for @errorGpsDataLoad.
  ///
  /// In en, this message translates to:
  /// **'Error loading GPS data.'**
  String get errorGpsDataLoad;

  /// No description provided for @errorInCancellation.
  ///
  /// In en, this message translates to:
  /// **'Error in cancellation'**
  String get errorInCancellation;

  /// No description provided for @errorLoadingTrucks.
  ///
  /// In en, this message translates to:
  /// **'Error loading trucks.'**
  String get errorLoadingTrucks;

  /// No description provided for @errorMessageAmountLessThanOrEqualToZero.
  ///
  /// In en, this message translates to:
  /// **'Cannot pay amount less than or equal to 0'**
  String get errorMessageAmountLessThanOrEqualToZero;

  /// No description provided for @errorMsgForReassignment.
  ///
  /// In en, this message translates to:
  /// **'Job type does not support reassignment.'**
  String get errorMsgForReassignment;

  /// No description provided for @errorMsgForThirdPertyScheduling.
  ///
  /// In en, this message translates to:
  /// **'Unexpected job type for third-party scheduling.'**
  String get errorMsgForThirdPertyScheduling;

  /// No description provided for @errorMsgHaulierDoesNotSupport.
  ///
  /// In en, this message translates to:
  /// **'Type is not supported for internal/managed hauliers.'**
  String get errorMsgHaulierDoesNotSupport;

  /// No description provided for @errorMsgRange.
  ///
  /// In en, this message translates to:
  /// **'Allowed range is {min} to {max}.'**
  String errorMsgRange(Object max, Object min);

  /// No description provided for @errorMsgTimeRequired.
  ///
  /// In en, this message translates to:
  /// **'Time must not be null for internal/managed hauliers.'**
  String get errorMsgTimeRequired;

  /// No description provided for @errorProofOfAddressExpired.
  ///
  /// In en, this message translates to:
  /// **'Your Proof of Address has expired.'**
  String get errorProofOfAddressExpired;

  /// No description provided for @errorProofOfAddressIsExpiring.
  ///
  /// In en, this message translates to:
  /// **'Your Proof of Address is expiring soon.'**
  String get errorProofOfAddressIsExpiring;

  /// No description provided for @errorProofOfAddressIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Proof of Address is required.'**
  String get errorProofOfAddressIsRequired;

  /// No description provided for @errorProofOfIDExpired.
  ///
  /// In en, this message translates to:
  /// **'Your Proof of ID has expired.'**
  String get errorProofOfIDExpired;

  /// No description provided for @errorProofOfIDIsExpiring.
  ///
  /// In en, this message translates to:
  /// **'Your Proof of ID is expiring soon.'**
  String get errorProofOfIDIsExpiring;

  /// No description provided for @errorProofOfIDIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Proof of ID is required.'**
  String get errorProofOfIDIsRequired;

  /// No description provided for @errorRefreshingTrucks.
  ///
  /// In en, this message translates to:
  /// **'Error refreshing trucks.'**
  String get errorRefreshingTrucks;

  /// No description provided for @errorSendGpl.
  ///
  /// In en, this message translates to:
  /// **'Error in sending gpl to buying manager.'**
  String get errorSendGpl;

  /// No description provided for @errorSplitPaymentWithZeroPayable.
  ///
  /// In en, this message translates to:
  /// **'Cannot split for zero paywhen payable amount is zero.'**
  String get errorSplitPaymentWithZeroPayable;

  /// No description provided for @errorSplittingTicket.
  ///
  /// In en, this message translates to:
  /// **'Error splitting ticket'**
  String get errorSplittingTicket;

  /// No description provided for @errorUploadingImage.
  ///
  /// In en, this message translates to:
  /// **'Error uploading image'**
  String get errorUploadingImage;

  /// No description provided for @errors.
  ///
  /// In en, this message translates to:
  /// **'Errors'**
  String get errors;

  /// No description provided for @estimateHaulage.
  ///
  /// In en, this message translates to:
  /// **'Estimated Haulage Cost Per Tonne / LB'**
  String get estimateHaulage;

  /// No description provided for @estimatedHaulageCostMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter your estimated haulage cost'**
  String get estimatedHaulageCostMsg;

  /// No description provided for @estimatedHaulageCostOptionalMsg.
  ///
  /// In en, this message translates to:
  /// **'Optional - Enter your estimated haulage cost'**
  String get estimatedHaulageCostOptionalMsg;

  /// No description provided for @eu.
  ///
  /// In en, this message translates to:
  /// **'EU'**
  String get eu;

  /// No description provided for @eulerUK.
  ///
  /// In en, this message translates to:
  /// **'Euler UK'**
  String get eulerUK;

  /// No description provided for @eulerUSA.
  ///
  /// In en, this message translates to:
  /// **'Euler USA'**
  String get eulerUSA;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @ewcCode.
  ///
  /// In en, this message translates to:
  /// **'EWC Code'**
  String get ewcCode;

  /// No description provided for @ewcCodes.
  ///
  /// In en, this message translates to:
  /// **'EWC codes'**
  String get ewcCodes;

  /// No description provided for @ewcControl.
  ///
  /// In en, this message translates to:
  /// **'EWC Control'**
  String get ewcControl;

  /// No description provided for @example.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get example;

  /// No description provided for @exampleEditableGrid.
  ///
  /// In en, this message translates to:
  /// **'Example Editable Grid'**
  String get exampleEditableGrid;

  /// No description provided for @exampleForm.
  ///
  /// In en, this message translates to:
  /// **'Example Form'**
  String get exampleForm;

  /// No description provided for @examplePurchaseReciept.
  ///
  /// In en, this message translates to:
  /// **'e.g. PurchaseReceipt'**
  String get examplePurchaseReciept;

  /// No description provided for @exampleTraderCopy.
  ///
  /// In en, this message translates to:
  /// **'e.g. Trader Copy'**
  String get exampleTraderCopy;

  /// No description provided for @exchangeRate.
  ///
  /// In en, this message translates to:
  /// **'Exchange Rate'**
  String get exchangeRate;

  /// No description provided for @existingAccount.
  ///
  /// In en, this message translates to:
  /// **'Existing Account'**
  String get existingAccount;

  /// No description provided for @existingAccountLogin.
  ///
  /// In en, this message translates to:
  /// **'Existing Account Login'**
  String get existingAccountLogin;

  /// No description provided for @existingContact.
  ///
  /// In en, this message translates to:
  /// **'Existing Contact'**
  String get existingContact;

  /// No description provided for @existingContactType.
  ///
  /// In en, this message translates to:
  /// **'Existing Contact Type'**
  String get existingContactType;

  /// No description provided for @existingLot.
  ///
  /// In en, this message translates to:
  /// **'Existing Lot'**
  String get existingLot;

  /// No description provided for @existingNotes.
  ///
  /// In en, this message translates to:
  /// **'Existing Notes'**
  String get existingNotes;

  /// No description provided for @existingTemplates.
  ///
  /// In en, this message translates to:
  /// **'Existing Templates'**
  String get existingTemplates;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @exitWithoutSaving.
  ///
  /// In en, this message translates to:
  /// **'Exit Without Saving'**
  String get exitWithoutSaving;

  /// No description provided for @expectedStockUnits.
  ///
  /// In en, this message translates to:
  /// **'Expected Stock Units'**
  String get expectedStockUnits;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date'**
  String get expirationDate;

  /// No description provided for @expireTagOnNextPublication.
  ///
  /// In en, this message translates to:
  /// **'Expire tag on next publication issue'**
  String get expireTagOnNextPublication;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @expiring.
  ///
  /// In en, this message translates to:
  /// **'Expiring in'**
  String get expiring;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @exportAsCSV.
  ///
  /// In en, this message translates to:
  /// **'Export As CSV'**
  String get exportAsCSV;

  /// No description provided for @exportFailed.
  ///
  /// In en, this message translates to:
  /// **'Export Failed'**
  String get exportFailed;

  /// No description provided for @exportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Exported Successfully.'**
  String get exportSuccess;

  /// No description provided for @exportToCSV.
  ///
  /// In en, this message translates to:
  /// **'Export to CSV'**
  String get exportToCSV;

  /// No description provided for @exportToExcel.
  ///
  /// In en, this message translates to:
  /// **'Export to Excel'**
  String get exportToExcel;

  /// No description provided for @exportToPDF.
  ///
  /// In en, this message translates to:
  /// **'Export to PDF'**
  String get exportToPDF;

  /// No description provided for @extend.
  ///
  /// In en, this message translates to:
  /// **'Extend'**
  String get extend;

  /// No description provided for @extendContract.
  ///
  /// In en, this message translates to:
  /// **'Extend Contract'**
  String get extendContract;

  /// No description provided for @exterior.
  ///
  /// In en, this message translates to:
  /// **'Exterior'**
  String get exterior;

  /// No description provided for @externalNoRatesMsg.
  ///
  /// In en, this message translates to:
  /// **'External: No rates available.'**
  String get externalNoRatesMsg;

  /// No description provided for @externalNotes.
  ///
  /// In en, this message translates to:
  /// **'External Notes'**
  String get externalNotes;

  /// No description provided for @extractedDetails.
  ///
  /// In en, this message translates to:
  /// **'Extracted Details'**
  String get extractedDetails;

  /// No description provided for @extractionInProgress.
  ///
  /// In en, this message translates to:
  /// **'Extracting document information...'**
  String get extractionInProgress;

  /// No description provided for @faCurrencySymbolName.
  ///
  /// In en, this message translates to:
  /// **'sterlingSign'**
  String get faCurrencySymbolName;

  /// No description provided for @fabClass.
  ///
  /// In en, this message translates to:
  /// **'Fab Class'**
  String get fabClass;

  /// No description provided for @facetContainerLifeCycleStatusDisplay.
  ///
  /// In en, this message translates to:
  /// **'Lifecycle status'**
  String get facetContainerLifeCycleStatusDisplay;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @failedLookups.
  ///
  /// In en, this message translates to:
  /// **'Failed Lookups'**
  String get failedLookups;

  /// No description provided for @failedToAddANewChequeBook.
  ///
  /// In en, this message translates to:
  /// **'Failed to Add a New Cheque Book'**
  String get failedToAddANewChequeBook;

  /// No description provided for @failedToAllocateChequeNumbers.
  ///
  /// In en, this message translates to:
  /// **'Failed to Allocate Cheque Numbers'**
  String get failedToAllocateChequeNumbers;

  /// No description provided for @failedToDeleteContact.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete contact.'**
  String get failedToDeleteContact;

  /// No description provided for @failedToDeleteTeam.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete team.'**
  String get failedToDeleteTeam;

  /// No description provided for @failedToFetchContainerLocations.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch container locations.'**
  String get failedToFetchContainerLocations;

  /// No description provided for @failedToFetchTrailerLocations.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch trailer locations.'**
  String get failedToFetchTrailerLocations;

  /// No description provided for @failedToLoadData.
  ///
  /// In en, this message translates to:
  /// **'Failed to load data'**
  String get failedToLoadData;

  /// No description provided for @failedToLoadQR.
  ///
  /// In en, this message translates to:
  /// **'Failed to load QR code'**
  String get failedToLoadQR;

  /// No description provided for @failedToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh'**
  String get failedToRefresh;

  /// No description provided for @failedToValidate.
  ///
  /// In en, this message translates to:
  /// **'Failed to validate'**
  String get failedToValidate;

  /// No description provided for @falseText.
  ///
  /// In en, this message translates to:
  /// **'false'**
  String get falseText;

  /// No description provided for @farLeaseExpensed.
  ///
  /// In en, this message translates to:
  /// **'Far / Leased / Expensed'**
  String get farLeaseExpensed;

  /// No description provided for @fastTrackYourPayment.
  ///
  /// In en, this message translates to:
  /// **'Fast track your payment'**
  String get fastTrackYourPayment;

  /// No description provided for @fasterPay.
  ///
  /// In en, this message translates to:
  /// **'Faster Pay'**
  String get fasterPay;

  /// No description provided for @fasterPayment.
  ///
  /// In en, this message translates to:
  /// **'Faster Payment'**
  String get fasterPayment;

  /// No description provided for @faultSymptomLabel.
  ///
  /// In en, this message translates to:
  /// **'Fault Symptom'**
  String get faultSymptomLabel;

  /// No description provided for @faultTitleOnNo.
  ///
  /// In en, this message translates to:
  /// **'Fault Title on \'No\''**
  String get faultTitleOnNo;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Favourite'**
  String get favourite;

  /// No description provided for @favouriteFilters.
  ///
  /// In en, this message translates to:
  /// **'Favourite Filters'**
  String get favouriteFilters;

  /// No description provided for @favourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get favourites;

  /// No description provided for @faxNumber.
  ///
  /// In en, this message translates to:
  /// **'Fax Number'**
  String get faxNumber;

  /// No description provided for @feesSummary.
  ///
  /// In en, this message translates to:
  /// **'Fees Summary'**
  String get feesSummary;

  /// No description provided for @ferrous.
  ///
  /// In en, this message translates to:
  /// **'Ferrous'**
  String get ferrous;

  /// No description provided for @fetchingHazardousData.
  ///
  /// In en, this message translates to:
  /// **'Fetching Hazardous Data'**
  String get fetchingHazardousData;

  /// No description provided for @fieldsAreRequired.
  ///
  /// In en, this message translates to:
  /// **'Fields are required'**
  String get fieldsAreRequired;

  /// No description provided for @fileBytesNull.
  ///
  /// In en, this message translates to:
  /// **'File bytes are null on web'**
  String get fileBytesNull;

  /// No description provided for @filePathNull.
  ///
  /// In en, this message translates to:
  /// **'File path is null'**
  String get filePathNull;

  /// No description provided for @fill.
  ///
  /// In en, this message translates to:
  /// **'Fill'**
  String get fill;

  /// No description provided for @filterBy.
  ///
  /// In en, this message translates to:
  /// **'Filter by : '**
  String get filterBy;

  /// No description provided for @filterGradesByCategory.
  ///
  /// In en, this message translates to:
  /// **'Filter grades by category'**
  String get filterGradesByCategory;

  /// No description provided for @filtered.
  ///
  /// In en, this message translates to:
  /// **'Filtered'**
  String get filtered;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @finalReceipt.
  ///
  /// In en, this message translates to:
  /// **'Final Receipt'**
  String get finalReceipt;

  /// No description provided for @finalValuation.
  ///
  /// In en, this message translates to:
  /// **'Final Valuation'**
  String get finalValuation;

  /// No description provided for @finalWord.
  ///
  /// In en, this message translates to:
  /// **'Final'**
  String get finalWord;

  /// No description provided for @financialCustomerGroup.
  ///
  /// In en, this message translates to:
  /// **'Financial Customer Group'**
  String get financialCustomerGroup;

  /// No description provided for @financialGroups.
  ///
  /// In en, this message translates to:
  /// **'Financial Groups'**
  String get financialGroups;

  /// No description provided for @financialPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Financial Payment Method'**
  String get financialPaymentMethod;

  /// No description provided for @financialSupplierGroup.
  ///
  /// In en, this message translates to:
  /// **'Financial Supplier Group'**
  String get financialSupplierGroup;

  /// No description provided for @findOutAboutPromotions.
  ///
  /// In en, this message translates to:
  /// **'Find out about promotions'**
  String get findOutAboutPromotions;

  /// No description provided for @findYourLocalEMR.
  ///
  /// In en, this message translates to:
  /// **'Find your local EMR'**
  String get findYourLocalEMR;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @finishAssessment.
  ///
  /// In en, this message translates to:
  /// **'Finish Assessment'**
  String get finishAssessment;

  /// No description provided for @finishProductionSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Beam(s) created successfully:\n{barcodes}'**
  String finishProductionSuccessMessage(Object barcodes);

  /// No description provided for @finishProductionValidation.
  ///
  /// In en, this message translates to:
  /// **'Please ensure all stock units have been measured!'**
  String get finishProductionValidation;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @finishedGoods.
  ///
  /// In en, this message translates to:
  /// **'Finished Goods'**
  String get finishedGoods;

  /// No description provided for @finishedTheJob.
  ///
  /// In en, this message translates to:
  /// **'Finished the Job'**
  String get finishedTheJob;

  /// No description provided for @fireRegister.
  ///
  /// In en, this message translates to:
  /// **'Fire Register'**
  String get fireRegister;

  /// No description provided for @fireRollCallLogs.
  ///
  /// In en, this message translates to:
  /// **'Fire roll call logs'**
  String get fireRollCallLogs;

  /// No description provided for @firstMovementDate.
  ///
  /// In en, this message translates to:
  /// **'First Movement Date'**
  String get firstMovementDate;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @firstNameLengthValidation.
  ///
  /// In en, this message translates to:
  /// **'First name must be at least {num} characters'**
  String firstNameLengthValidation(Object num);

  /// No description provided for @fiveTimesADay.
  ///
  /// In en, this message translates to:
  /// **'Five Times a day'**
  String get fiveTimesADay;

  /// No description provided for @fixValidationDisplay.
  ///
  /// In en, this message translates to:
  /// **'Please correct the validation error(s).'**
  String get fixValidationDisplay;

  /// No description provided for @fixed.
  ///
  /// In en, this message translates to:
  /// **'Fixed'**
  String get fixed;

  /// No description provided for @fixedContract.
  ///
  /// In en, this message translates to:
  /// **'Fixed Contract'**
  String get fixedContract;

  /// No description provided for @fixedContractConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Fixed Contract Confirmed'**
  String get fixedContractConfirmed;

  /// No description provided for @fixedPerVisit.
  ///
  /// In en, this message translates to:
  /// **'Fixed Per Visit'**
  String get fixedPerVisit;

  /// No description provided for @flangeBoltHoles.
  ///
  /// In en, this message translates to:
  /// **'Flange Bolt Holes'**
  String get flangeBoltHoles;

  /// No description provided for @floorInside.
  ///
  /// In en, this message translates to:
  /// **'Floor (inside/underneath)'**
  String get floorInside;

  /// No description provided for @forExample.
  ///
  /// In en, this message translates to:
  /// **'e.g. {example}'**
  String forExample(Object example);

  /// No description provided for @forceRefresh.
  ///
  /// In en, this message translates to:
  /// **'Force Refresh'**
  String get forceRefresh;

  /// No description provided for @foreignIndicator.
  ///
  /// In en, this message translates to:
  /// **'Foreign Indicator'**
  String get foreignIndicator;

  /// No description provided for @formDisabledHint.
  ///
  /// In en, this message translates to:
  /// **'This section is disabled until job is completed, to prevent conflicts with mobile devices.'**
  String get formDisabledHint;

  /// No description provided for @formSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Form Submitted!'**
  String get formSubmitted;

  /// No description provided for @fortnightly.
  ///
  /// In en, this message translates to:
  /// **'Fortnightly'**
  String get fortnightly;

  /// No description provided for @fourDigitsEntered.
  ///
  /// In en, this message translates to:
  /// **'4 Digits Entered'**
  String get fourDigitsEntered;

  /// No description provided for @fourTimesADay.
  ///
  /// In en, this message translates to:
  /// **'Four Times a day'**
  String get fourTimesADay;

  /// No description provided for @freightRates.
  ///
  /// In en, this message translates to:
  /// **'Freight Rates'**
  String get freightRates;

  /// No description provided for @frequency.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get frequency;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @friendlyName.
  ///
  /// In en, this message translates to:
  /// **'Friendly Name'**
  String get friendlyName;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @fromDateTime.
  ///
  /// In en, this message translates to:
  /// **'From Date Time'**
  String get fromDateTime;

  /// No description provided for @fromGpl.
  ///
  /// In en, this message translates to:
  /// **'From GPL'**
  String get fromGpl;

  /// No description provided for @fromThisJob.
  ///
  /// In en, this message translates to:
  /// **'from this job'**
  String get fromThisJob;

  /// No description provided for @fromToKey.
  ///
  /// In en, this message translates to:
  /// **'FromTo'**
  String get fromToKey;

  /// No description provided for @front.
  ///
  /// In en, this message translates to:
  /// **'Front'**
  String get front;

  /// No description provided for @frontEndParts.
  ///
  /// In en, this message translates to:
  /// **'Front End Parts'**
  String get frontEndParts;

  /// No description provided for @frontEngineAccessible.
  ///
  /// In en, this message translates to:
  /// **'Front of engine - accessible'**
  String get frontEngineAccessible;

  /// No description provided for @frontVehiclePictureHeaderText.
  ///
  /// In en, this message translates to:
  /// **'Front'**
  String get frontVehiclePictureHeaderText;

  /// No description provided for @fuel.
  ///
  /// In en, this message translates to:
  /// **'Fuel'**
  String get fuel;

  /// No description provided for @fuelType.
  ///
  /// In en, this message translates to:
  /// **'Fuel Type'**
  String get fuelType;

  /// No description provided for @fullScreen.
  ///
  /// In en, this message translates to:
  /// **'Full Screen'**
  String get fullScreen;

  /// No description provided for @fullWeightDetails.
  ///
  /// In en, this message translates to:
  /// **'Full Weight Details'**
  String get fullWeightDetails;

  /// No description provided for @fullyCharged.
  ///
  /// In en, this message translates to:
  /// **'Fully Charged'**
  String get fullyCharged;

  /// No description provided for @fullyLoaded.
  ///
  /// In en, this message translates to:
  /// **'Fully Loaded Container'**
  String get fullyLoaded;

  /// No description provided for @fullyLoadedBothDoorsShutSeals.
  ///
  /// In en, this message translates to:
  /// **'Fully Closed With Seals'**
  String get fullyLoadedBothDoorsShutSeals;

  /// No description provided for @fullyLoadedOneDoorShut.
  ///
  /// In en, this message translates to:
  /// **'Fully Loaded One Door Shut'**
  String get fullyLoadedOneDoorShut;

  /// No description provided for @fullyLoadedOneDoorShutRadiation.
  ///
  /// In en, this message translates to:
  /// **'Fully Loaded With Radiation'**
  String get fullyLoadedOneDoorShutRadiation;

  /// No description provided for @functional.
  ///
  /// In en, this message translates to:
  /// **'Functional'**
  String get functional;

  /// No description provided for @functionalLocation.
  ///
  /// In en, this message translates to:
  /// **'FunctionalLocation'**
  String get functionalLocation;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @gdprPreferences.
  ///
  /// In en, this message translates to:
  /// **'GDPR Preferences'**
  String get gdprPreferences;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @generalHouseClearance.
  ///
  /// In en, this message translates to:
  /// **'General House Clearance'**
  String get generalHouseClearance;

  /// No description provided for @generalQuestions.
  ///
  /// In en, this message translates to:
  /// **'General Questions'**
  String get generalQuestions;

  /// No description provided for @generateButtonText.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get generateButtonText;

  /// No description provided for @generateQrCode.
  ///
  /// In en, this message translates to:
  /// **'Generate QR Code'**
  String get generateQrCode;

  /// No description provided for @generatingConsignmentNumber.
  ///
  /// In en, this message translates to:
  /// **'Generating consignment number'**
  String get generatingConsignmentNumber;

  /// No description provided for @generatingNewQuoteFrom.
  ///
  /// In en, this message translates to:
  /// **'Generating new quote from Batch Quote: '**
  String get generatingNewQuoteFrom;

  /// No description provided for @getFasterPayment.
  ///
  /// In en, this message translates to:
  /// **'Let’s get you faster payments'**
  String get getFasterPayment;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @getStartedWithEMR.
  ///
  /// In en, this message translates to:
  /// **'Get started with EMR'**
  String get getStartedWithEMR;

  /// No description provided for @getStepNumber.
  ///
  /// In en, this message translates to:
  /// **'STEP {stepNumber}'**
  String getStepNumber(Object stepNumber);

  /// No description provided for @getTemplates.
  ///
  /// In en, this message translates to:
  /// **'Get Templates'**
  String get getTemplates;

  /// No description provided for @gettingVehicleQuoteFor.
  ///
  /// In en, this message translates to:
  /// **'Getting Vehicle Quote For'**
  String get gettingVehicleQuoteFor;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// No description provided for @goBackAndTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please go back and try again.'**
  String get goBackAndTryAgain;

  /// No description provided for @goGreenMotor.
  ///
  /// In en, this message translates to:
  /// **'Go Green'**
  String get goGreenMotor;

  /// No description provided for @goToPortal.
  ///
  /// In en, this message translates to:
  /// **'Go to Portal'**
  String get goToPortal;

  /// No description provided for @gpl.
  ///
  /// In en, this message translates to:
  /// **'GPL'**
  String get gpl;

  /// No description provided for @gplIssueReference.
  ///
  /// In en, this message translates to:
  /// **'GPL Issue Reference'**
  String get gplIssueReference;

  /// No description provided for @gplLines.
  ///
  /// In en, this message translates to:
  /// **'GPL Lines'**
  String get gplLines;

  /// No description provided for @gplPrice.
  ///
  /// In en, this message translates to:
  /// **'GPL Price'**
  String get gplPrice;

  /// No description provided for @grade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get grade;

  /// No description provided for @gradePricing.
  ///
  /// In en, this message translates to:
  /// **'Grade Pricing'**
  String get gradePricing;

  /// No description provided for @gradeSelection.
  ///
  /// In en, this message translates to:
  /// **'Grade Selection'**
  String get gradeSelection;

  /// No description provided for @gradeWithBrokerRefExist.
  ///
  /// In en, this message translates to:
  /// **'Grade with broker reference alraedy exist.'**
  String get gradeWithBrokerRefExist;

  /// No description provided for @grades.
  ///
  /// In en, this message translates to:
  /// **'Grades'**
  String get grades;

  /// No description provided for @grandTotal.
  ///
  /// In en, this message translates to:
  /// **'Grand Total'**
  String get grandTotal;

  /// No description provided for @great.
  ///
  /// In en, this message translates to:
  /// **'Great'**
  String get great;

  /// No description provided for @gridView.
  ///
  /// In en, this message translates to:
  /// **'Grid View'**
  String get gridView;

  /// No description provided for @gross.
  ///
  /// In en, this message translates to:
  /// **'Gross'**
  String get gross;

  /// No description provided for @grossOfDiscount.
  ///
  /// In en, this message translates to:
  /// **'Gross of Discount'**
  String get grossOfDiscount;

  /// No description provided for @grossOfTax.
  ///
  /// In en, this message translates to:
  /// **'Gross of Tax'**
  String get grossOfTax;

  /// No description provided for @grossWeight.
  ///
  /// In en, this message translates to:
  /// **'Gross Weight'**
  String get grossWeight;

  /// No description provided for @grossWeightW1.
  ///
  /// In en, this message translates to:
  /// **'Gross Weight (W1)'**
  String get grossWeightW1;

  /// No description provided for @group.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// No description provided for @groupNotFound.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Group not found.'**
  String get groupNotFound;

  /// No description provided for @groupOES.
  ///
  /// In en, this message translates to:
  /// **'Group OES'**
  String get groupOES;

  /// No description provided for @groupWithNextJob.
  ///
  /// In en, this message translates to:
  /// **'Group the Job with Next Job'**
  String get groupWithNextJob;

  /// No description provided for @groupWithPreviousJob.
  ///
  /// In en, this message translates to:
  /// **'Group the Job with Previous job'**
  String get groupWithPreviousJob;

  /// No description provided for @grouping.
  ///
  /// In en, this message translates to:
  /// **'Grouping'**
  String get grouping;

  /// No description provided for @groupingMethod.
  ///
  /// In en, this message translates to:
  /// **'Grouping Method'**
  String get groupingMethod;

  /// No description provided for @guid.
  ///
  /// In en, this message translates to:
  /// **'GUID'**
  String get guid;

  /// No description provided for @guidePriceList.
  ///
  /// In en, this message translates to:
  /// **'Guide Price List'**
  String get guidePriceList;

  /// No description provided for @handlingFee.
  ///
  /// In en, this message translates to:
  /// **'Handling Fee'**
  String get handlingFee;

  /// No description provided for @handlingWaste.
  ///
  /// In en, this message translates to:
  /// **'Handling Waste'**
  String get handlingWaste;

  /// No description provided for @handlingYard.
  ///
  /// In en, this message translates to:
  /// **'Handling Yard'**
  String get handlingYard;

  /// No description provided for @hardness.
  ///
  /// In en, this message translates to:
  /// **'Hardness'**
  String get hardness;

  /// No description provided for @hardnessResult.
  ///
  /// In en, this message translates to:
  /// **'Hardness Result'**
  String get hardnessResult;

  /// No description provided for @hasBattery.
  ///
  /// In en, this message translates to:
  /// **'Has Battery'**
  String get hasBattery;

  /// No description provided for @hasBatteryAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Has battery?'**
  String get hasBatteryAlertMessage;

  /// No description provided for @hasCATAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Has CAT?'**
  String get hasCATAlertMessage;

  /// No description provided for @hasHazardousWasteConsignmentNote.
  ///
  /// In en, this message translates to:
  /// **'Has Hazardous Waste Consignment Note'**
  String get hasHazardousWasteConsignmentNote;

  /// No description provided for @hasJobContainerImagesDisplay.
  ///
  /// In en, this message translates to:
  /// **'Has Job Container Images'**
  String get hasJobContainerImagesDisplay;

  /// No description provided for @hasOriginalCat.
  ///
  /// In en, this message translates to:
  /// **'Has Original Cat'**
  String get hasOriginalCat;

  /// No description provided for @haulage.
  ///
  /// In en, this message translates to:
  /// **'Haulage'**
  String get haulage;

  /// No description provided for @haulageAdjustmentCharge.
  ///
  /// In en, this message translates to:
  /// **'Haulage Adjustment Charge'**
  String get haulageAdjustmentCharge;

  /// No description provided for @haulageCharge.
  ///
  /// In en, this message translates to:
  /// **'Haulage Charge'**
  String get haulageCharge;

  /// No description provided for @haulagePrice.
  ///
  /// In en, this message translates to:
  /// **'Haulage Price'**
  String get haulagePrice;

  /// No description provided for @haulageRate.
  ///
  /// In en, this message translates to:
  /// **'Haulage Rate'**
  String get haulageRate;

  /// No description provided for @haulier.
  ///
  /// In en, this message translates to:
  /// **'Haulier'**
  String get haulier;

  /// No description provided for @haulierDeleteHint.
  ///
  /// In en, this message translates to:
  /// **'All the jobs created for this haulier will be deleted'**
  String get haulierDeleteHint;

  /// No description provided for @haulierReport.
  ///
  /// In en, this message translates to:
  /// **'Haulier Report'**
  String get haulierReport;

  /// No description provided for @haulierSettings.
  ///
  /// In en, this message translates to:
  /// **'Haulier Settings'**
  String get haulierSettings;

  /// No description provided for @haulierType.
  ///
  /// In en, this message translates to:
  /// **'Haulier Type'**
  String get haulierType;

  /// No description provided for @hazardCodes.
  ///
  /// In en, this message translates to:
  /// **'Hazard Codes'**
  String get hazardCodes;

  /// No description provided for @hazardousData.
  ///
  /// In en, this message translates to:
  /// **'Hazardous Data'**
  String get hazardousData;

  /// No description provided for @headOffice.
  ///
  /// In en, this message translates to:
  /// **'Head Office'**
  String get headOffice;

  /// No description provided for @headOfficeDetails.
  ///
  /// In en, this message translates to:
  /// **'Head Office Details'**
  String get headOfficeDetails;

  /// No description provided for @headerText.
  ///
  /// In en, this message translates to:
  /// **'Header text'**
  String get headerText;

  /// No description provided for @heading.
  ///
  /// In en, this message translates to:
  /// **'Heading'**
  String get heading;

  /// No description provided for @heap.
  ///
  /// In en, this message translates to:
  /// **'Heap'**
  String get heap;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @hierarchy.
  ///
  /// In en, this message translates to:
  /// **'Hierarchy'**
  String get hierarchy;

  /// No description provided for @hintAdditionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Additional notes'**
  String get hintAdditionalNotes;

  /// No description provided for @hintAssetId.
  ///
  /// In en, this message translates to:
  /// **'Select an asset'**
  String get hintAssetId;

  /// No description provided for @hintDepot.
  ///
  /// In en, this message translates to:
  /// **'Search for a Depot'**
  String get hintDepot;

  /// No description provided for @hintDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get hintDescription;

  /// No description provided for @hintWriteAComment.
  ///
  /// In en, this message translates to:
  /// **'Write a comment…'**
  String get hintWriteAComment;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @hold.
  ///
  /// In en, this message translates to:
  /// **'Hold'**
  String get hold;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @homeImprovementsOrDIYProject.
  ///
  /// In en, this message translates to:
  /// **'Home Improvements / DIY Project'**
  String get homeImprovementsOrDIYProject;

  /// No description provided for @host.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get host;

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{hours}h ago'**
  String hoursAgo(int hours);

  /// No description provided for @houseNumber.
  ///
  /// In en, this message translates to:
  /// **'House Number'**
  String get houseNumber;

  /// No description provided for @howCanWeHelp.
  ///
  /// In en, this message translates to:
  /// **'How can we help'**
  String get howCanWeHelp;

  /// No description provided for @hsCompliance.
  ///
  /// In en, this message translates to:
  /// **'Health & Safety Compliance'**
  String get hsCompliance;

  /// No description provided for @hwcnLevel.
  ///
  /// In en, this message translates to:
  /// **'HWCN Level'**
  String get hwcnLevel;

  /// No description provided for @hybrid.
  ///
  /// In en, this message translates to:
  /// **'Hybrid'**
  String get hybrid;

  /// No description provided for @iban.
  ///
  /// In en, this message translates to:
  /// **'IBAN'**
  String get iban;

  /// No description provided for @icons.
  ///
  /// In en, this message translates to:
  /// **'Icons'**
  String get icons;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'Id'**
  String get id;

  /// No description provided for @identificationSubtypeBankOrBuildingSocietyStatement.
  ///
  /// In en, this message translates to:
  /// **'Bank/Building Society Statement'**
  String get identificationSubtypeBankOrBuildingSocietyStatement;

  /// No description provided for @identificationSubtypeBiometricImmigrationDocument.
  ///
  /// In en, this message translates to:
  /// **'Biometric Immigration Document'**
  String get identificationSubtypeBiometricImmigrationDocument;

  /// No description provided for @identificationSubtypeCouncilRentBook.
  ///
  /// In en, this message translates to:
  /// **'Council Rent Book'**
  String get identificationSubtypeCouncilRentBook;

  /// No description provided for @identificationSubtypeCouncilTaxDemandLetter.
  ///
  /// In en, this message translates to:
  /// **'Council Tax Demand Letter'**
  String get identificationSubtypeCouncilTaxDemandLetter;

  /// No description provided for @identificationSubtypeCreditOrDebitCardStatement.
  ///
  /// In en, this message translates to:
  /// **'Credit/Debit Card Statement'**
  String get identificationSubtypeCreditOrDebitCardStatement;

  /// No description provided for @identificationSubtypeEuDrivingLicense.
  ///
  /// In en, this message translates to:
  /// **'EU Driving License'**
  String get identificationSubtypeEuDrivingLicense;

  /// No description provided for @identificationSubtypeEuNationalIdCard.
  ///
  /// In en, this message translates to:
  /// **'EU National ID Card'**
  String get identificationSubtypeEuNationalIdCard;

  /// No description provided for @identificationSubtypeHmrcCorrespondance.
  ///
  /// In en, this message translates to:
  /// **'HMRC Correspondance'**
  String get identificationSubtypeHmrcCorrespondance;

  /// No description provided for @identificationSubtypeMortgageStatement.
  ///
  /// In en, this message translates to:
  /// **'Mortgage Statement'**
  String get identificationSubtypeMortgageStatement;

  /// No description provided for @identificationSubtypeUkDrivingLicense.
  ///
  /// In en, this message translates to:
  /// **'UK Driving License'**
  String get identificationSubtypeUkDrivingLicense;

  /// No description provided for @identificationSubtypeUkEuDrivingLicense.
  ///
  /// In en, this message translates to:
  /// **'UK/EU Driving License'**
  String get identificationSubtypeUkEuDrivingLicense;

  /// No description provided for @identificationSubtypeUkEuEeaPassport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get identificationSubtypeUkEuEeaPassport;

  /// No description provided for @identificationSubtypeUkFirearmsLicense.
  ///
  /// In en, this message translates to:
  /// **'UK Firearms License'**
  String get identificationSubtypeUkFirearmsLicense;

  /// No description provided for @identificationSubtypeUsaDrivingLicense.
  ///
  /// In en, this message translates to:
  /// **'USA Driving License'**
  String get identificationSubtypeUsaDrivingLicense;

  /// No description provided for @identificationSubtypeWasteTransferNote.
  ///
  /// In en, this message translates to:
  /// **'Waste Transfer Note'**
  String get identificationSubtypeWasteTransferNote;

  /// No description provided for @identifications.
  ///
  /// In en, this message translates to:
  /// **'Identifications'**
  String get identifications;

  /// No description provided for @identities.
  ///
  /// In en, this message translates to:
  /// **'Identities'**
  String get identities;

  /// No description provided for @identity.
  ///
  /// In en, this message translates to:
  /// **'Identity'**
  String get identity;

  /// No description provided for @ifcLink.
  ///
  /// In en, this message translates to:
  /// **'.ifc Link'**
  String get ifcLink;

  /// No description provided for @ignoreJobSequence.
  ///
  /// In en, this message translates to:
  /// **'Ignore Job Sequence'**
  String get ignoreJobSequence;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'image'**
  String get image;

  /// No description provided for @imageError.
  ///
  /// In en, this message translates to:
  /// **'Error while loading image!'**
  String get imageError;

  /// No description provided for @imageGallery.
  ///
  /// In en, this message translates to:
  /// **'Image Gallery'**
  String get imageGallery;

  /// No description provided for @imageNull.
  ///
  /// In en, this message translates to:
  /// **'Image file path is null'**
  String get imageNull;

  /// No description provided for @imageUpload.
  ///
  /// In en, this message translates to:
  /// **'Image Upload'**
  String get imageUpload;

  /// No description provided for @imageUrl.
  ///
  /// In en, this message translates to:
  /// **'Image URL'**
  String get imageUrl;

  /// No description provided for @images.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get images;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @importAsset.
  ///
  /// In en, this message translates to:
  /// **'Import Asset'**
  String get importAsset;

  /// No description provided for @importBulkAsset.
  ///
  /// In en, this message translates to:
  /// **'Import Bulk Asset'**
  String get importBulkAsset;

  /// No description provided for @importFailedText.
  ///
  /// In en, this message translates to:
  /// **'Import Failed'**
  String get importFailedText;

  /// No description provided for @importPlans.
  ///
  /// In en, this message translates to:
  /// **'Import Plans'**
  String get importPlans;

  /// No description provided for @importTemplate.
  ///
  /// In en, this message translates to:
  /// **'Import Template'**
  String get importTemplate;

  /// No description provided for @inCloud.
  ///
  /// In en, this message translates to:
  /// **'In Cloud'**
  String get inCloud;

  /// No description provided for @inForm.
  ///
  /// In en, this message translates to:
  /// **'InForm'**
  String get inForm;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @inProgressJobIds.
  ///
  /// In en, this message translates to:
  /// **'InProgressJobIds'**
  String get inProgressJobIds;

  /// No description provided for @inSyncQueue.
  ///
  /// In en, this message translates to:
  /// **'In Sync Queue'**
  String get inSyncQueue;

  /// No description provided for @inTrade.
  ///
  /// In en, this message translates to:
  /// **'In Trade'**
  String get inTrade;

  /// No description provided for @inUse.
  ///
  /// In en, this message translates to:
  /// **'In Use'**
  String get inUse;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// No description provided for @incendia.
  ///
  /// In en, this message translates to:
  /// **'Incendia'**
  String get incendia;

  /// No description provided for @incident.
  ///
  /// In en, this message translates to:
  /// **'Incident'**
  String get incident;

  /// No description provided for @includeFuelSurcharge.
  ///
  /// In en, this message translates to:
  /// **'Include Fuel Surcharge'**
  String get includeFuelSurcharge;

  /// No description provided for @includeHaulageRates.
  ///
  /// In en, this message translates to:
  /// **'Include Haulage Rates'**
  String get includeHaulageRates;

  /// No description provided for @incorrectAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount does not match'**
  String get incorrectAmount;

  /// No description provided for @incorrectVin.
  ///
  /// In en, this message translates to:
  /// **'Incorrect VIN'**
  String get incorrectVin;

  /// No description provided for @indentationAdjUlt.
  ///
  /// In en, this message translates to:
  /// **'Indentation - Adj Ult.'**
  String get indentationAdjUlt;

  /// No description provided for @indentationAdjYield.
  ///
  /// In en, this message translates to:
  /// **'Indentation - Adj Yield'**
  String get indentationAdjYield;

  /// No description provided for @indirectCover.
  ///
  /// In en, this message translates to:
  /// **'Indirect Cover'**
  String get indirectCover;

  /// No description provided for @individualTaxPayerIdNumber.
  ///
  /// In en, this message translates to:
  /// **'Individual Tax Payer Identification Number'**
  String get individualTaxPayerIdNumber;

  /// No description provided for @industryGroup.
  ///
  /// In en, this message translates to:
  /// **'Industry Group'**
  String get industryGroup;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @information.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get information;

  /// No description provided for @initialising.
  ///
  /// In en, this message translates to:
  /// **'Initialising'**
  String get initialising;

  /// No description provided for @initiateRemainingDisposeAsset.
  ///
  /// In en, this message translates to:
  /// **'Initiate dispose for remaining assets?'**
  String get initiateRemainingDisposeAsset;

  /// No description provided for @initiateRemainingTransferQuestion.
  ///
  /// In en, this message translates to:
  /// **'Initiate transfer for remaining assets?'**
  String get initiateRemainingTransferQuestion;

  /// No description provided for @initiateResync.
  ///
  /// In en, this message translates to:
  /// **'Initiate Resync'**
  String get initiateResync;

  /// No description provided for @initiatedBy.
  ///
  /// In en, this message translates to:
  /// **'Initiated by'**
  String get initiatedBy;

  /// No description provided for @inspected.
  ///
  /// In en, this message translates to:
  /// **'Inspected'**
  String get inspected;

  /// No description provided for @inspectedStatus.
  ///
  /// In en, this message translates to:
  /// **'INSPECTED'**
  String get inspectedStatus;

  /// No description provided for @inspecting.
  ///
  /// In en, this message translates to:
  /// **'Inspecting'**
  String get inspecting;

  /// No description provided for @inspection.
  ///
  /// In en, this message translates to:
  /// **'Inspection'**
  String get inspection;

  /// No description provided for @inspectionComplete.
  ///
  /// In en, this message translates to:
  /// **'Inspection Complete'**
  String get inspectionComplete;

  /// No description provided for @inspectionCompleted.
  ///
  /// In en, this message translates to:
  /// **'\'Inspection Completed\''**
  String get inspectionCompleted;

  /// No description provided for @inspectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Inspection Failed'**
  String get inspectionFailed;

  /// No description provided for @inspectionFailedToSave.
  ///
  /// In en, this message translates to:
  /// **'Inspection failed to save'**
  String get inspectionFailedToSave;

  /// No description provided for @inspectionHasBeenSuccessfullyCompleted.
  ///
  /// In en, this message translates to:
  /// **'The inspection for {value} has been successfully completed'**
  String inspectionHasBeenSuccessfullyCompleted(Object value);

  /// No description provided for @inspectionHasBeenSuccessfullyFailed.
  ///
  /// In en, this message translates to:
  /// **'The inspection for {value} failed to complete'**
  String inspectionHasBeenSuccessfullyFailed(Object value);

  /// No description provided for @inspectionInProgress.
  ///
  /// In en, this message translates to:
  /// **'Inspection In Progress'**
  String get inspectionInProgress;

  /// No description provided for @inspectionPhotos.
  ///
  /// In en, this message translates to:
  /// **'Inspection Photos'**
  String get inspectionPhotos;

  /// No description provided for @inspectionProgressSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Inspection progress saved successfully'**
  String get inspectionProgressSavedSuccessfully;

  /// No description provided for @inspections.
  ///
  /// In en, this message translates to:
  /// **'Inspections'**
  String get inspections;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @instrumentationKey.
  ///
  /// In en, this message translates to:
  /// **'Instrumentation Key'**
  String get instrumentationKey;

  /// No description provided for @insurerPolicy.
  ///
  /// In en, this message translates to:
  /// **'Insurer Policy'**
  String get insurerPolicy;

  /// No description provided for @interCompanyCustomers.
  ///
  /// In en, this message translates to:
  /// **'Inter Company Customers'**
  String get interCompanyCustomers;

  /// No description provided for @interCompanySuppliers.
  ///
  /// In en, this message translates to:
  /// **'Inter Company Suppliers'**
  String get interCompanySuppliers;

  /// No description provided for @interDepot.
  ///
  /// In en, this message translates to:
  /// **'Inter Depot'**
  String get interDepot;

  /// No description provided for @interior.
  ///
  /// In en, this message translates to:
  /// **'Interior'**
  String get interior;

  /// No description provided for @internal.
  ///
  /// In en, this message translates to:
  /// **'Internal'**
  String get internal;

  /// No description provided for @internalHaulier.
  ///
  /// In en, this message translates to:
  /// **'Internal Haulier'**
  String get internalHaulier;

  /// No description provided for @internalHauliers.
  ///
  /// In en, this message translates to:
  /// **'Internal Hauliers'**
  String get internalHauliers;

  /// No description provided for @internalLME.
  ///
  /// In en, this message translates to:
  /// **'Internal LME'**
  String get internalLME;

  /// No description provided for @internalNoRatesMsg.
  ///
  /// In en, this message translates to:
  /// **'Internal: No rates available.'**
  String get internalNoRatesMsg;

  /// No description provided for @internalNotes.
  ///
  /// In en, this message translates to:
  /// **'Internal Notes'**
  String get internalNotes;

  /// No description provided for @internalReference.
  ///
  /// In en, this message translates to:
  /// **'Internal Reference'**
  String get internalReference;

  /// No description provided for @internalTrucks.
  ///
  /// In en, this message translates to:
  /// **'Internal Trucks'**
  String get internalTrucks;

  /// No description provided for @invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid'**
  String get invalid;

  /// No description provided for @invalidAdvanceOffsetError.
  ///
  /// In en, this message translates to:
  /// **'Advance offsets should be less than or equal to transaction amount'**
  String get invalidAdvanceOffsetError;

  /// No description provided for @invalidAdvancePastDueDate.
  ///
  /// In en, this message translates to:
  /// **'The saved due date was in the past and has been cleared. Please select a new due date to continue.'**
  String get invalidAdvancePastDueDate;

  /// No description provided for @invalidAlphanumeric.
  ///
  /// In en, this message translates to:
  /// **'Only letters and numbers are allowed'**
  String get invalidAlphanumeric;

  /// No description provided for @invalidAssetNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid Asset Number'**
  String get invalidAssetNumber;

  /// No description provided for @invalidDocumentUpload.
  ///
  /// In en, this message translates to:
  /// **'Unable to extract document information. Please upload a valid document (Driving Licence, Passport, ID Card, or Waste Transfer Note).'**
  String get invalidDocumentUpload;

  /// No description provided for @invalidEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get invalidEmailAddress;

  /// No description provided for @invalidFileTypeMessage.
  ///
  /// In en, this message translates to:
  /// **'Invalid file type. Allowed file types are {allowedExtensions}'**
  String invalidFileTypeMessage(Object allowedExtensions);

  /// No description provided for @invalidIds.
  ///
  /// In en, this message translates to:
  /// **'Invalid id\'s'**
  String get invalidIds;

  /// No description provided for @invalidLink.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired link'**
  String get invalidLink;

  /// No description provided for @invalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid number'**
  String get invalidNumber;

  /// No description provided for @invalidPostcode.
  ///
  /// In en, this message translates to:
  /// **'The Postcode entered is invalid.'**
  String get invalidPostcode;

  /// No description provided for @invalidQrCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid qr code'**
  String get invalidQrCode;

  /// No description provided for @invalidQueryParameters.
  ///
  /// In en, this message translates to:
  /// **'Only valid query parameters are allowed'**
  String get invalidQueryParameters;

  /// No description provided for @invalidSealNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid seal number format.'**
  String get invalidSealNumber;

  /// No description provided for @invalidUOMForYard.
  ///
  /// In en, this message translates to:
  /// **'UOM \'{uom}\' is not valid for yard \'{yard}\''**
  String invalidUOMForYard(Object uom, Object yard);

  /// No description provided for @invalidUniqueNumbersInput.
  ///
  /// In en, this message translates to:
  /// **'Invalid Unique Numbers Input'**
  String get invalidUniqueNumbersInput;

  /// No description provided for @invalidWeight.
  ///
  /// In en, this message translates to:
  /// **'Invalid Weight'**
  String get invalidWeight;

  /// No description provided for @invalidYardInUserPreferenceError.
  ///
  /// In en, this message translates to:
  /// **'Please set a valid default yard in user preference.'**
  String get invalidYardInUserPreferenceError;

  /// No description provided for @inventory.
  ///
  /// In en, this message translates to:
  /// **'Inventory'**
  String get inventory;

  /// No description provided for @inventoryAdjustments.
  ///
  /// In en, this message translates to:
  /// **'Inventory Adjustments'**
  String get inventoryAdjustments;

  /// No description provided for @inventoryManagement.
  ///
  /// In en, this message translates to:
  /// **'Inventory Management'**
  String get inventoryManagement;

  /// No description provided for @inventoryOptions.
  ///
  /// In en, this message translates to:
  /// **'Inventory Options'**
  String get inventoryOptions;

  /// No description provided for @inventorySearch.
  ///
  /// In en, this message translates to:
  /// **'Inventory Search'**
  String get inventorySearch;

  /// No description provided for @invoice.
  ///
  /// In en, this message translates to:
  /// **'Invoice'**
  String get invoice;

  /// No description provided for @invoiceCurrencyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select your invoice currency from the dropdown'**
  String get invoiceCurrencyValidation;

  /// No description provided for @invoiceDate.
  ///
  /// In en, this message translates to:
  /// **'Invoice Date'**
  String get invoiceDate;

  /// No description provided for @invoiceDateValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select your invoice date'**
  String get invoiceDateValidation;

  /// No description provided for @invoiceDescription.
  ///
  /// In en, this message translates to:
  /// **'Invoice Description'**
  String get invoiceDescription;

  /// No description provided for @invoiceDetails.
  ///
  /// In en, this message translates to:
  /// **'Invoice Details'**
  String get invoiceDetails;

  /// No description provided for @invoiceDueDate.
  ///
  /// In en, this message translates to:
  /// **'Invoice Due Date'**
  String get invoiceDueDate;

  /// No description provided for @invoiceEntry.
  ///
  /// In en, this message translates to:
  /// **'Invoice Entry'**
  String get invoiceEntry;

  /// No description provided for @invoiceHeader.
  ///
  /// In en, this message translates to:
  /// **'Invoice Header'**
  String get invoiceHeader;

  /// No description provided for @invoiceNetAmount.
  ///
  /// In en, this message translates to:
  /// **'Invoice Net Amount'**
  String get invoiceNetAmount;

  /// No description provided for @invoiceNo.
  ///
  /// In en, this message translates to:
  /// **'Invoice No.'**
  String get invoiceNo;

  /// No description provided for @invoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Invoice Number'**
  String get invoiceNumber;

  /// No description provided for @invoiceNumberEmptyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter an invoice number'**
  String get invoiceNumberEmptyValidation;

  /// No description provided for @invoiceNumberTooLongError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid invoice number that is less than 39 characters.'**
  String get invoiceNumberTooLongError;

  /// No description provided for @invoiceNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'Please Enter a Valid invoice order number'**
  String get invoiceNumberValidation;

  /// No description provided for @invoicePDFValidation.
  ///
  /// In en, this message translates to:
  /// **'Please upload your invoice as PDF'**
  String get invoicePDFValidation;

  /// No description provided for @invoicePeriodicity.
  ///
  /// In en, this message translates to:
  /// **'Invoice Periodicity'**
  String get invoicePeriodicity;

  /// No description provided for @invoicePeriodicityDays.
  ///
  /// In en, this message translates to:
  /// **'Invoice Periodicity Days'**
  String get invoicePeriodicityDays;

  /// No description provided for @invoicePurchaseOrderNumberEmptyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a purchase order number (9 digits)'**
  String get invoicePurchaseOrderNumberEmptyValidation;

  /// No description provided for @invoicePurchaseOrderNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'Please Enter a Valid Purchase order (9 Digits)'**
  String get invoicePurchaseOrderNumberValidation;

  /// No description provided for @invoiceSubmitError.
  ///
  /// In en, this message translates to:
  /// **'Invoice could not be submitted, please confirm the details entered are correct.'**
  String get invoiceSubmitError;

  /// No description provided for @invoiceSubmitSuccessMsg.
  ///
  /// In en, this message translates to:
  /// **'Invoice submitted successfully. Please note that it may take up to an hour for the invoice to appear on the portal.'**
  String get invoiceSubmitSuccessMsg;

  /// No description provided for @invoiceTotal.
  ///
  /// In en, this message translates to:
  /// **'Invoice Total'**
  String get invoiceTotal;

  /// No description provided for @invoiceVATAmount.
  ///
  /// In en, this message translates to:
  /// **'Invoice VAT Amount'**
  String get invoiceVATAmount;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoices;

  /// No description provided for @inward.
  ///
  /// In en, this message translates to:
  /// **'Inward'**
  String get inward;

  /// No description provided for @inwardOutward.
  ///
  /// In en, this message translates to:
  /// **'Inward And Outward'**
  String get inwardOutward;

  /// No description provided for @ipAddress.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get ipAddress;

  /// No description provided for @ipAddressValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid IP address'**
  String get ipAddressValidation;

  /// No description provided for @isActive.
  ///
  /// In en, this message translates to:
  /// **'Is Active'**
  String get isActive;

  /// No description provided for @isD365.
  ///
  /// In en, this message translates to:
  /// **'Is D365'**
  String get isD365;

  /// No description provided for @isEditable.
  ///
  /// In en, this message translates to:
  /// **'Is Editable'**
  String get isEditable;

  /// No description provided for @isExternal.
  ///
  /// In en, this message translates to:
  /// **'Is External?'**
  String get isExternal;

  /// No description provided for @isForUploadingDoc.
  ///
  /// In en, this message translates to:
  /// **'Is for uploading document only?'**
  String get isForUploadingDoc;

  /// No description provided for @isImporterOfWaste.
  ///
  /// In en, this message translates to:
  /// **'Is Importer Of Waste'**
  String get isImporterOfWaste;

  /// No description provided for @isProducerOfWaste.
  ///
  /// In en, this message translates to:
  /// **'Is Producer Of Waste'**
  String get isProducerOfWaste;

  /// No description provided for @isRegisteredWasteCarrier.
  ///
  /// In en, this message translates to:
  /// **'Is Registered Waste Carrier'**
  String get isRegisteredWasteCarrier;

  /// No description provided for @isStillOnTheVehicle.
  ///
  /// In en, this message translates to:
  /// **'is still on the vehicle and will also be'**
  String get isStillOnTheVehicle;

  /// No description provided for @isTradingCompany.
  ///
  /// In en, this message translates to:
  /// **'Is Trading Company'**
  String get isTradingCompany;

  /// No description provided for @isTransporterOfWaste.
  ///
  /// In en, this message translates to:
  /// **'Is Transporter Of Waste'**
  String get isTransporterOfWaste;

  /// No description provided for @issueDate.
  ///
  /// In en, this message translates to:
  /// **'Issue Date'**
  String get issueDate;

  /// No description provided for @issuerType.
  ///
  /// In en, this message translates to:
  /// **'Issuer Type'**
  String get issuerType;

  /// No description provided for @itOnlyTakesFiveMinutesNote.
  ///
  /// In en, this message translates to:
  /// **'It only takes five minutes. Ready to get started?'**
  String get itOnlyTakesFiveMinutesNote;

  /// No description provided for @itemType.
  ///
  /// In en, this message translates to:
  /// **'Item Type'**
  String get itemType;

  /// No description provided for @itsOnItsWay.
  ///
  /// In en, this message translates to:
  /// **'It’s on its way!'**
  String get itsOnItsWay;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get job;

  /// No description provided for @jobClonedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Job cloned successfully'**
  String get jobClonedSuccessfully;

  /// No description provided for @jobCreateDaysInAdvance.
  ///
  /// In en, this message translates to:
  /// **'Days in Advance to Generate Jobs'**
  String get jobCreateDaysInAdvance;

  /// No description provided for @jobCreated.
  ///
  /// In en, this message translates to:
  /// **'Job created'**
  String get jobCreated;

  /// No description provided for @jobDetails.
  ///
  /// In en, this message translates to:
  /// **'Job Details'**
  String get jobDetails;

  /// No description provided for @jobDuration.
  ///
  /// In en, this message translates to:
  /// **'Job Duration'**
  String get jobDuration;

  /// No description provided for @jobExecutionAsExpected.
  ///
  /// In en, this message translates to:
  /// **'Job execution as expected'**
  String get jobExecutionAsExpected;

  /// No description provided for @jobHasBeenDelayed.
  ///
  /// In en, this message translates to:
  /// **'Job has been delayed'**
  String get jobHasBeenDelayed;

  /// No description provided for @jobHasBeenStarted.
  ///
  /// In en, this message translates to:
  /// **'Job has been started'**
  String get jobHasBeenStarted;

  /// No description provided for @jobNo.
  ///
  /// In en, this message translates to:
  /// **'Job No'**
  String get jobNo;

  /// No description provided for @jobNumber.
  ///
  /// In en, this message translates to:
  /// **'Job Number'**
  String get jobNumber;

  /// No description provided for @jobNumbersFollowsMsg.
  ///
  /// In en, this message translates to:
  /// **'The job numbers are as follows'**
  String get jobNumbersFollowsMsg;

  /// No description provided for @jobPage.
  ///
  /// In en, this message translates to:
  /// **'Job Page'**
  String get jobPage;

  /// No description provided for @jobPassedScheduledTime.
  ///
  /// In en, this message translates to:
  /// **'Job has passed its scheduled time'**
  String get jobPassedScheduledTime;

  /// No description provided for @jobRepetitionsPerDay.
  ///
  /// In en, this message translates to:
  /// **'Job Repetitions per Day'**
  String get jobRepetitionsPerDay;

  /// No description provided for @jobRole.
  ///
  /// In en, this message translates to:
  /// **'Job Role'**
  String get jobRole;

  /// No description provided for @jobRoles.
  ///
  /// In en, this message translates to:
  /// **'Job Roles'**
  String get jobRoles;

  /// No description provided for @jobSource.
  ///
  /// In en, this message translates to:
  /// **'Job Source'**
  String get jobSource;

  /// No description provided for @jobStarted.
  ///
  /// In en, this message translates to:
  /// **'Job started'**
  String get jobStarted;

  /// No description provided for @jobStatus.
  ///
  /// In en, this message translates to:
  /// **'Job Status'**
  String get jobStatus;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job Title'**
  String get jobTitle;

  /// No description provided for @jobTracking.
  ///
  /// In en, this message translates to:
  /// **'Job Tracking'**
  String get jobTracking;

  /// No description provided for @jobTrade.
  ///
  /// In en, this message translates to:
  /// **'Job Trade'**
  String get jobTrade;

  /// No description provided for @jobTradeHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a Job Trade'**
  String get jobTradeHint;

  /// No description provided for @jobTradeLabel.
  ///
  /// In en, this message translates to:
  /// **'Job Trades'**
  String get jobTradeLabel;

  /// No description provided for @jobType.
  ///
  /// In en, this message translates to:
  /// **'Job Type'**
  String get jobType;

  /// No description provided for @jobTypeAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'Job type Abbreviation'**
  String get jobTypeAbbreviation;

  /// No description provided for @jobTypeVariant.
  ///
  /// In en, this message translates to:
  /// **'Job Type Variant'**
  String get jobTypeVariant;

  /// No description provided for @jobUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Job updated successfully'**
  String get jobUpdatedSuccessfully;

  /// No description provided for @jobs.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobs;

  /// No description provided for @jobsAreGrouped.
  ///
  /// In en, this message translates to:
  /// **'Jobs are grouped'**
  String get jobsAreGrouped;

  /// No description provided for @jobsAssigedToMe.
  ///
  /// In en, this message translates to:
  /// **'Jobs Assigned To Me'**
  String get jobsAssigedToMe;

  /// No description provided for @jobsAssignedToMe.
  ///
  /// In en, this message translates to:
  /// **'Jobs Allocated To Me'**
  String get jobsAssignedToMe;

  /// No description provided for @jobsAssignedToYard.
  ///
  /// In en, this message translates to:
  /// **'Jobs Allocated To Yard'**
  String get jobsAssignedToYard;

  /// No description provided for @jobsCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Job created successfully'**
  String get jobsCreatedSuccessfully;

  /// No description provided for @jobsDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Jobs deleted successfully'**
  String get jobsDeletedSuccessfully;

  /// No description provided for @jobsInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get jobsInProgress;

  /// No description provided for @jobsInStartedCompletedState.
  ///
  /// In en, this message translates to:
  /// **'Jobs are in Started/Completed State.'**
  String get jobsInStartedCompletedState;

  /// No description provided for @jobsLabel.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobsLabel;

  /// No description provided for @jobsList.
  ///
  /// In en, this message translates to:
  /// **'JobsList'**
  String get jobsList;

  /// No description provided for @jobsMovedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Jobs moved successfully'**
  String get jobsMovedSuccessfully;

  /// No description provided for @jobsScheduled.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get jobsScheduled;

  /// No description provided for @jobsScheduledSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Jobs scheduled successfully'**
  String get jobsScheduledSuccessfully;

  /// No description provided for @jointVentureAndAssociates.
  ///
  /// In en, this message translates to:
  /// **'Joint Venture And Associates'**
  String get jointVentureAndAssociates;

  /// No description provided for @jsonTemplates.
  ///
  /// In en, this message translates to:
  /// **'JsonTemplates'**
  String get jsonTemplates;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @keepContainer.
  ///
  /// In en, this message translates to:
  /// **'Keep Container'**
  String get keepContainer;

  /// No description provided for @keepSelectedValueAs.
  ///
  /// In en, this message translates to:
  /// **'Keep selected value as'**
  String get keepSelectedValueAs;

  /// No description provided for @kerbWeight.
  ///
  /// In en, this message translates to:
  /// **'Kerb Weight'**
  String get kerbWeight;

  /// No description provided for @knownTares.
  ///
  /// In en, this message translates to:
  /// **'Known Tares'**
  String get knownTares;

  /// No description provided for @labCertificateLink.
  ///
  /// In en, this message translates to:
  /// **'Lab Test/Certification PDF Link'**
  String get labCertificateLink;

  /// No description provided for @labelType.
  ///
  /// In en, this message translates to:
  /// **'Label type'**
  String get labelType;

  /// No description provided for @labelWorkflowStatus.
  ///
  /// In en, this message translates to:
  /// **'Workflow Status'**
  String get labelWorkflowStatus;

  /// No description provided for @landline.
  ///
  /// In en, this message translates to:
  /// **'Landline'**
  String get landline;

  /// No description provided for @lastActionedModified.
  ///
  /// In en, this message translates to:
  /// **'Last Updated'**
  String get lastActionedModified;

  /// No description provided for @lastDateStatutoryInspection.
  ///
  /// In en, this message translates to:
  /// **'Date of Last Statutory Inspection'**
  String get lastDateStatutoryInspection;

  /// No description provided for @lastEighteenMonthPlans.
  ///
  /// In en, this message translates to:
  /// **'Last 18 Month\'s Plans'**
  String get lastEighteenMonthPlans;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @lastNameLengthValidation.
  ///
  /// In en, this message translates to:
  /// **'Last name must be at least {num} characters'**
  String lastNameLengthValidation(Object num);

  /// No description provided for @lastResponse.
  ///
  /// In en, this message translates to:
  /// **'Last Response'**
  String get lastResponse;

  /// No description provided for @lastSixMonthPlans.
  ///
  /// In en, this message translates to:
  /// **'Last 6 Month\'s Plans'**
  String get lastSixMonthPlans;

  /// No description provided for @lastThreeMonthPlans.
  ///
  /// In en, this message translates to:
  /// **'Last 3 Month\'s Plans'**
  String get lastThreeMonthPlans;

  /// No description provided for @lastThreeMonthPlansValue.
  ///
  /// In en, this message translates to:
  /// **'LastThreeMonths'**
  String get lastThreeMonthPlansValue;

  /// No description provided for @lastTwelveMonthPlans.
  ///
  /// In en, this message translates to:
  /// **'Last 12 Month\'s Plans'**
  String get lastTwelveMonthPlans;

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated'**
  String get lastUpdated;

  /// No description provided for @lastVerifiedBy.
  ///
  /// In en, this message translates to:
  /// **'Last Verified By'**
  String get lastVerifiedBy;

  /// No description provided for @lastVisited.
  ///
  /// In en, this message translates to:
  /// **'Last Visited On'**
  String get lastVisited;

  /// No description provided for @latestPrice.
  ///
  /// In en, this message translates to:
  /// **'Latest Price'**
  String get latestPrice;

  /// No description provided for @latitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get latitude;

  /// No description provided for @lblTemplateName.
  ///
  /// In en, this message translates to:
  /// **'Template name'**
  String get lblTemplateName;

  /// No description provided for @leadSource.
  ///
  /// In en, this message translates to:
  /// **'Lead Source'**
  String get leadSource;

  /// No description provided for @left.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get left;

  /// No description provided for @leftSideQualityCheck.
  ///
  /// In en, this message translates to:
  /// **'Left Side Quality Check'**
  String get leftSideQualityCheck;

  /// No description provided for @legacyToolTipMsg.
  ///
  /// In en, this message translates to:
  /// **'This is a Legacy Tag'**
  String get legacyToolTipMsg;

  /// No description provided for @length.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get length;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'less'**
  String get less;

  /// No description provided for @lessCharged.
  ///
  /// In en, this message translates to:
  /// **'Less Charged'**
  String get lessCharged;

  /// No description provided for @letsGetToKnowEachOther.
  ///
  /// In en, this message translates to:
  /// **'Let’s get to know each other'**
  String get letsGetToKnowEachOther;

  /// No description provided for @letsGo.
  ///
  /// In en, this message translates to:
  /// **'Let\'s go!'**
  String get letsGo;

  /// No description provided for @licenceExemption.
  ///
  /// In en, this message translates to:
  /// **'Licence Exemption'**
  String get licenceExemption;

  /// No description provided for @likelyPreviousUse.
  ///
  /// In en, this message translates to:
  /// **'Likely Previous Use'**
  String get likelyPreviousUse;

  /// No description provided for @limitDecisionType.
  ///
  /// In en, this message translates to:
  /// **'Limit Decision Type'**
  String get limitDecisionType;

  /// No description provided for @line.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get line;

  /// No description provided for @lineCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} Lines} one{1 Line}}'**
  String lineCount(num count);

  /// No description provided for @lines.
  ///
  /// In en, this message translates to:
  /// **'Lines'**
  String get lines;

  /// No description provided for @linkNewAccount.
  ///
  /// In en, this message translates to:
  /// **'Link new account'**
  String get linkNewAccount;

  /// No description provided for @linkNewLocation.
  ///
  /// In en, this message translates to:
  /// **'Link new location'**
  String get linkNewLocation;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get list;

  /// No description provided for @listHint.
  ///
  /// In en, this message translates to:
  /// **'Select a List'**
  String get listHint;

  /// No description provided for @listLabel.
  ///
  /// In en, this message translates to:
  /// **'Available Lists'**
  String get listLabel;

  /// No description provided for @listNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a List name'**
  String get listNameHint;

  /// No description provided for @listNameLabel.
  ///
  /// In en, this message translates to:
  /// **'List Name'**
  String get listNameLabel;

  /// No description provided for @listNameValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a List name'**
  String get listNameValidation;

  /// No description provided for @listOfAllYourRecentTransactions.
  ///
  /// In en, this message translates to:
  /// **'List of all your recent transactions'**
  String get listOfAllYourRecentTransactions;

  /// No description provided for @listType.
  ///
  /// In en, this message translates to:
  /// **'List Type'**
  String get listType;

  /// No description provided for @listUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'List Updated Successfully'**
  String get listUpdatedSuccessfully;

  /// No description provided for @listValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a list'**
  String get listValidation;

  /// No description provided for @listValuesHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the list values seperated by commas'**
  String get listValuesHint;

  /// No description provided for @listValuesLabel.
  ///
  /// In en, this message translates to:
  /// **'List Values'**
  String get listValuesLabel;

  /// No description provided for @listValuesValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter the list values'**
  String get listValuesValidation;

  /// No description provided for @listnameCanNotBeBlank.
  ///
  /// In en, this message translates to:
  /// **'Listname can not be left blank'**
  String get listnameCanNotBeBlank;

  /// No description provided for @listofAllYourRecentRemittances.
  ///
  /// In en, this message translates to:
  /// **'List of all your recent remittances'**
  String get listofAllYourRecentRemittances;

  /// No description provided for @lists.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get lists;

  /// No description provided for @listview.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get listview;

  /// No description provided for @live.
  ///
  /// In en, this message translates to:
  /// **'LIVE'**
  String get live;

  /// No description provided for @loadCount.
  ///
  /// In en, this message translates to:
  /// **'Load Count'**
  String get loadCount;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get loadMore;

  /// No description provided for @loadOut.
  ///
  /// In en, this message translates to:
  /// **'Load Out'**
  String get loadOut;

  /// No description provided for @loadOutCompleteMessage.
  ///
  /// In en, this message translates to:
  /// **'Load Out is complete and cannot be changed'**
  String get loadOutCompleteMessage;

  /// No description provided for @loadOutErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'An error occurred saving Load Out. Please try again'**
  String get loadOutErrorMessage;

  /// No description provided for @loadReference.
  ///
  /// In en, this message translates to:
  /// **'Load Reference'**
  String get loadReference;

  /// No description provided for @loadSaveAssetsString.
  ///
  /// In en, this message translates to:
  /// **'Load & save Assets On All Templates'**
  String get loadSaveAssetsString;

  /// No description provided for @loaded.
  ///
  /// In en, this message translates to:
  /// **'Loaded'**
  String get loaded;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @loadingBatchQuote.
  ///
  /// In en, this message translates to:
  /// **'Loading Batch Quote'**
  String get loadingBatchQuote;

  /// No description provided for @loadoutDetails.
  ///
  /// In en, this message translates to:
  /// **'Load Out Details'**
  String get loadoutDetails;

  /// No description provided for @loadoutImages.
  ///
  /// In en, this message translates to:
  /// **'Load Out Images'**
  String get loadoutImages;

  /// No description provided for @loadoutMediaCaptureError.
  ///
  /// In en, this message translates to:
  /// **'All the images are required to capture.'**
  String get loadoutMediaCaptureError;

  /// No description provided for @loadoutPhotoMsg.
  ///
  /// In en, this message translates to:
  /// **'Please make sure to take all images with the inspector.'**
  String get loadoutPhotoMsg;

  /// No description provided for @loadoutPhotos.
  ///
  /// In en, this message translates to:
  /// **'Loadout photos (required)'**
  String get loadoutPhotos;

  /// No description provided for @loads.
  ///
  /// In en, this message translates to:
  /// **'Loads'**
  String get loads;

  /// No description provided for @locate.
  ///
  /// In en, this message translates to:
  /// **'Locate'**
  String get locate;

  /// No description provided for @locateJob.
  ///
  /// In en, this message translates to:
  /// **'Locate Job'**
  String get locateJob;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @locationAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Location added successfully'**
  String get locationAddedSuccessfully;

  /// No description provided for @locationAndDescription.
  ///
  /// In en, this message translates to:
  /// **'Location & Description'**
  String get locationAndDescription;

  /// No description provided for @locationCode.
  ///
  /// In en, this message translates to:
  /// **'Location Code'**
  String get locationCode;

  /// No description provided for @locationCustomizationOption.
  ///
  /// In en, this message translates to:
  /// **'Select the details to show on the second line of job box'**
  String get locationCustomizationOption;

  /// No description provided for @locationDeletedMsg.
  ///
  /// In en, this message translates to:
  /// **'Location deleted successfully'**
  String get locationDeletedMsg;

  /// No description provided for @locationDetails.
  ///
  /// In en, this message translates to:
  /// **'Location Details'**
  String get locationDetails;

  /// No description provided for @locationInformation.
  ///
  /// In en, this message translates to:
  /// **'Location Information'**
  String get locationInformation;

  /// No description provided for @locationNotFound.
  ///
  /// In en, this message translates to:
  /// **'Location not found.'**
  String get locationNotFound;

  /// No description provided for @locationNotSelected.
  ///
  /// In en, this message translates to:
  /// **'Location is not selected'**
  String get locationNotSelected;

  /// No description provided for @locationType.
  ///
  /// In en, this message translates to:
  /// **'Location Type'**
  String get locationType;

  /// No description provided for @locationUpdateSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Location updated successfully'**
  String get locationUpdateSuccessfully;

  /// No description provided for @locationWeights.
  ///
  /// In en, this message translates to:
  /// **'Location Weights'**
  String get locationWeights;

  /// No description provided for @locationWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Location {locationNo}'**
  String locationWithNumber(Object locationNo);

  /// No description provided for @locations.
  ///
  /// In en, this message translates to:
  /// **'Locations'**
  String get locations;

  /// No description provided for @locationsPermissionRequest.
  ///
  /// In en, this message translates to:
  /// **'To continue, we need permission to access your location. This helps us provide location-based features and improve your experience.'**
  String get locationsPermissionRequest;

  /// No description provided for @locator.
  ///
  /// In en, this message translates to:
  /// **'Locator'**
  String get locator;

  /// No description provided for @lockIconInfoPanel.
  ///
  /// In en, this message translates to:
  /// **'Lock has been applied on job'**
  String get lockIconInfoPanel;

  /// No description provided for @lockJobToScheduleDate.
  ///
  /// In en, this message translates to:
  /// **'Lock job to scheduled date'**
  String get lockJobToScheduleDate;

  /// No description provided for @lockedBy.
  ///
  /// In en, this message translates to:
  /// **'Locked By'**
  String get lockedBy;

  /// No description provided for @lockedByName.
  ///
  /// In en, this message translates to:
  /// **'Locked By: {lockedBy}'**
  String lockedByName(Object lockedBy);

  /// No description provided for @lockedJob.
  ///
  /// In en, this message translates to:
  /// **'Locked Job'**
  String get lockedJob;

  /// No description provided for @lockedTickets.
  ///
  /// In en, this message translates to:
  /// **'Locked Tickets'**
  String get lockedTickets;

  /// No description provided for @lockingMechanisms.
  ///
  /// In en, this message translates to:
  /// **'Locking Mechanisms'**
  String get lockingMechanisms;

  /// No description provided for @logErrors.
  ///
  /// In en, this message translates to:
  /// **'Log Errors'**
  String get logErrors;

  /// No description provided for @logInfo.
  ///
  /// In en, this message translates to:
  /// **'Log Info'**
  String get logInfo;

  /// No description provided for @loggedBy.
  ///
  /// In en, this message translates to:
  /// **'Logged By'**
  String get loggedBy;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get loginFailed;

  /// No description provided for @longitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get longitude;

  /// No description provided for @lookOutForOurText.
  ///
  /// In en, this message translates to:
  /// **'Look out for our text.'**
  String get lookOutForOurText;

  /// No description provided for @lookup.
  ///
  /// In en, this message translates to:
  /// **'Lookup'**
  String get lookup;

  /// No description provided for @lotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Lot Confirmed'**
  String get lotConfirmed;

  /// No description provided for @lotNotFound.
  ///
  /// In en, this message translates to:
  /// **'Lot not found'**
  String get lotNotFound;

  /// No description provided for @lotWeight.
  ///
  /// In en, this message translates to:
  /// **'Lot Weight'**
  String get lotWeight;

  /// No description provided for @loyaltyCard.
  ///
  /// In en, this message translates to:
  /// **'Loyalty Card'**
  String get loyaltyCard;

  /// No description provided for @loyaltyCardAddSuccessMsg.
  ///
  /// In en, this message translates to:
  /// **'Loyalty card added successfully'**
  String get loyaltyCardAddSuccessMsg;

  /// No description provided for @loyaltyCardDeleteSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Loyalty card deleted successfully'**
  String get loyaltyCardDeleteSuccessMessage;

  /// No description provided for @loyaltyCardNotFound.
  ///
  /// In en, this message translates to:
  /// **'Loyalty card not found.'**
  String get loyaltyCardNotFound;

  /// No description provided for @loyaltyCardUpdateSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Loyalty card updated successfully'**
  String get loyaltyCardUpdateSuccessMessage;

  /// No description provided for @loyaltyCards.
  ///
  /// In en, this message translates to:
  /// **'Loyalty Cards'**
  String get loyaltyCards;

  /// No description provided for @loyaltycard.
  ///
  /// In en, this message translates to:
  /// **'loyalty card'**
  String get loyaltycard;

  /// No description provided for @machineName.
  ///
  /// In en, this message translates to:
  /// **'Machine Name'**
  String get machineName;

  /// No description provided for @mail.
  ///
  /// In en, this message translates to:
  /// **'Mail'**
  String get mail;

  /// No description provided for @mailingList.
  ///
  /// In en, this message translates to:
  /// **'Mailing List'**
  String get mailingList;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'Main'**
  String get main;

  /// No description provided for @mainContactRemovalErrorInline.
  ///
  /// In en, this message translates to:
  /// **'Account must have at least one Main contact'**
  String get mainContactRemovalErrorInline;

  /// No description provided for @mainContactRemovalErrorToastr.
  ///
  /// In en, this message translates to:
  /// **'Account must have at least one Main contact. If you want to change the main contact, select another contact and modify its contact type.'**
  String get mainContactRemovalErrorToastr;

  /// No description provided for @mainDetails.
  ///
  /// In en, this message translates to:
  /// **'Main Details'**
  String get mainDetails;

  /// No description provided for @maintenance.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get maintenance;

  /// No description provided for @maintenanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get maintenanceLabel;

  /// No description provided for @maintenanceTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Maintenance Request Type'**
  String get maintenanceTypeLabel;

  /// No description provided for @make.
  ///
  /// In en, this message translates to:
  /// **'Make'**
  String get make;

  /// No description provided for @manage.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get manage;

  /// No description provided for @manageCMMS.
  ///
  /// In en, this message translates to:
  /// **'Manage CMMS'**
  String get manageCMMS;

  /// No description provided for @manageTasks.
  ///
  /// In en, this message translates to:
  /// **'Manage Tasks'**
  String get manageTasks;

  /// No description provided for @manageYourDetails.
  ///
  /// In en, this message translates to:
  /// **'Manage your details'**
  String get manageYourDetails;

  /// No description provided for @managedService.
  ///
  /// In en, this message translates to:
  /// **'Managed Service'**
  String get managedService;

  /// No description provided for @managedThirdPartyHaulier.
  ///
  /// In en, this message translates to:
  /// **'Managed Third Party Haulier'**
  String get managedThirdPartyHaulier;

  /// No description provided for @managedThirdPartyHauliers.
  ///
  /// In en, this message translates to:
  /// **'Managed Third Party Hauliers'**
  String get managedThirdPartyHauliers;

  /// No description provided for @managedThirdPartyTrucks.
  ///
  /// In en, this message translates to:
  /// **'Managed Third Party Trucks'**
  String get managedThirdPartyTrucks;

  /// No description provided for @managedTrucks.
  ///
  /// In en, this message translates to:
  /// **'Managed Third Party Trucks'**
  String get managedTrucks;

  /// No description provided for @managementType.
  ///
  /// In en, this message translates to:
  /// **'Management Type'**
  String get managementType;

  /// No description provided for @manager.
  ///
  /// In en, this message translates to:
  /// **'Manager'**
  String get manager;

  /// No description provided for @managerAlreadyExistsInServiceType.
  ///
  /// In en, this message translates to:
  /// **'Manager already exists in this service type'**
  String get managerAlreadyExistsInServiceType;

  /// No description provided for @managerName.
  ///
  /// In en, this message translates to:
  /// **'Manager Name'**
  String get managerName;

  /// No description provided for @managers.
  ///
  /// In en, this message translates to:
  /// **'Managers'**
  String get managers;

  /// No description provided for @manaullyAddVehicle.
  ///
  /// In en, this message translates to:
  /// **'Manually Add Vehicle'**
  String get manaullyAddVehicle;

  /// No description provided for @mandatoryOffset.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Offset'**
  String get mandatoryOffset;

  /// No description provided for @manual.
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get manual;

  /// No description provided for @manualAddress.
  ///
  /// In en, this message translates to:
  /// **'Manual Address'**
  String get manualAddress;

  /// No description provided for @manualCheque.
  ///
  /// In en, this message translates to:
  /// **'Manual Cheque'**
  String get manualCheque;

  /// No description provided for @manualChequeNumber.
  ///
  /// In en, this message translates to:
  /// **'Manual Cheque Number'**
  String get manualChequeNumber;

  /// No description provided for @manualLookUp.
  ///
  /// In en, this message translates to:
  /// **'Manual Look Up'**
  String get manualLookUp;

  /// No description provided for @manualSearchEmptyPageMessage.
  ///
  /// In en, this message translates to:
  /// **'Use the form to manually search for a vehicle - results will appear here.'**
  String get manualSearchEmptyPageMessage;

  /// No description provided for @manualTareWeight.
  ///
  /// In en, this message translates to:
  /// **'Manual Tare Weight'**
  String get manualTareWeight;

  /// No description provided for @manualUpdate.
  ///
  /// In en, this message translates to:
  /// **'Manual Update'**
  String get manualUpdate;

  /// No description provided for @manualWeight.
  ///
  /// In en, this message translates to:
  /// **'Manual Weight'**
  String get manualWeight;

  /// No description provided for @manufacturer.
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get manufacturer;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @markAllAsRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get markAllAsRead;

  /// No description provided for @markAsBtn.
  ///
  /// In en, this message translates to:
  /// **'MARK AS {status}'**
  String markAsBtn(Object status);

  /// No description provided for @markAsFound.
  ///
  /// In en, this message translates to:
  /// **'Mark as found'**
  String get markAsFound;

  /// No description provided for @markAsInactive.
  ///
  /// In en, this message translates to:
  /// **'Mark as inactive'**
  String get markAsInactive;

  /// No description provided for @marketingIndicatorEnabled.
  ///
  /// In en, this message translates to:
  /// **'Marketing Indicator '**
  String get marketingIndicatorEnabled;

  /// No description provided for @marketingPreferences.
  ///
  /// In en, this message translates to:
  /// **'Marketing Preferences'**
  String get marketingPreferences;

  /// No description provided for @markettingPreferenceEmailNote.
  ///
  /// In en, this message translates to:
  /// **'Yes, I would like to be contacted by email'**
  String get markettingPreferenceEmailNote;

  /// No description provided for @markettingPreferenceTelephoneNote.
  ///
  /// In en, this message translates to:
  /// **'Yes, I would like to be contacted by telephone'**
  String get markettingPreferenceTelephoneNote;

  /// No description provided for @markettingPreferenceTextNote.
  ///
  /// In en, this message translates to:
  /// **'Yes, I would like to be contacted by text message'**
  String get markettingPreferenceTextNote;

  /// No description provided for @maskLineNotCreated.
  ///
  /// In en, this message translates to:
  /// **'A GPL with the same publication, yards, and grades is already linked to this account. Please update the details to proceed.'**
  String get maskLineNotCreated;

  /// No description provided for @matchProbability.
  ///
  /// In en, this message translates to:
  /// **'Match probability'**
  String get matchProbability;

  /// No description provided for @material.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get material;

  /// No description provided for @materialDescription.
  ///
  /// In en, this message translates to:
  /// **'Material Description'**
  String get materialDescription;

  /// No description provided for @maxAllowedContainers.
  ///
  /// In en, this message translates to:
  /// **'Max Allowed Containers'**
  String get maxAllowedContainers;

  /// No description provided for @maxCEV.
  ///
  /// In en, this message translates to:
  /// **'Max CEV'**
  String get maxCEV;

  /// No description provided for @maxCarbon.
  ///
  /// In en, this message translates to:
  /// **'Max Carbon'**
  String get maxCarbon;

  /// No description provided for @maxDaysLimit.
  ///
  /// In en, this message translates to:
  /// **'Max {maxDays} days'**
  String maxDaysLimit(int maxDays);

  /// No description provided for @maxOptionalOffset.
  ///
  /// In en, this message translates to:
  /// **'Max Optional Offset'**
  String get maxOptionalOffset;

  /// No description provided for @maxPayloadSuitable.
  ///
  /// In en, this message translates to:
  /// **'Container max payload suitable to carry cargo weight? (must be heavy-plated)'**
  String get maxPayloadSuitable;

  /// No description provided for @maxUpperLimit.
  ///
  /// In en, this message translates to:
  /// **'Max Upper Limit'**
  String get maxUpperLimit;

  /// No description provided for @measure.
  ///
  /// In en, this message translates to:
  /// **'Measure'**
  String get measure;

  /// No description provided for @measuredStatus.
  ///
  /// In en, this message translates to:
  /// **'MEASURED'**
  String get measuredStatus;

  /// No description provided for @measuredWeightW3.
  ///
  /// In en, this message translates to:
  /// **'Measured Weight (W3)'**
  String get measuredWeightW3;

  /// No description provided for @measurement.
  ///
  /// In en, this message translates to:
  /// **'Measurement'**
  String get measurement;

  /// No description provided for @mechanical.
  ///
  /// In en, this message translates to:
  /// **'Mechanical'**
  String get mechanical;

  /// No description provided for @media.
  ///
  /// In en, this message translates to:
  /// **'Media'**
  String get media;

  /// No description provided for @mediaAPIFileUploadError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while connecting to media api for file upload.'**
  String get mediaAPIFileUploadError;

  /// No description provided for @mediaCapture.
  ///
  /// In en, this message translates to:
  /// **'Media Capture'**
  String get mediaCapture;

  /// No description provided for @mediaGallery.
  ///
  /// In en, this message translates to:
  /// **'Media Gallery'**
  String get mediaGallery;

  /// No description provided for @mediaItems.
  ///
  /// In en, this message translates to:
  /// **'Media Items'**
  String get mediaItems;

  /// No description provided for @mediaLabel.
  ///
  /// In en, this message translates to:
  /// **'Add Media'**
  String get mediaLabel;

  /// No description provided for @mediaLookup.
  ///
  /// In en, this message translates to:
  /// **'Media Lookup'**
  String get mediaLookup;

  /// No description provided for @mediaRequired.
  ///
  /// In en, this message translates to:
  /// **'Media capture required.'**
  String get mediaRequired;

  /// No description provided for @mediaSearch.
  ///
  /// In en, this message translates to:
  /// **'Media Search'**
  String get mediaSearch;

  /// No description provided for @mediaServiceAzureEndpoint.
  ///
  /// In en, this message translates to:
  /// **'Media Service Azure Endpoint'**
  String get mediaServiceAzureEndpoint;

  /// No description provided for @mediaServiceEdgeEndpoint.
  ///
  /// In en, this message translates to:
  /// **'Media Service Edge Endpoint'**
  String get mediaServiceEdgeEndpoint;

  /// No description provided for @memberDetails.
  ///
  /// In en, this message translates to:
  /// **'Member Details'**
  String get memberDetails;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @menuRefreshAssets.
  ///
  /// In en, this message translates to:
  /// **'Refresh Assets'**
  String get menuRefreshAssets;

  /// No description provided for @menuRefreshCmms.
  ///
  /// In en, this message translates to:
  /// **'CMMS'**
  String get menuRefreshCmms;

  /// No description provided for @menuRefreshWorkRequest.
  ///
  /// In en, this message translates to:
  /// **'Work Requests'**
  String get menuRefreshWorkRequest;

  /// No description provided for @menuStyleSubtext.
  ///
  /// In en, this message translates to:
  /// **'Menu style - wide or compact'**
  String get menuStyleSubtext;

  /// No description provided for @menuWorkRequest.
  ///
  /// In en, this message translates to:
  /// **'Create Work Request'**
  String get menuWorkRequest;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @microsoftCRM.
  ///
  /// In en, this message translates to:
  /// **'Microsoft CRM'**
  String get microsoftCRM;

  /// No description provided for @middleName.
  ///
  /// In en, this message translates to:
  /// **'Middle Name'**
  String get middleName;

  /// No description provided for @mileage.
  ///
  /// In en, this message translates to:
  /// **'Mileage'**
  String get mileage;

  /// No description provided for @miles.
  ///
  /// In en, this message translates to:
  /// **'miles'**
  String get miles;

  /// No description provided for @millimeter.
  ///
  /// In en, this message translates to:
  /// **'Millimeter'**
  String get millimeter;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get minutes;

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m ago'**
  String minutesAgo(int minutes);

  /// No description provided for @misc.
  ///
  /// In en, this message translates to:
  /// **'Misc'**
  String get misc;

  /// No description provided for @miscellaneous.
  ///
  /// In en, this message translates to:
  /// **'Miscellaneous'**
  String get miscellaneous;

  /// No description provided for @missing.
  ///
  /// In en, this message translates to:
  /// **'Missing'**
  String get missing;

  /// No description provided for @missingFromMusterPoint.
  ///
  /// In en, this message translates to:
  /// **'Staff missing from muster point'**
  String get missingFromMusterPoint;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @mobileAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'Mobile already exists.'**
  String get mobileAlreadyExists;

  /// No description provided for @mobileInventory.
  ///
  /// In en, this message translates to:
  /// **'Mobile Inventory'**
  String get mobileInventory;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @mobileOnly.
  ///
  /// In en, this message translates to:
  /// **'Mobile Only'**
  String get mobileOnly;

  /// No description provided for @model.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// No description provided for @modifiedBy.
  ///
  /// In en, this message translates to:
  /// **'Modified By'**
  String get modifiedBy;

  /// No description provided for @modifiedDate.
  ///
  /// In en, this message translates to:
  /// **'Modified Date'**
  String get modifiedDate;

  /// No description provided for @modifyAssetTitle.
  ///
  /// In en, this message translates to:
  /// **'MODIFY ASSET'**
  String get modifyAssetTitle;

  /// No description provided for @modifyPriceViaTag.
  ///
  /// In en, this message translates to:
  /// **'Modify Price (Via Tag)'**
  String get modifyPriceViaTag;

  /// No description provided for @modifyPricing.
  ///
  /// In en, this message translates to:
  /// **'Modify Pricing'**
  String get modifyPricing;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @moreThanOneError.
  ///
  /// In en, this message translates to:
  /// **'More than 1 error occured'**
  String get moreThanOneError;

  /// No description provided for @moreThanOneWarnings.
  ///
  /// In en, this message translates to:
  /// **'More than 1 warnings'**
  String get moreThanOneWarnings;

  /// No description provided for @motorQuoter.
  ///
  /// In en, this message translates to:
  /// **'Motor Quoter'**
  String get motorQuoter;

  /// No description provided for @move.
  ///
  /// In en, this message translates to:
  /// **'Move'**
  String get move;

  /// No description provided for @moveBeamConfirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to move beam to {location}?'**
  String moveBeamConfirm(Object location);

  /// No description provided for @moveCarBodyConfirmationText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to move out'**
  String get moveCarBodyConfirmationText;

  /// No description provided for @moveOutstandingJobs.
  ///
  /// In en, this message translates to:
  /// **'Move Outstanding Jobs'**
  String get moveOutstandingJobs;

  /// No description provided for @movePart.
  ///
  /// In en, this message translates to:
  /// **'Move Part'**
  String get movePart;

  /// No description provided for @moveWeightLine.
  ///
  /// In en, this message translates to:
  /// **'Move Weight Line'**
  String get moveWeightLine;

  /// No description provided for @movedWith.
  ///
  /// In en, this message translates to:
  /// **'moved with'**
  String get movedWith;

  /// No description provided for @moving.
  ///
  /// In en, this message translates to:
  /// **'Moving'**
  String get moving;

  /// No description provided for @mro.
  ///
  /// In en, this message translates to:
  /// **'MRO'**
  String get mro;

  /// No description provided for @mroAssetsLabel.
  ///
  /// In en, this message translates to:
  /// **'MRO Assets'**
  String get mroAssetsLabel;

  /// No description provided for @mroSyncLabel.
  ///
  /// In en, this message translates to:
  /// **'MRO Sync'**
  String get mroSyncLabel;

  /// No description provided for @msgAccountIsBeingOpened.
  ///
  /// In en, this message translates to:
  /// **'Your account is being opened...one final step to go'**
  String get msgAccountIsBeingOpened;

  /// No description provided for @msgAccountSetup.
  ///
  /// In en, this message translates to:
  /// **'Your account has been set up and you’re ready to responsibly recycle with EMR, for the profit you need today and the planet we all need tomorrow.'**
  String get msgAccountSetup;

  /// No description provided for @msgAddressProofSafeAndSecure.
  ///
  /// In en, this message translates to:
  /// **'We now need you to upload a document or two as proof of ID and proof of address. Don’t worry, this is not shared with anyone else, it is securely held and encrypted. We double check your image when you visit our sites to ensure we are paying the correct person – no one has access to the other information you provide.'**
  String get msgAddressProofSafeAndSecure;

  /// No description provided for @msgAddressProofSecure.
  ///
  /// In en, this message translates to:
  /// **'The ID document/s provided are scanned and validated internally, through our systems, and are not shared with or checked against any other databases or government agencies.'**
  String get msgAddressProofSecure;

  /// No description provided for @msgAddressProofsOffline.
  ///
  /// In en, this message translates to:
  /// **'We can’t set you up until we have these documents. Online is the simplest, safest and most secure way of doing this as the info is not handled by anyone, but if you’re not comfortable uploading them, just bring them to your local EMR site instead. You can find your closest EMR at '**
  String get msgAddressProofsOffline;

  /// No description provided for @msgAddressUploaded.
  ///
  /// In en, this message translates to:
  /// **'Thank you, your address has been uploaded'**
  String get msgAddressUploaded;

  /// No description provided for @msgCMPCopper.
  ///
  /// In en, this message translates to:
  /// **'CMP Copper'**
  String get msgCMPCopper;

  /// No description provided for @msgChooseCountryFromDropDown.
  ///
  /// In en, this message translates to:
  /// **'Choose a country code from dropdown menu'**
  String get msgChooseCountryFromDropDown;

  /// No description provided for @msgDidnotGetTheLink.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get the link?'**
  String get msgDidnotGetTheLink;

  /// No description provided for @msgDocumentUploaded.
  ///
  /// In en, this message translates to:
  /// **'Thank you, your document has been uploaded'**
  String get msgDocumentUploaded;

  /// No description provided for @msgEmailOrPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Email address or phone number'**
  String get msgEmailOrPhoneNumber;

  /// No description provided for @msgEnterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get msgEnterAValidEmail;

  /// No description provided for @msgEnterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter first name'**
  String get msgEnterFirstName;

  /// No description provided for @msgEnterLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter last name'**
  String get msgEnterLastName;

  /// No description provided for @msgFileDownloadStarted.
  ///
  /// In en, this message translates to:
  /// **'File Download will start in few seconds, Please wait'**
  String get msgFileDownloadStarted;

  /// No description provided for @msgFileDownloaded.
  ///
  /// In en, this message translates to:
  /// **'File downloaded successfully'**
  String get msgFileDownloaded;

  /// No description provided for @msgIdProofSecure.
  ///
  /// In en, this message translates to:
  /// **'We’ve got you covered! All information and documents are stored securely.'**
  String get msgIdProofSecure;

  /// No description provided for @msgIfTheEmailIsCorrect.
  ///
  /// In en, this message translates to:
  /// **'If the email is incorrect, please enter your email from the home screen'**
  String get msgIfTheEmailIsCorrect;

  /// No description provided for @msgIftheEmailIsCorrectHitLogin.
  ///
  /// In en, this message translates to:
  /// **'If the email below is correct, please hit login.'**
  String get msgIftheEmailIsCorrectHitLogin;

  /// No description provided for @msgLoginAgain.
  ///
  /// In en, this message translates to:
  /// **'Login again'**
  String get msgLoginAgain;

  /// No description provided for @msgMarketIndication.
  ///
  /// In en, this message translates to:
  /// **'Market Indication'**
  String get msgMarketIndication;

  /// No description provided for @msgMarkettingPreferencesOptOut.
  ///
  /// In en, this message translates to:
  /// **'Opt-in to never miss out on exclusive offers, rising price information, new services, and important site updates.'**
  String get msgMarkettingPreferencesOptOut;

  /// No description provided for @msgMessageSent.
  ///
  /// In en, this message translates to:
  /// **'We’ve sent you a message'**
  String get msgMessageSent;

  /// No description provided for @msgPhoneCodeSent.
  ///
  /// In en, this message translates to:
  /// **'We’ve sent you a message with a 6-digit code. '**
  String get msgPhoneCodeSent;

  /// No description provided for @msgPlanToVisit.
  ///
  /// In en, this message translates to:
  /// **'How often do you plan to visit us'**
  String get msgPlanToVisit;

  /// No description provided for @msgPleaseLogInAgain.
  ///
  /// In en, this message translates to:
  /// **'Please log in again'**
  String get msgPleaseLogInAgain;

  /// No description provided for @msgProofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'Proof of address, dated in the last three months'**
  String get msgProofOfAddress;

  /// No description provided for @msgPublicationDeleted.
  ///
  /// In en, this message translates to:
  /// **'Publication deleted successfully'**
  String get msgPublicationDeleted;

  /// No description provided for @msgPublicationSaved.
  ///
  /// In en, this message translates to:
  /// **'Publication saved successfully'**
  String get msgPublicationSaved;

  /// No description provided for @msgScrapMetaDealersAct.
  ///
  /// In en, this message translates to:
  /// **'Scrap metal dealers act'**
  String get msgScrapMetaDealersAct;

  /// No description provided for @msgSelectReasonForAccountCreation.
  ///
  /// In en, this message translates to:
  /// **'Please select your reason for creating an account...'**
  String get msgSelectReasonForAccountCreation;

  /// No description provided for @msgSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your EMR Online Account'**
  String get msgSignIn;

  /// No description provided for @msgSignUpIsFast.
  ///
  /// In en, this message translates to:
  /// **'Sign up is fast, easy and makes your life easier'**
  String get msgSignUpIsFast;

  /// No description provided for @msgSkipStepByUploadingRecommendedId.
  ///
  /// In en, this message translates to:
  /// **'Skip a step by uploading one of the recommended IDs below!'**
  String get msgSkipStepByUploadingRecommendedId;

  /// No description provided for @msgSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get msgSomethingWentWrong;

  /// No description provided for @msgTotalMWP.
  ///
  /// In en, this message translates to:
  /// **'Total MWP'**
  String get msgTotalMWP;

  /// No description provided for @msgUpdated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get msgUpdated;

  /// No description provided for @msgVerifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Simply click the link to verify your account.'**
  String get msgVerifyEmail;

  /// No description provided for @msgWeNeedToValidateYourEmail.
  ///
  /// In en, this message translates to:
  /// **'We need to validate your email.'**
  String get msgWeNeedToValidateYourEmail;

  /// No description provided for @msgWhyDoWeNeedProofOfIdentityForUK.
  ///
  /// In en, this message translates to:
  /// **'It’s a legal requirement* that we verify your identity using photo identification. Help us to keep valuable resources in the supply chain and fight metal theft! '**
  String get msgWhyDoWeNeedProofOfIdentityForUK;

  /// No description provided for @msgWhyDoWeNeedProofOfIdentityForUS.
  ///
  /// In en, this message translates to:
  /// **'State laws require us to verify your identity with a valid photo ID before purchasing materials to ensure compliance with legal regulations, prevent fraud, and maintain accurate transaction records. If you have any questions regarding the collection of this information, please feel free to contact us at'**
  String get msgWhyDoWeNeedProofOfIdentityForUS;

  /// No description provided for @msgWhyWeNeedProofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'We need to clearly see your name printed on an official document. This is another way we  fight fraud and keep our transactions secure.'**
  String get msgWhyWeNeedProofOfAddress;

  /// No description provided for @msgWhyWeNeedProofOfIdentity.
  ///
  /// In en, this message translates to:
  /// **'Before we can pay you, we need to check that you are really you. Clearly seeing your name printed on an official document is  how we do this.  It helps us to fight fraud and keep our transactions secure.'**
  String get msgWhyWeNeedProofOfIdentity;

  /// No description provided for @multi.
  ///
  /// In en, this message translates to:
  /// **'Multi'**
  String get multi;

  /// No description provided for @multiDepot.
  ///
  /// In en, this message translates to:
  /// **'Multi Depot'**
  String get multiDepot;

  /// No description provided for @multiGrade.
  ///
  /// In en, this message translates to:
  /// **'Multi Grade'**
  String get multiGrade;

  /// No description provided for @multiLoad.
  ///
  /// In en, this message translates to:
  /// **'Multi Load'**
  String get multiLoad;

  /// No description provided for @multiLocation.
  ///
  /// In en, this message translates to:
  /// **'Multi Location'**
  String get multiLocation;

  /// No description provided for @multiTicketDate.
  ///
  /// In en, this message translates to:
  /// **'Multi Ticket Date'**
  String get multiTicketDate;

  /// No description provided for @multiplePartyNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Multiple party selection not allowed'**
  String get multiplePartyNotAllowed;

  /// No description provided for @mustBeDateOrEarlier.
  ///
  /// In en, this message translates to:
  /// **'Must be {date} or earlier'**
  String mustBeDateOrEarlier(DateTime date);

  /// No description provided for @mustBeDateOrLater.
  ///
  /// In en, this message translates to:
  /// **'Must be {date} or later'**
  String mustBeDateOrLater(DateTime date);

  /// No description provided for @mustBeEqualsCharacters.
  ///
  /// In en, this message translates to:
  /// **'Must be {equals} characters'**
  String mustBeEqualsCharacters(int equals);

  /// No description provided for @mustBeGreater.
  ///
  /// In en, this message translates to:
  /// **'Must Be Greater Than {invalidMaximum}'**
  String mustBeGreater(Object invalidMaximum);

  /// No description provided for @mustBeGreaterAndLessOrEqual.
  ///
  /// In en, this message translates to:
  /// **'Must Be Greater than {invalidMinimum} And Less Or Equal to {maximum}'**
  String mustBeGreaterAndLessOrEqual(Object invalidMinimum, Object maximum);

  /// No description provided for @mustBeLessOrMax.
  ///
  /// In en, this message translates to:
  /// **'Must be {max} or less'**
  String mustBeLessOrMax(Object max);

  /// No description provided for @mustBeMaxCharactersOrFewer.
  ///
  /// In en, this message translates to:
  /// **'Must be {max} characters or fewer'**
  String mustBeMaxCharactersOrFewer(int max);

  /// No description provided for @mustBeMaxOrLess.
  ///
  /// In en, this message translates to:
  /// **'Must be {max} or less'**
  String mustBeMaxOrLess(int max);

  /// No description provided for @mustBeMinCharactersOrMore.
  ///
  /// In en, this message translates to:
  /// **'Must be {min} characters or more'**
  String mustBeMinCharactersOrMore(int min);

  /// No description provided for @mustBeMinOrGreater.
  ///
  /// In en, this message translates to:
  /// **'Must be {min} or greater'**
  String mustBeMinOrGreater(int min);

  /// No description provided for @mustBeOneOrGreaterValidationMsg.
  ///
  /// In en, this message translates to:
  /// **'Must be 1 or greater'**
  String get mustBeOneOrGreaterValidationMsg;

  /// No description provided for @mustBeSelected.
  ///
  /// In en, this message translates to:
  /// **'Must be selected'**
  String get mustBeSelected;

  /// No description provided for @mustSelectTerritories.
  ///
  /// In en, this message translates to:
  /// **'You must select Territories when creating a new Category'**
  String get mustSelectTerritories;

  /// No description provided for @myCalendar.
  ///
  /// In en, this message translates to:
  /// **'My Calendar'**
  String get myCalendar;

  /// No description provided for @myDevices.
  ///
  /// In en, this message translates to:
  /// **'My Devices'**
  String get myDevices;

  /// No description provided for @myDispatchYards.
  ///
  /// In en, this message translates to:
  /// **'My Dispatch Yards'**
  String get myDispatchYards;

  /// No description provided for @myForms.
  ///
  /// In en, this message translates to:
  /// **'My Forms'**
  String get myForms;

  /// No description provided for @myJobs.
  ///
  /// In en, this message translates to:
  /// **'My Jobs'**
  String get myJobs;

  /// No description provided for @myManagedThirdPartyHauliers.
  ///
  /// In en, this message translates to:
  /// **'My Managed Third Party Hauliers'**
  String get myManagedThirdPartyHauliers;

  /// No description provided for @myThirdPartyHauliers.
  ///
  /// In en, this message translates to:
  /// **'My Third Party Hauliers'**
  String get myThirdPartyHauliers;

  /// No description provided for @myTicketsGallery.
  ///
  /// In en, this message translates to:
  /// **'My Tickets Gallery'**
  String get myTicketsGallery;

  /// No description provided for @na.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get na;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameFor1099.
  ///
  /// In en, this message translates to:
  /// **'Name for 1099'**
  String get nameFor1099;

  /// No description provided for @nameNotBlank.
  ///
  /// In en, this message translates to:
  /// **'Name can not be left blank!'**
  String get nameNotBlank;

  /// No description provided for @nameToUseOn1099.
  ///
  /// In en, this message translates to:
  /// **'Name To Use On 1099'**
  String get nameToUseOn1099;

  /// No description provided for @nationalInsuranceNumber.
  ///
  /// In en, this message translates to:
  /// **'National Insurance Number'**
  String get nationalInsuranceNumber;

  /// No description provided for @nearby.
  ///
  /// In en, this message translates to:
  /// **'Nearby'**
  String get nearby;

  /// No description provided for @needAddressDetailsNote.
  ///
  /// In en, this message translates to:
  /// **'We now need your address details to complete your account registration'**
  String get needAddressDetailsNote;

  /// No description provided for @needSignatureNote.
  ///
  /// In en, this message translates to:
  /// **'Now, all we need is a signature'**
  String get needSignatureNote;

  /// No description provided for @needsContainer.
  ///
  /// In en, this message translates to:
  /// **'Needs Container'**
  String get needsContainer;

  /// No description provided for @needsToBeProvided.
  ///
  /// In en, this message translates to:
  /// **'Needs to be provided'**
  String get needsToBeProvided;

  /// No description provided for @negative.
  ///
  /// In en, this message translates to:
  /// **'Negative'**
  String get negative;

  /// No description provided for @negativeInwardsEnabled.
  ///
  /// In en, this message translates to:
  /// **'Negative Inwards Enabled'**
  String get negativeInwardsEnabled;

  /// No description provided for @negativeNetWeight.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{There is an invalid weight line with zero or negative net weight} other{There are invalid weight lines with zero or negative net weight}}'**
  String negativeNetWeight(num count);

  /// No description provided for @net.
  ///
  /// In en, this message translates to:
  /// **'Net'**
  String get net;

  /// No description provided for @netAmount.
  ///
  /// In en, this message translates to:
  /// **'Net Amount'**
  String get netAmount;

  /// No description provided for @netOfDiscount.
  ///
  /// In en, this message translates to:
  /// **'Net Of Discount'**
  String get netOfDiscount;

  /// No description provided for @netOfTax.
  ///
  /// In en, this message translates to:
  /// **'Net Of Tax'**
  String get netOfTax;

  /// No description provided for @netWeight.
  ///
  /// In en, this message translates to:
  /// **'Net Weight'**
  String get netWeight;

  /// No description provided for @netWeightNotValid.
  ///
  /// In en, this message translates to:
  /// **'Net weight is not valid'**
  String get netWeightNotValid;

  /// No description provided for @netWeightRequired.
  ///
  /// In en, this message translates to:
  /// **'Net weight is required'**
  String get netWeightRequired;

  /// No description provided for @newAccount.
  ///
  /// In en, this message translates to:
  /// **'New Account'**
  String get newAccount;

  /// No description provided for @newAdvanceBalance.
  ///
  /// In en, this message translates to:
  /// **'New Advance Balance'**
  String get newAdvanceBalance;

  /// No description provided for @newAsset.
  ///
  /// In en, this message translates to:
  /// **'New Asset'**
  String get newAsset;

  /// No description provided for @newAssetApprovals.
  ///
  /// In en, this message translates to:
  /// **'New Asset Approvals'**
  String get newAssetApprovals;

  /// No description provided for @newAssets.
  ///
  /// In en, this message translates to:
  /// **'New Assets'**
  String get newAssets;

  /// No description provided for @newChequeBookAdded.
  ///
  /// In en, this message translates to:
  /// **'New Cheque Book Added'**
  String get newChequeBookAdded;

  /// No description provided for @newFixedContract.
  ///
  /// In en, this message translates to:
  /// **'New Fixed Contract'**
  String get newFixedContract;

  /// No description provided for @newLot.
  ///
  /// In en, this message translates to:
  /// **'New Lot'**
  String get newLot;

  /// No description provided for @newLotPrompt.
  ///
  /// In en, this message translates to:
  /// **'Create a new Lot by assiging a QR code, source heap and a ticket.\n\nProvide an source heap to say where the material is coming from and an output heap to determine where the processed material will end up.'**
  String get newLotPrompt;

  /// No description provided for @newPallet.
  ///
  /// In en, this message translates to:
  /// **'New Pallet'**
  String get newPallet;

  /// No description provided for @newPartLocation.
  ///
  /// In en, this message translates to:
  /// **'New Part Location'**
  String get newPartLocation;

  /// No description provided for @newPriceList.
  ///
  /// In en, this message translates to:
  /// **'New Price List'**
  String get newPriceList;

  /// No description provided for @newQuote.
  ///
  /// In en, this message translates to:
  /// **'New Quote'**
  String get newQuote;

  /// No description provided for @newSpotContract.
  ///
  /// In en, this message translates to:
  /// **'New Spot Contract'**
  String get newSpotContract;

  /// No description provided for @newStockTake.
  ///
  /// In en, this message translates to:
  /// **'New Stock Take'**
  String get newStockTake;

  /// No description provided for @newValue.
  ///
  /// In en, this message translates to:
  /// **'New Value'**
  String get newValue;

  /// No description provided for @new_.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get new_;

  /// No description provided for @newest.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get newest;

  /// No description provided for @newestFirst.
  ///
  /// In en, this message translates to:
  /// **'Newest First'**
  String get newestFirst;

  /// No description provided for @newlabel.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newlabel;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @nextInspection.
  ///
  /// In en, this message translates to:
  /// **'Next: Inspection'**
  String get nextInspection;

  /// No description provided for @nextScheduledBACSPayment.
  ///
  /// In en, this message translates to:
  /// **'Next Scheduled BACS Payment'**
  String get nextScheduledBACSPayment;

  /// No description provided for @nextScheduledDate.
  ///
  /// In en, this message translates to:
  /// **'Next Scheduled Date'**
  String get nextScheduledDate;

  /// No description provided for @nextWeekPlans.
  ///
  /// In en, this message translates to:
  /// **'Next Week\'s Plans'**
  String get nextWeekPlans;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @noAddedContainerFound.
  ///
  /// In en, this message translates to:
  /// **'No Added Container Found'**
  String get noAddedContainerFound;

  /// No description provided for @noAdvancesToShow.
  ///
  /// In en, this message translates to:
  /// **'No advances to show.'**
  String get noAdvancesToShow;

  /// No description provided for @noAgreementsRequired.
  ///
  /// In en, this message translates to:
  /// **'No Agreements required'**
  String get noAgreementsRequired;

  /// No description provided for @noApprovalsFound.
  ///
  /// In en, this message translates to:
  /// **'No Approvals Found'**
  String get noApprovalsFound;

  /// No description provided for @noAttributes.
  ///
  /// In en, this message translates to:
  /// **'No Attributes'**
  String get noAttributes;

  /// No description provided for @noCATAvailableMessage.
  ///
  /// In en, this message translates to:
  /// **'There is no catalytic converter available for vehicle'**
  String get noCATAvailableMessage;

  /// No description provided for @noCatsFound.
  ///
  /// In en, this message translates to:
  /// **'No CATs found'**
  String get noCatsFound;

  /// No description provided for @noComments.
  ///
  /// In en, this message translates to:
  /// **'No Comments'**
  String get noComments;

  /// No description provided for @noCommentsYet.
  ///
  /// In en, this message translates to:
  /// **'No comments yet.'**
  String get noCommentsYet;

  /// No description provided for @noCounterSelectedText.
  ///
  /// In en, this message translates to:
  /// **'No Counter selected!'**
  String get noCounterSelectedText;

  /// No description provided for @noCounters.
  ///
  /// In en, this message translates to:
  /// **'No Counters'**
  String get noCounters;

  /// No description provided for @noDataFound.
  ///
  /// In en, this message translates to:
  /// **'No Data Found'**
  String get noDataFound;

  /// No description provided for @noDataSourceFor.
  ///
  /// In en, this message translates to:
  /// **'No data source for'**
  String get noDataSourceFor;

  /// No description provided for @noDatesSelected.
  ///
  /// In en, this message translates to:
  /// **'No dates selected'**
  String get noDatesSelected;

  /// No description provided for @noDocumentsFound.
  ///
  /// In en, this message translates to:
  /// **'No document found'**
  String get noDocumentsFound;

  /// No description provided for @noEndDate.
  ///
  /// In en, this message translates to:
  /// **'No end date'**
  String get noEndDate;

  /// No description provided for @noEvents.
  ///
  /// In en, this message translates to:
  /// **'No events'**
  String get noEvents;

  /// No description provided for @noFreightMatrixMsg.
  ///
  /// In en, this message translates to:
  /// **'No freight matrix exists. Enter an estimated value below. A request will be sent to the transportation department.'**
  String get noFreightMatrixMsg;

  /// No description provided for @noGpsData.
  ///
  /// In en, this message translates to:
  /// **'No GPS data available for selected time range'**
  String get noGpsData;

  /// No description provided for @noGradeSelected.
  ///
  /// In en, this message translates to:
  /// **'No grade selected'**
  String get noGradeSelected;

  /// No description provided for @noIdentitiesRequired.
  ///
  /// In en, this message translates to:
  /// **'No Identities required'**
  String get noIdentitiesRequired;

  /// No description provided for @noImagesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No images available'**
  String get noImagesAvailable;

  /// No description provided for @noImagesFound.
  ///
  /// In en, this message translates to:
  /// **'No images found'**
  String get noImagesFound;

  /// No description provided for @noInternet.
  ///
  /// In en, this message translates to:
  /// **'No network connection'**
  String get noInternet;

  /// No description provided for @noInternetDetails.
  ///
  /// In en, this message translates to:
  /// **'No network connection detected. Please check your internet and try again.'**
  String get noInternetDetails;

  /// No description provided for @noListsFound.
  ///
  /// In en, this message translates to:
  /// **'No lists found!'**
  String get noListsFound;

  /// No description provided for @noLocationsFound.
  ///
  /// In en, this message translates to:
  /// **'No locations found'**
  String get noLocationsFound;

  /// No description provided for @noLocationsHaveBeenSelected.
  ///
  /// In en, this message translates to:
  /// **'No locations have been selected.'**
  String get noLocationsHaveBeenSelected;

  /// No description provided for @noLogsAvailable.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve any diagnostic logs'**
  String get noLogsAvailable;

  /// No description provided for @noMoreResults.
  ///
  /// In en, this message translates to:
  /// **'No more results'**
  String get noMoreResults;

  /// No description provided for @noNoteSupplied.
  ///
  /// In en, this message translates to:
  /// **'No note supplied'**
  String get noNoteSupplied;

  /// No description provided for @noOfJobsToCreate.
  ///
  /// In en, this message translates to:
  /// **'Number of Jobs to Create'**
  String get noOfJobsToCreate;

  /// No description provided for @noOfLines.
  ///
  /// In en, this message translates to:
  /// **'No Of Lines'**
  String get noOfLines;

  /// No description provided for @noOfNo.
  ///
  /// In en, this message translates to:
  /// **'{Number} of {MaxNumber}'**
  String noOfNo(String MaxNumber, String Number);

  /// No description provided for @noOfStock.
  ///
  /// In en, this message translates to:
  /// **'No. of Stock Units'**
  String get noOfStock;

  /// No description provided for @noOrderBooks.
  ///
  /// In en, this message translates to:
  /// **'No orderbook set in preferences'**
  String get noOrderBooks;

  /// No description provided for @noPhotos.
  ///
  /// In en, this message translates to:
  /// **'No Photos'**
  String get noPhotos;

  /// No description provided for @noPhotosAdded.
  ///
  /// In en, this message translates to:
  /// **'No photos have been added'**
  String get noPhotosAdded;

  /// No description provided for @noPrimaryAccountManagerSet.
  ///
  /// In en, this message translates to:
  /// **'No Primary Account Manager Set'**
  String get noPrimaryAccountManagerSet;

  /// No description provided for @noProductsAdded.
  ///
  /// In en, this message translates to:
  /// **'No products have been added'**
  String get noProductsAdded;

  /// No description provided for @noProperySelectedMessage.
  ///
  /// In en, this message translates to:
  /// **'No propery selected!'**
  String get noProperySelectedMessage;

  /// No description provided for @noPublicationsFoundFor.
  ///
  /// In en, this message translates to:
  /// **'No publications found for'**
  String get noPublicationsFoundFor;

  /// No description provided for @noRatesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No rates are available'**
  String get noRatesAvailable;

  /// No description provided for @noRecentJobs.
  ///
  /// In en, this message translates to:
  /// **'No recent jobs'**
  String get noRecentJobs;

  /// No description provided for @noRecordsHaveBeenSelectedMessage.
  ///
  /// In en, this message translates to:
  /// **'No records have been selected. Please use the search or manual look up to add vehicles.'**
  String get noRecordsHaveBeenSelectedMessage;

  /// No description provided for @noRecordsMessage.
  ///
  /// In en, this message translates to:
  /// **'No records found.'**
  String get noRecordsMessage;

  /// No description provided for @noReportsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No reports available'**
  String get noReportsAvailable;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get noResults;

  /// No description provided for @noResultsForSearch.
  ///
  /// In en, this message translates to:
  /// **'No results were found matching your search criteria'**
  String get noResultsForSearch;

  /// No description provided for @noRounding.
  ///
  /// In en, this message translates to:
  /// **'No Rounding'**
  String get noRounding;

  /// No description provided for @noScheduledPayments.
  ///
  /// In en, this message translates to:
  /// **'No Scheduled Payments'**
  String get noScheduledPayments;

  /// No description provided for @noSignature.
  ///
  /// In en, this message translates to:
  /// **'No Signature'**
  String get noSignature;

  /// No description provided for @noStaffMarkedFound.
  ///
  /// In en, this message translates to:
  /// **'No staff/visitor have been marked as found.'**
  String get noStaffMarkedFound;

  /// No description provided for @noStartDate.
  ///
  /// In en, this message translates to:
  /// **'No start date'**
  String get noStartDate;

  /// No description provided for @noTagsAddedPleaseSelectATagFirst.
  ///
  /// In en, this message translates to:
  /// **'No tags added, please select a tag first'**
  String get noTagsAddedPleaseSelectATagFirst;

  /// No description provided for @noTareWeight.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Following line has no tare weight} other{Following lines have no tare weight}}'**
  String noTareWeight(num count);

  /// No description provided for @noTeamsFound.
  ///
  /// In en, this message translates to:
  /// **'No Teams found'**
  String get noTeamsFound;

  /// No description provided for @noTemplatesFound.
  ///
  /// In en, this message translates to:
  /// **'No templates found!'**
  String get noTemplatesFound;

  /// No description provided for @noTerritories.
  ///
  /// In en, this message translates to:
  /// **'No Territories loaded'**
  String get noTerritories;

  /// No description provided for @noTicketsToAddToBasket.
  ///
  /// In en, this message translates to:
  /// **'No tickets to add to basket'**
  String get noTicketsToAddToBasket;

  /// No description provided for @noTicketsToShow.
  ///
  /// In en, this message translates to:
  /// **'No tickets to show.'**
  String get noTicketsToShow;

  /// No description provided for @noTitle.
  ///
  /// In en, this message translates to:
  /// **'No title'**
  String get noTitle;

  /// No description provided for @noTypeSelectedDeleteContact.
  ///
  /// In en, this message translates to:
  /// **'Please select a contact type to keep this contact. Otherwise, it will be removed'**
  String get noTypeSelectedDeleteContact;

  /// No description provided for @noUniqueNumbersFound.
  ///
  /// In en, this message translates to:
  /// **'No Unique Numbers found'**
  String get noUniqueNumbersFound;

  /// No description provided for @noUploads.
  ///
  /// In en, this message translates to:
  /// **'No uploads'**
  String get noUploads;

  /// No description provided for @noVehicleFound.
  ///
  /// In en, this message translates to:
  /// **'No vehicle found'**
  String get noVehicleFound;

  /// No description provided for @noVisitorInfo.
  ///
  /// In en, this message translates to:
  /// **'No visitor info'**
  String get noVisitorInfo;

  /// No description provided for @noWeightLinesAdded.
  ///
  /// In en, this message translates to:
  /// **'No Weight Lines Added'**
  String get noWeightLinesAdded;

  /// No description provided for @noWeightLinesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No weight lines available'**
  String get noWeightLinesAvailable;

  /// No description provided for @noYards.
  ///
  /// In en, this message translates to:
  /// **'No Yards loaded'**
  String get noYards;

  /// No description provided for @nonConformingPart.
  ///
  /// In en, this message translates to:
  /// **'Non-Conforming Part'**
  String get nonConformingPart;

  /// No description provided for @nonConformingParts.
  ///
  /// In en, this message translates to:
  /// **'Non-Conforming Parts'**
  String get nonConformingParts;

  /// No description provided for @nonFerrous.
  ///
  /// In en, this message translates to:
  /// **'Non-Ferrous'**
  String get nonFerrous;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @noneSelected.
  ///
  /// In en, this message translates to:
  /// **'None selected'**
  String get noneSelected;

  /// No description provided for @normalView.
  ///
  /// In en, this message translates to:
  /// **'Normal View'**
  String get normalView;

  /// No description provided for @notApplicable.
  ///
  /// In en, this message translates to:
  /// **'Not Applicable'**
  String get notApplicable;

  /// No description provided for @notApplicableRoutineCheck.
  ///
  /// In en, this message translates to:
  /// **'N/A - Routine Check'**
  String get notApplicableRoutineCheck;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'Not available'**
  String get notAvailable;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'Not Found'**
  String get notFound;

  /// No description provided for @notFoundForTheSelectedYard.
  ///
  /// In en, this message translates to:
  /// **'{fieldNames} not found for the selected yard.'**
  String notFoundForTheSelectedYard(Object fieldNames);

  /// No description provided for @notInUse.
  ///
  /// In en, this message translates to:
  /// **'Not In Use'**
  String get notInUse;

  /// No description provided for @notInitiated.
  ///
  /// In en, this message translates to:
  /// **'not initiated'**
  String get notInitiated;

  /// No description provided for @notPickedByPaymentProcessorCheckPostingAppsLogs.
  ///
  /// In en, this message translates to:
  /// **'Yet to be picked by payment processor. Check posting apps logs in Azure'**
  String get notPickedByPaymentProcessorCheckPostingAppsLogs;

  /// No description provided for @notRequired.
  ///
  /// In en, this message translates to:
  /// **'Not Required'**
  String get notRequired;

  /// No description provided for @notSelected.
  ///
  /// In en, this message translates to:
  /// **'Not Selected'**
  String get notSelected;

  /// No description provided for @notSet.
  ///
  /// In en, this message translates to:
  /// **'Not Set'**
  String get notSet;

  /// No description provided for @notStarted.
  ///
  /// In en, this message translates to:
  /// **'Not Started'**
  String get notStarted;

  /// No description provided for @notSureAboutUploadingDocuments.
  ///
  /// In en, this message translates to:
  /// **'Not sure about uploading documents?'**
  String get notSureAboutUploadingDocuments;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @noteForContactDocument.
  ///
  /// In en, this message translates to:
  /// **'Documents can be added once contact is saved'**
  String get noteForContactDocument;

  /// No description provided for @noteMissingInformation.
  ///
  /// In en, this message translates to:
  /// **'Note missing required information'**
  String get noteMissingInformation;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @notificationSentTo.
  ///
  /// In en, this message translates to:
  /// **'Notification sent to {users}.'**
  String notificationSentTo(Object users);

  /// No description provided for @notificationTest.
  ///
  /// In en, this message translates to:
  /// **'Notification Test'**
  String get notificationTest;

  /// No description provided for @notified.
  ///
  /// In en, this message translates to:
  /// **'Notified'**
  String get notified;

  /// No description provided for @notifyChanges.
  ///
  /// In en, this message translates to:
  /// **'Notify Changes'**
  String get notifyChanges;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get number;

  /// No description provided for @numberOfChequesToAllocate.
  ///
  /// In en, this message translates to:
  /// **'Number of cheques to allocate'**
  String get numberOfChequesToAllocate;

  /// No description provided for @numberOfCopies.
  ///
  /// In en, this message translates to:
  /// **'Number of copies'**
  String get numberOfCopies;

  /// No description provided for @numberOfJobsToBeCloned.
  ///
  /// In en, this message translates to:
  /// **'Number of jobs to be cloned'**
  String get numberOfJobsToBeCloned;

  /// No description provided for @numberOfTasks.
  ///
  /// In en, this message translates to:
  /// **'Number Of Tasks'**
  String get numberOfTasks;

  /// No description provided for @numberOfWeightsTaken.
  ///
  /// In en, this message translates to:
  /// **'Number of weights taken'**
  String get numberOfWeightsTaken;

  /// No description provided for @numbersRemaining.
  ///
  /// In en, this message translates to:
  /// **'Numbers Remaining'**
  String get numbersRemaining;

  /// No description provided for @nwfOverheadSuppliers.
  ///
  /// In en, this message translates to:
  /// **'NWF Overhead Suppliers'**
  String get nwfOverheadSuppliers;

  /// No description provided for @observedFireOrEarthquakeDamage.
  ///
  /// In en, this message translates to:
  /// **'Observed Fire or Earthquake Damage'**
  String get observedFireOrEarthquakeDamage;

  /// No description provided for @of1.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get of1;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @offer.
  ///
  /// In en, this message translates to:
  /// **'Offer'**
  String get offer;

  /// No description provided for @offeredAmount.
  ///
  /// In en, this message translates to:
  /// **'Offered Amount'**
  String get offeredAmount;

  /// No description provided for @offeredPrice.
  ///
  /// In en, this message translates to:
  /// **'Offered Price'**
  String get offeredPrice;

  /// No description provided for @officeNotes.
  ///
  /// In en, this message translates to:
  /// **'Office Notes'**
  String get officeNotes;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @oldest.
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get oldest;

  /// No description provided for @oldestFirst.
  ///
  /// In en, this message translates to:
  /// **'Oldest First'**
  String get oldestFirst;

  /// No description provided for @onGoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get onGoing;

  /// No description provided for @onStop.
  ///
  /// In en, this message translates to:
  /// **'On Stop'**
  String get onStop;

  /// No description provided for @onStopNoPosition.
  ///
  /// In en, this message translates to:
  /// **'On Stop - No Position'**
  String get onStopNoPosition;

  /// No description provided for @onTrack.
  ///
  /// In en, this message translates to:
  /// **'On Track'**
  String get onTrack;

  /// No description provided for @onceADay.
  ///
  /// In en, this message translates to:
  /// **'Once a day'**
  String get onceADay;

  /// No description provided for @oneOff.
  ///
  /// In en, this message translates to:
  /// **'One Off'**
  String get oneOff;

  /// No description provided for @onlyLettersNumbersAllowed.
  ///
  /// In en, this message translates to:
  /// **'Only letters and numbers are allowed.'**
  String get onlyLettersNumbersAllowed;

  /// No description provided for @onlyLettersNumbersHyphensSpacesAllowed.
  ///
  /// In en, this message translates to:
  /// **'Only letters, numbers, hyphens, and spaces are allowed.'**
  String get onlyLettersNumbersHyphensSpacesAllowed;

  /// No description provided for @onlyOneContactTypeAllowed.
  ///
  /// In en, this message translates to:
  /// **'The existing {type} contact will be removed when you save. To keep this contact, choose a different contact type below.'**
  String onlyOneContactTypeAllowed(Object type);

  /// No description provided for @onwards.
  ///
  /// In en, this message translates to:
  /// **'onwards'**
  String get onwards;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @openJobs.
  ///
  /// In en, this message translates to:
  /// **'Open Jobs'**
  String get openJobs;

  /// No description provided for @openJobsReportFileName.
  ///
  /// In en, this message translates to:
  /// **'Open-jobs report'**
  String get openJobsReportFileName;

  /// No description provided for @openPortal.
  ///
  /// In en, this message translates to:
  /// **'Open Portal'**
  String get openPortal;

  /// No description provided for @openUpFlexiblePaymentOptions.
  ///
  /// In en, this message translates to:
  /// **'Open up flexible payment options'**
  String get openUpFlexiblePaymentOptions;

  /// No description provided for @operationCompletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Operation completed successfully!'**
  String get operationCompletedSuccessfully;

  /// No description provided for @operations.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get operations;

  /// No description provided for @operator.
  ///
  /// In en, this message translates to:
  /// **'Operator'**
  String get operator;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @optionalOffsetToUse.
  ///
  /// In en, this message translates to:
  /// **'Optional Offset To Use'**
  String get optionalOffsetToUse;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'- or -'**
  String get or;

  /// No description provided for @orText.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get orText;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @orderBook.
  ///
  /// In en, this message translates to:
  /// **'Order Book'**
  String get orderBook;

  /// No description provided for @orderIndex.
  ///
  /// In en, this message translates to:
  /// **'Order Index'**
  String get orderIndex;

  /// No description provided for @orderNumber.
  ///
  /// In en, this message translates to:
  /// **'Order Number'**
  String get orderNumber;

  /// No description provided for @orderNumberFollowsMsg.
  ///
  /// In en, this message translates to:
  /// **'The order number is as follows'**
  String get orderNumberFollowsMsg;

  /// No description provided for @originalArchitect.
  ///
  /// In en, this message translates to:
  /// **'Original Architect'**
  String get originalArchitect;

  /// No description provided for @originalCat.
  ///
  /// In en, this message translates to:
  /// **'Original Cat'**
  String get originalCat;

  /// No description provided for @originalFabricator.
  ///
  /// In en, this message translates to:
  /// **'Original Fabricator'**
  String get originalFabricator;

  /// No description provided for @originalStructuralEngineer.
  ///
  /// In en, this message translates to:
  /// **'Original Structural Engineer'**
  String get originalStructuralEngineer;

  /// No description provided for @originator.
  ///
  /// In en, this message translates to:
  /// **'Originator'**
  String get originator;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @otherPhotos.
  ///
  /// In en, this message translates to:
  /// **'Other photos (optional)'**
  String get otherPhotos;

  /// No description provided for @otherSpecify.
  ///
  /// In en, this message translates to:
  /// **'Other (specify)'**
  String get otherSpecify;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @outboundSales.
  ///
  /// In en, this message translates to:
  /// **'Outbound Sales'**
  String get outboundSales;

  /// No description provided for @output.
  ///
  /// In en, this message translates to:
  /// **'Output'**
  String get output;

  /// No description provided for @outstanding.
  ///
  /// In en, this message translates to:
  /// **'Outstanding'**
  String get outstanding;

  /// No description provided for @outstandingAmount.
  ///
  /// In en, this message translates to:
  /// **'Outstanding Amount'**
  String get outstandingAmount;

  /// No description provided for @outward.
  ///
  /// In en, this message translates to:
  /// **'Outward'**
  String get outward;

  /// No description provided for @overPlannedTime.
  ///
  /// In en, this message translates to:
  /// **'+{duration} over planned time'**
  String overPlannedTime(String duration);

  /// No description provided for @overall10034Check.
  ///
  /// In en, this message translates to:
  /// **'Overall 10034 Check'**
  String get overall10034Check;

  /// No description provided for @overallToleranceCheck.
  ///
  /// In en, this message translates to:
  /// **'Overall Tolerance Check'**
  String get overallToleranceCheck;

  /// No description provided for @overdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get overdue;

  /// No description provided for @overheadSuppliers.
  ///
  /// In en, this message translates to:
  /// **'Overhead Suppliers'**
  String get overheadSuppliers;

  /// No description provided for @overlayUrl.
  ///
  /// In en, this message translates to:
  /// **'Overlay Url'**
  String get overlayUrl;

  /// No description provided for @overnightFasterPayment.
  ///
  /// In en, this message translates to:
  /// **'Overnight Faster Payment'**
  String get overnightFasterPayment;

  /// No description provided for @overrideDefaultRateReason.
  ///
  /// In en, this message translates to:
  /// **'Override default rate reason'**
  String get overrideDefaultRateReason;

  /// No description provided for @overrideLimit.
  ///
  /// In en, this message translates to:
  /// **'Override Limit'**
  String get overrideLimit;

  /// No description provided for @overrideValueOffered.
  ///
  /// In en, this message translates to:
  /// **'Override Value Offered'**
  String get overrideValueOffered;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @overviewDisplay.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overviewDisplay;

  /// No description provided for @owningYard.
  ///
  /// In en, this message translates to:
  /// **'Owning Yard'**
  String get owningYard;

  /// No description provided for @pCard.
  ///
  /// In en, this message translates to:
  /// **'P-Card'**
  String get pCard;

  /// No description provided for @packagingGroups.
  ///
  /// In en, this message translates to:
  /// **'Packaging group(s)'**
  String get packagingGroups;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFound;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @paidBy.
  ///
  /// In en, this message translates to:
  /// **'Paid By'**
  String get paidBy;

  /// No description provided for @paidToDate.
  ///
  /// In en, this message translates to:
  /// **'Paid to Date'**
  String get paidToDate;

  /// No description provided for @paidWeightOnly.
  ///
  /// In en, this message translates to:
  /// **'Paid Weight Only'**
  String get paidWeightOnly;

  /// No description provided for @panDigits.
  ///
  /// In en, this message translates to:
  /// **'PAN Digits'**
  String get panDigits;

  /// No description provided for @paperShippingName.
  ///
  /// In en, this message translates to:
  /// **'Paper shipping name(s)'**
  String get paperShippingName;

  /// No description provided for @parcel.
  ///
  /// In en, this message translates to:
  /// **'Parcel'**
  String get parcel;

  /// No description provided for @parentAccount.
  ///
  /// In en, this message translates to:
  /// **'Parent Account'**
  String get parentAccount;

  /// No description provided for @parentAssetRequired.
  ///
  /// In en, this message translates to:
  /// **'Parent Asset Required'**
  String get parentAssetRequired;

  /// No description provided for @part.
  ///
  /// In en, this message translates to:
  /// **'Part'**
  String get part;

  /// No description provided for @partialPay.
  ///
  /// In en, this message translates to:
  /// **'Partial Pay'**
  String get partialPay;

  /// No description provided for @parts.
  ///
  /// In en, this message translates to:
  /// **'Parts'**
  String get parts;

  /// No description provided for @partyAccount.
  ///
  /// In en, this message translates to:
  /// **'Party Account'**
  String get partyAccount;

  /// No description provided for @partyAccountNo.
  ///
  /// In en, this message translates to:
  /// **'Party Account No'**
  String get partyAccountNo;

  /// No description provided for @partyAndLineWarning.
  ///
  /// In en, this message translates to:
  /// **'Tags will only apply to Parties and not the selected Contract Lines'**
  String get partyAndLineWarning;

  /// No description provided for @partyDataCouldntBeRetreived.
  ///
  /// In en, this message translates to:
  /// **'Party Data couldn\'t be retrieved'**
  String get partyDataCouldntBeRetreived;

  /// No description provided for @partyDelta.
  ///
  /// In en, this message translates to:
  /// **'Party Delta'**
  String get partyDelta;

  /// No description provided for @partyDetail.
  ///
  /// In en, this message translates to:
  /// **'Party Detail'**
  String get partyDetail;

  /// No description provided for @partyDetails.
  ///
  /// In en, this message translates to:
  /// **'Party Details'**
  String get partyDetails;

  /// No description provided for @partyDocumentUploadHint.
  ///
  /// In en, this message translates to:
  /// **'Only upload .png or .jpg'**
  String get partyDocumentUploadHint;

  /// No description provided for @partyName.
  ///
  /// In en, this message translates to:
  /// **'Party Name'**
  String get partyName;

  /// No description provided for @partyPrices.
  ///
  /// In en, this message translates to:
  /// **'Party Prices'**
  String get partyPrices;

  /// No description provided for @partyTickets.
  ///
  /// In en, this message translates to:
  /// **'Party Tickets'**
  String get partyTickets;

  /// No description provided for @partyWasteStreamLabel.
  ///
  /// In en, this message translates to:
  /// **'Party Waste Stream'**
  String get partyWasteStreamLabel;

  /// No description provided for @passportLink.
  ///
  /// In en, this message translates to:
  /// **'Passport Link'**
  String get passportLink;

  /// No description provided for @passportLinkDate.
  ///
  /// In en, this message translates to:
  /// **'Passport Link Date'**
  String get passportLinkDate;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordValidationFailed.
  ///
  /// In en, this message translates to:
  /// **'Password validation failed'**
  String get passwordValidationFailed;

  /// No description provided for @payBy.
  ///
  /// In en, this message translates to:
  /// **'Pay By'**
  String get payBy;

  /// No description provided for @payCentre.
  ///
  /// In en, this message translates to:
  /// **'Pay Centre'**
  String get payCentre;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @payTicketsOlderThan.
  ///
  /// In en, this message translates to:
  /// **'Pay tickets older than'**
  String get payTicketsOlderThan;

  /// No description provided for @payable.
  ///
  /// In en, this message translates to:
  /// **'Payable'**
  String get payable;

  /// No description provided for @payableAfterCostAndDeduction.
  ///
  /// In en, this message translates to:
  /// **'Payable After C&D'**
  String get payableAfterCostAndDeduction;

  /// No description provided for @payableBeforeCostAndDeduction.
  ///
  /// In en, this message translates to:
  /// **'Payable Before C&D'**
  String get payableBeforeCostAndDeduction;

  /// No description provided for @payableWeight.
  ///
  /// In en, this message translates to:
  /// **'Payable Weight'**
  String get payableWeight;

  /// No description provided for @payableYard.
  ///
  /// In en, this message translates to:
  /// **'Payable Yard'**
  String get payableYard;

  /// No description provided for @payeeName.
  ///
  /// In en, this message translates to:
  /// **'Payee Name'**
  String get payeeName;

  /// No description provided for @paymentAmount.
  ///
  /// In en, this message translates to:
  /// **'Payment Amount'**
  String get paymentAmount;

  /// No description provided for @paymentApproval.
  ///
  /// In en, this message translates to:
  /// **'Payment Approval'**
  String get paymentApproval;

  /// No description provided for @paymentAuthorizations.
  ///
  /// In en, this message translates to:
  /// **'Payment Authorisations'**
  String get paymentAuthorizations;

  /// No description provided for @paymentBasket.
  ///
  /// In en, this message translates to:
  /// **'Payment Basket'**
  String get paymentBasket;

  /// No description provided for @paymentDate.
  ///
  /// In en, this message translates to:
  /// **'Payment Date'**
  String get paymentDate;

  /// No description provided for @paymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Payment Details'**
  String get paymentDetails;

  /// No description provided for @paymentDetailsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Payment details not found'**
  String get paymentDetailsNotFound;

  /// No description provided for @paymentDetailsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Payment details updated'**
  String get paymentDetailsUpdated;

  /// No description provided for @paymentInitiatedAt.
  ///
  /// In en, this message translates to:
  /// **'Payment Initiated at'**
  String get paymentInitiatedAt;

  /// No description provided for @paymentLimitExemptionDate.
  ///
  /// In en, this message translates to:
  /// **'Payment Limit Exemption Date'**
  String get paymentLimitExemptionDate;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @paymentMethodNameAtm.
  ///
  /// In en, this message translates to:
  /// **'ATM'**
  String get paymentMethodNameAtm;

  /// No description provided for @paymentMethodNameAutoChequeWithEncashmentAtm.
  ///
  /// In en, this message translates to:
  /// **'Automatic Cheque Encashment Atm'**
  String get paymentMethodNameAutoChequeWithEncashmentAtm;

  /// No description provided for @paymentMethodNameAutoChequeWithEncashmentCash.
  ///
  /// In en, this message translates to:
  /// **'Automatic Cheque Encashment Cash'**
  String get paymentMethodNameAutoChequeWithEncashmentCash;

  /// No description provided for @paymentMethodNameCash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get paymentMethodNameCash;

  /// No description provided for @paymentMethodNameCheque.
  ///
  /// In en, this message translates to:
  /// **'Cheque'**
  String get paymentMethodNameCheque;

  /// No description provided for @paymentMethodNameDigitalWalletWithAtm.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Atm'**
  String get paymentMethodNameDigitalWalletWithAtm;

  /// No description provided for @paymentMethodNameDigitalWalletWithCash.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Cash'**
  String get paymentMethodNameDigitalWalletWithCash;

  /// No description provided for @paymentMethodNameNone.
  ///
  /// In en, this message translates to:
  /// **'NONE'**
  String get paymentMethodNameNone;

  /// No description provided for @paymentMethodNamePrePayCard.
  ///
  /// In en, this message translates to:
  /// **'PrePay Card'**
  String get paymentMethodNamePrePayCard;

  /// No description provided for @paymentMethodNameTransferOvernight.
  ///
  /// In en, this message translates to:
  /// **'Transfer Overnight'**
  String get paymentMethodNameTransferOvernight;

  /// No description provided for @paymentMethodNameTransferSameDay.
  ///
  /// In en, this message translates to:
  /// **'Transfer SameDay'**
  String get paymentMethodNameTransferSameDay;

  /// No description provided for @paymentNameAtm.
  ///
  /// In en, this message translates to:
  /// **'ATM'**
  String get paymentNameAtm;

  /// No description provided for @paymentNameAutoCheque.
  ///
  /// In en, this message translates to:
  /// **'Automatic Cheque'**
  String get paymentNameAutoCheque;

  /// No description provided for @paymentNameAutoChequeWithEncashmentAtm.
  ///
  /// In en, this message translates to:
  /// **'Automatic Cheque Encashment Atm'**
  String get paymentNameAutoChequeWithEncashmentAtm;

  /// No description provided for @paymentNameAutoChequeWithEncashmentCash.
  ///
  /// In en, this message translates to:
  /// **'Automatic Cheque Encashment Cash'**
  String get paymentNameAutoChequeWithEncashmentCash;

  /// No description provided for @paymentNameCash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get paymentNameCash;

  /// No description provided for @paymentNameDigitalWalletWithAtm.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Atm'**
  String get paymentNameDigitalWalletWithAtm;

  /// No description provided for @paymentNameDigitalWalletWithCash.
  ///
  /// In en, this message translates to:
  /// **'Digital Wallet Cash'**
  String get paymentNameDigitalWalletWithCash;

  /// No description provided for @paymentNameFasterPayment.
  ///
  /// In en, this message translates to:
  /// **'Faster Payment'**
  String get paymentNameFasterPayment;

  /// No description provided for @paymentNameManualCheque.
  ///
  /// In en, this message translates to:
  /// **'Manual Cheque'**
  String get paymentNameManualCheque;

  /// No description provided for @paymentNameNone.
  ///
  /// In en, this message translates to:
  /// **'Please select'**
  String get paymentNameNone;

  /// No description provided for @paymentNameOvernightFasterPayment.
  ///
  /// In en, this message translates to:
  /// **'Overnight Faster Payment'**
  String get paymentNameOvernightFasterPayment;

  /// No description provided for @paymentNameSecorePrepayCard.
  ///
  /// In en, this message translates to:
  /// **'Secore Prepay Card'**
  String get paymentNameSecorePrepayCard;

  /// No description provided for @paymentNotes.
  ///
  /// In en, this message translates to:
  /// **'Payment Notes'**
  String get paymentNotes;

  /// No description provided for @paymentPostingStartedCheckPostingAppsLogs.
  ///
  /// In en, this message translates to:
  /// **'Payment posting has started. Check posting apps logs on Azure'**
  String get paymentPostingStartedCheckPostingAppsLogs;

  /// No description provided for @paymentPostingTask.
  ///
  /// In en, this message translates to:
  /// **'Payment Posting Task'**
  String get paymentPostingTask;

  /// No description provided for @paymentPostingTaskCreated.
  ///
  /// In en, this message translates to:
  /// **'Payment posting task created'**
  String get paymentPostingTaskCreated;

  /// No description provided for @paymentReciept.
  ///
  /// In en, this message translates to:
  /// **'Payment Reciept'**
  String get paymentReciept;

  /// No description provided for @paymentRecord.
  ///
  /// In en, this message translates to:
  /// **'Payment Record'**
  String get paymentRecord;

  /// No description provided for @paymentRecordStatus.
  ///
  /// In en, this message translates to:
  /// **'Payment Record Status'**
  String get paymentRecordStatus;

  /// No description provided for @paymentRule.
  ///
  /// In en, this message translates to:
  /// **'Payment Rule'**
  String get paymentRule;

  /// No description provided for @paymentRules.
  ///
  /// In en, this message translates to:
  /// **'Payment Rules'**
  String get paymentRules;

  /// No description provided for @paymentSentToApprovals.
  ///
  /// In en, this message translates to:
  /// **'The payment has been submitted for approval'**
  String get paymentSentToApprovals;

  /// No description provided for @paymentSplit.
  ///
  /// In en, this message translates to:
  /// **'Payment Split'**
  String get paymentSplit;

  /// No description provided for @paymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Payment made through {paymentMethod}'**
  String paymentSuccess(Object paymentMethod);

  /// No description provided for @paymentTermTypeId.
  ///
  /// In en, this message translates to:
  /// **'Payment Term Type Id'**
  String get paymentTermTypeId;

  /// No description provided for @paymentTermTypeName.
  ///
  /// In en, this message translates to:
  /// **'Payment Term Type'**
  String get paymentTermTypeName;

  /// No description provided for @paymentTermTypeNameA.
  ///
  /// In en, this message translates to:
  /// **'Advance'**
  String get paymentTermTypeNameA;

  /// No description provided for @paymentTermTypeNameBD00.
  ///
  /// In en, this message translates to:
  /// **'Open book 0 Days'**
  String get paymentTermTypeNameBD00;

  /// No description provided for @paymentTermTypeNameBD01.
  ///
  /// In en, this message translates to:
  /// **'Open book 1 Day'**
  String get paymentTermTypeNameBD01;

  /// No description provided for @paymentTermTypeNameBD05.
  ///
  /// In en, this message translates to:
  /// **'Open book 5 Days'**
  String get paymentTermTypeNameBD05;

  /// No description provided for @paymentTermTypeNameBD07.
  ///
  /// In en, this message translates to:
  /// **'Open book 7 Days'**
  String get paymentTermTypeNameBD07;

  /// No description provided for @paymentTermTypeNameBD10.
  ///
  /// In en, this message translates to:
  /// **'Open book 10 Days'**
  String get paymentTermTypeNameBD10;

  /// No description provided for @paymentTermTypeNameBD120.
  ///
  /// In en, this message translates to:
  /// **'Open book 120 Days'**
  String get paymentTermTypeNameBD120;

  /// No description provided for @paymentTermTypeNameBD14.
  ///
  /// In en, this message translates to:
  /// **'Open book 14 Days'**
  String get paymentTermTypeNameBD14;

  /// No description provided for @paymentTermTypeNameBD15.
  ///
  /// In en, this message translates to:
  /// **'Open book 15 Days'**
  String get paymentTermTypeNameBD15;

  /// No description provided for @paymentTermTypeNameBD21.
  ///
  /// In en, this message translates to:
  /// **'Open book 21 Days'**
  String get paymentTermTypeNameBD21;

  /// No description provided for @paymentTermTypeNameBD28.
  ///
  /// In en, this message translates to:
  /// **'Open book 28 Days'**
  String get paymentTermTypeNameBD28;

  /// No description provided for @paymentTermTypeNameBD30.
  ///
  /// In en, this message translates to:
  /// **'Open book 30 Days'**
  String get paymentTermTypeNameBD30;

  /// No description provided for @paymentTermTypeNameBD45.
  ///
  /// In en, this message translates to:
  /// **'Open book 45 Days'**
  String get paymentTermTypeNameBD45;

  /// No description provided for @paymentTermTypeNameBD60.
  ///
  /// In en, this message translates to:
  /// **'Open book 60 Days'**
  String get paymentTermTypeNameBD60;

  /// No description provided for @paymentTermTypeNameBD90.
  ///
  /// In en, this message translates to:
  /// **'Open book 90 Days'**
  String get paymentTermTypeNameBD90;

  /// No description provided for @paymentTermTypeNameBM00.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month'**
  String get paymentTermTypeNameBM00;

  /// No description provided for @paymentTermTypeNameBM01.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 1 day'**
  String get paymentTermTypeNameBM01;

  /// No description provided for @paymentTermTypeNameBM05.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 5 days'**
  String get paymentTermTypeNameBM05;

  /// No description provided for @paymentTermTypeNameBM10.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 10 days'**
  String get paymentTermTypeNameBM10;

  /// No description provided for @paymentTermTypeNameBM14.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 14 days'**
  String get paymentTermTypeNameBM14;

  /// No description provided for @paymentTermTypeNameBM15.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 15 days'**
  String get paymentTermTypeNameBM15;

  /// No description provided for @paymentTermTypeNameBM20.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 20 days'**
  String get paymentTermTypeNameBM20;

  /// No description provided for @paymentTermTypeNameBM25.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 25 days'**
  String get paymentTermTypeNameBM25;

  /// No description provided for @paymentTermTypeNameBM30.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 30 days'**
  String get paymentTermTypeNameBM30;

  /// No description provided for @paymentTermTypeNameBM45.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 45 days'**
  String get paymentTermTypeNameBM45;

  /// No description provided for @paymentTermTypeNameBM60.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 60 days'**
  String get paymentTermTypeNameBM60;

  /// No description provided for @paymentTermTypeNameBO00.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 1 month'**
  String get paymentTermTypeNameBO00;

  /// No description provided for @paymentTermTypeNameCD00.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents 0 Days'**
  String get paymentTermTypeNameCD00;

  /// No description provided for @paymentTermTypeNameCD01.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents 1 Day'**
  String get paymentTermTypeNameCD01;

  /// No description provided for @paymentTermTypeNameCD14.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents 14 Days'**
  String get paymentTermTypeNameCD14;

  /// No description provided for @paymentTermTypeNameCD30.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents 30 Days'**
  String get paymentTermTypeNameCD30;

  /// No description provided for @paymentTermTypeNameCM00.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents End of Month'**
  String get paymentTermTypeNameCM00;

  /// No description provided for @paymentTermTypeNameCM15.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents End of Month + 15 days'**
  String get paymentTermTypeNameCM15;

  /// No description provided for @paymentTermTypeNameCM30.
  ///
  /// In en, this message translates to:
  /// **'Cash against documents End of Month + 30 days'**
  String get paymentTermTypeNameCM30;

  /// No description provided for @paymentTermTypeNameCode01LL.
  ///
  /// In en, this message translates to:
  /// **'Open book End of Month + 1 month'**
  String get paymentTermTypeNameCode01LL;

  /// No description provided for @paymentTermTypeNameDD00.
  ///
  /// In en, this message translates to:
  /// **'Documents against cash 0 Days'**
  String get paymentTermTypeNameDD00;

  /// No description provided for @paymentTermTypeNameDD07.
  ///
  /// In en, this message translates to:
  /// **'Documents against cash 7 Days'**
  String get paymentTermTypeNameDD07;

  /// No description provided for @paymentTermTypeNameDD14.
  ///
  /// In en, this message translates to:
  /// **'Documents against cash 14 Days'**
  String get paymentTermTypeNameDD14;

  /// No description provided for @paymentTermTypeNameDD30.
  ///
  /// In en, this message translates to:
  /// **'Documents against cash 30 Days'**
  String get paymentTermTypeNameDD30;

  /// No description provided for @paymentTermTypeNameLD00.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 0 Days'**
  String get paymentTermTypeNameLD00;

  /// No description provided for @paymentTermTypeNameLD07.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 7 Days'**
  String get paymentTermTypeNameLD07;

  /// No description provided for @paymentTermTypeNameLD14.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 14 Days'**
  String get paymentTermTypeNameLD14;

  /// No description provided for @paymentTermTypeNameLD21.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 21 Days'**
  String get paymentTermTypeNameLD21;

  /// No description provided for @paymentTermTypeNameLD30.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 30 Days'**
  String get paymentTermTypeNameLD30;

  /// No description provided for @paymentTermTypeNameLD45.
  ///
  /// In en, this message translates to:
  /// **'Letter of credit 45 Days'**
  String get paymentTermTypeNameLD45;

  /// No description provided for @paymentTerms.
  ///
  /// In en, this message translates to:
  /// **'Payment Terms'**
  String get paymentTerms;

  /// No description provided for @paymentTickets.
  ///
  /// In en, this message translates to:
  /// **'Payment Tickets'**
  String get paymentTickets;

  /// No description provided for @paymentTypeName.
  ///
  /// In en, this message translates to:
  /// **'Payment Type'**
  String get paymentTypeName;

  /// No description provided for @payments.
  ///
  /// In en, this message translates to:
  /// **'Payments'**
  String get payments;

  /// No description provided for @pdfExtention.
  ///
  /// In en, this message translates to:
  /// **'pdf'**
  String get pdfExtention;

  /// No description provided for @pdfFileValidation.
  ///
  /// In en, this message translates to:
  /// **'Only PDF files are allowed please'**
  String get pdfFileValidation;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @pendingAllocation.
  ///
  /// In en, this message translates to:
  /// **'Pending Allocation'**
  String get pendingAllocation;

  /// No description provided for @peopleMissingFromRollCall.
  ///
  /// In en, this message translates to:
  /// **'People missing from roll call'**
  String get peopleMissingFromRollCall;

  /// No description provided for @percentage.
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get percentage;

  /// No description provided for @percentageOfAdvance.
  ///
  /// In en, this message translates to:
  /// **'Percentage Of Advance'**
  String get percentageOfAdvance;

  /// No description provided for @performASearch.
  ///
  /// In en, this message translates to:
  /// **'Perform a search to see results.'**
  String get performASearch;

  /// No description provided for @permittedHours.
  ///
  /// In en, this message translates to:
  /// **'Permitted Hours'**
  String get permittedHours;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;

  /// No description provided for @personalPreferences.
  ///
  /// In en, this message translates to:
  /// **'Personal Preferences'**
  String get personalPreferences;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @phoneNo.
  ///
  /// In en, this message translates to:
  /// **'Phone No.'**
  String get phoneNo;

  /// No description provided for @photoGallery.
  ///
  /// In en, this message translates to:
  /// **'Photo Gallery'**
  String get photoGallery;

  /// No description provided for @photos.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get photos;

  /// No description provided for @physicalDetails.
  ///
  /// In en, this message translates to:
  /// **'Physical Details'**
  String get physicalDetails;

  /// No description provided for @physicalForm.
  ///
  /// In en, this message translates to:
  /// **'Physical Form'**
  String get physicalForm;

  /// No description provided for @physicalWeight.
  ///
  /// In en, this message translates to:
  /// **'Physical Weight'**
  String get physicalWeight;

  /// No description provided for @piPrintApiKey.
  ///
  /// In en, this message translates to:
  /// **'PI Print API Key'**
  String get piPrintApiKey;

  /// No description provided for @piPrintKey.
  ///
  /// In en, this message translates to:
  /// **'Pi Print Key'**
  String get piPrintKey;

  /// No description provided for @piPrintTimeoutInSeconds.
  ///
  /// In en, this message translates to:
  /// **'Pi Print Timeout in Seconds'**
  String get piPrintTimeoutInSeconds;

  /// No description provided for @pick.
  ///
  /// In en, this message translates to:
  /// **'Pick'**
  String get pick;

  /// No description provided for @pickedContainer.
  ///
  /// In en, this message translates to:
  /// **'Picked Container'**
  String get pickedContainer;

  /// No description provided for @pictures.
  ///
  /// In en, this message translates to:
  /// **'Pictures'**
  String get pictures;

  /// No description provided for @pipeCats.
  ///
  /// In en, this message translates to:
  /// **'Pipe Cats'**
  String get pipeCats;

  /// No description provided for @pl.
  ///
  /// In en, this message translates to:
  /// **'PL'**
  String get pl;

  /// No description provided for @place.
  ///
  /// In en, this message translates to:
  /// **'Place'**
  String get place;

  /// No description provided for @planClonedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Plan cloned successfully'**
  String get planClonedSuccessfully;

  /// No description provided for @planCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Plan created successfully'**
  String get planCreatedSuccessfully;

  /// No description provided for @planDate.
  ///
  /// In en, this message translates to:
  /// **'Plan Date'**
  String get planDate;

  /// No description provided for @planDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Plan deleted successfully'**
  String get planDeletedSuccessfully;

  /// No description provided for @planDetails.
  ///
  /// In en, this message translates to:
  /// **'Plan Details'**
  String get planDetails;

  /// No description provided for @planId.
  ///
  /// In en, this message translates to:
  /// **'Plan Id'**
  String get planId;

  /// No description provided for @planImportTemplateFileName.
  ///
  /// In en, this message translates to:
  /// **'PlanImportTemplate'**
  String get planImportTemplateFileName;

  /// No description provided for @planLoadsError.
  ///
  /// In en, this message translates to:
  /// **'The combined loads assigned to hauliers exceed the total number of loads available.'**
  String get planLoadsError;

  /// No description provided for @planNumber.
  ///
  /// In en, this message translates to:
  /// **'Plan Number'**
  String get planNumber;

  /// No description provided for @planNumberFollowsMsg.
  ///
  /// In en, this message translates to:
  /// **'The plan number is as follows'**
  String get planNumberFollowsMsg;

  /// No description provided for @planType.
  ///
  /// In en, this message translates to:
  /// **'Plan Type'**
  String get planType;

  /// No description provided for @planUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Plan updated successfully'**
  String get planUpdatedSuccessfully;

  /// No description provided for @planned.
  ///
  /// In en, this message translates to:
  /// **'Planned'**
  String get planned;

  /// No description provided for @planner.
  ///
  /// In en, this message translates to:
  /// **'Planner'**
  String get planner;

  /// No description provided for @planningYard.
  ///
  /// In en, this message translates to:
  /// **'Planning Yard'**
  String get planningYard;

  /// No description provided for @pleaseAddAFilterToStart.
  ///
  /// In en, this message translates to:
  /// **'To show data please select a buyer or party from the filter list, then press search.'**
  String get pleaseAddAFilterToStart;

  /// No description provided for @pleaseAddAnAddress.
  ///
  /// In en, this message translates to:
  /// **'Please add an address'**
  String get pleaseAddAnAddress;

  /// No description provided for @pleaseAddVehicleFrontAndBackImages.
  ///
  /// In en, this message translates to:
  /// **'Please add Vehicle Front and Back Images'**
  String get pleaseAddVehicleFrontAndBackImages;

  /// No description provided for @pleaseCheckTheDetailsYouHaveEntered.
  ///
  /// In en, this message translates to:
  /// **'Please check the details you have entered'**
  String get pleaseCheckTheDetailsYouHaveEntered;

  /// No description provided for @pleaseChooseAQuoteSource.
  ///
  /// In en, this message translates to:
  /// **'Please choose a quote source'**
  String get pleaseChooseAQuoteSource;

  /// No description provided for @pleaseChooseATitle.
  ///
  /// In en, this message translates to:
  /// **'Please choose a Title.'**
  String get pleaseChooseATitle;

  /// No description provided for @pleaseChooseLocation.
  ///
  /// In en, this message translates to:
  /// **'Please select at least 1 location for Collected delivery type'**
  String get pleaseChooseLocation;

  /// No description provided for @pleaseContactHelpDesk.
  ///
  /// In en, this message translates to:
  /// **'Please Contact Help Desk for Support'**
  String get pleaseContactHelpDesk;

  /// No description provided for @pleaseEnterA.
  ///
  /// In en, this message translates to:
  /// **'Please enter a'**
  String get pleaseEnterA;

  /// No description provided for @pleaseEnterADoB.
  ///
  /// In en, this message translates to:
  /// **'Please enter a date of birth.'**
  String get pleaseEnterADoB;

  /// No description provided for @pleaseEnterAFirstName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a first name.'**
  String get pleaseEnterAFirstName;

  /// No description provided for @pleaseEnterAPartyNameOrAnAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a Party Name or an Account Number'**
  String get pleaseEnterAPartyNameOrAnAccountNumber;

  /// No description provided for @pleaseEnterAccountHolder.
  ///
  /// In en, this message translates to:
  /// **'Please enter the account holder\'s name'**
  String get pleaseEnterAccountHolder;

  /// No description provided for @pleaseEnterAnEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter an email.'**
  String get pleaseEnterAnEmail;

  /// No description provided for @pleaseEnterAtleast4.
  ///
  /// In en, this message translates to:
  /// **'Please enter at least 4 characters not including whitespace'**
  String get pleaseEnterAtleast4;

  /// No description provided for @pleaseEnterBankName.
  ///
  /// In en, this message translates to:
  /// **'Please enter the bank\'s name'**
  String get pleaseEnterBankName;

  /// No description provided for @pleaseEnterCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter card number'**
  String get pleaseEnterCardNumber;

  /// No description provided for @pleaseEnterChequeNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter cheque number'**
  String get pleaseEnterChequeNumber;

  /// No description provided for @pleaseEnterCity.
  ///
  /// In en, this message translates to:
  /// **'Please enter a town/city'**
  String get pleaseEnterCity;

  /// No description provided for @pleaseEnterEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Please enter an email address'**
  String get pleaseEnterEmailAddress;

  /// No description provided for @pleaseEnterLastName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a last name.'**
  String get pleaseEnterLastName;

  /// No description provided for @pleaseEnterName.
  ///
  /// In en, this message translates to:
  /// **'Please enter name'**
  String get pleaseEnterName;

  /// No description provided for @pleaseEnterNote.
  ///
  /// In en, this message translates to:
  /// **'Please enter note'**
  String get pleaseEnterNote;

  /// No description provided for @pleaseEnterNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a number'**
  String get pleaseEnterNumber;

  /// No description provided for @pleaseEnterPayeeName.
  ///
  /// In en, this message translates to:
  /// **'Please enter payee name'**
  String get pleaseEnterPayeeName;

  /// No description provided for @pleaseEnterPostcode.
  ///
  /// In en, this message translates to:
  /// **'Please enter postcode'**
  String get pleaseEnterPostcode;

  /// No description provided for @pleaseEnterSearchCriteria.
  ///
  /// In en, this message translates to:
  /// **'Please enter a search criteria.'**
  String get pleaseEnterSearchCriteria;

  /// No description provided for @pleaseProvideExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Please provide an expiry date'**
  String get pleaseProvideExpiryDate;

  /// No description provided for @pleaseSelect.
  ///
  /// In en, this message translates to:
  /// **'Please Select'**
  String get pleaseSelect;

  /// No description provided for @pleaseSelectAGrade.
  ///
  /// In en, this message translates to:
  /// **'Please select a Grade'**
  String get pleaseSelectAGrade;

  /// No description provided for @pleaseSelectAStartAndEndDate.
  ///
  /// In en, this message translates to:
  /// **'Please select a start and end date'**
  String get pleaseSelectAStartAndEndDate;

  /// No description provided for @pleaseSelectAStartAndOptionalEndDate.
  ///
  /// In en, this message translates to:
  /// **'Please select a start and optional end date'**
  String get pleaseSelectAStartAndOptionalEndDate;

  /// No description provided for @pleaseSelectAValidAccountNo.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid account number with no spaces'**
  String get pleaseSelectAValidAccountNo;

  /// No description provided for @pleaseSelectAValidSortCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid sort code with no spaces or dashes'**
  String get pleaseSelectAValidSortCode;

  /// No description provided for @pleaseSelectAValue.
  ///
  /// In en, this message translates to:
  /// **'Please select a value'**
  String get pleaseSelectAValue;

  /// No description provided for @pleaseSelectAYard.
  ///
  /// In en, this message translates to:
  /// **'Please Select a Yard'**
  String get pleaseSelectAYard;

  /// No description provided for @pleaseSelectAccount.
  ///
  /// In en, this message translates to:
  /// **'Please select an Account'**
  String get pleaseSelectAccount;

  /// No description provided for @pleaseSelectAddress.
  ///
  /// In en, this message translates to:
  /// **'Please select an Address'**
  String get pleaseSelectAddress;

  /// No description provided for @pleaseSelectAnAccountLocation.
  ///
  /// In en, this message translates to:
  /// **'Please Select an Account Location'**
  String get pleaseSelectAnAccountLocation;

  /// No description provided for @pleaseSelectAnOrderBook.
  ///
  /// In en, this message translates to:
  /// **'Please select an Order Book'**
  String get pleaseSelectAnOrderBook;

  /// No description provided for @pleaseSelectAtLeastOneDeliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one delivery method'**
  String get pleaseSelectAtLeastOneDeliveryMethod;

  /// No description provided for @pleaseSelectCAT.
  ///
  /// In en, this message translates to:
  /// **'Please select CAT'**
  String get pleaseSelectCAT;

  /// No description provided for @pleaseSelectCatalyticClassification.
  ///
  /// In en, this message translates to:
  /// **'Please select Catalytic Classification'**
  String get pleaseSelectCatalyticClassification;

  /// No description provided for @pleaseSelectCatalyticFill.
  ///
  /// In en, this message translates to:
  /// **'Please select Catalytic Fill'**
  String get pleaseSelectCatalyticFill;

  /// No description provided for @pleaseSelectFile.
  ///
  /// In en, this message translates to:
  /// **'Please select a file'**
  String get pleaseSelectFile;

  /// No description provided for @pleaseSelectLocation.
  ///
  /// In en, this message translates to:
  /// **'Please select location'**
  String get pleaseSelectLocation;

  /// No description provided for @pleaseSelectRdCode.
  ///
  /// In en, this message translates to:
  /// **'Please select R/D code'**
  String get pleaseSelectRdCode;

  /// No description provided for @pleaseSelectScale.
  ///
  /// In en, this message translates to:
  /// **'Please select scale'**
  String get pleaseSelectScale;

  /// No description provided for @pleaseSelectTareWeight.
  ///
  /// In en, this message translates to:
  /// **'Please select tare weight'**
  String get pleaseSelectTareWeight;

  /// No description provided for @pleaseSelectTerritory.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one territory'**
  String get pleaseSelectTerritory;

  /// No description provided for @pleaseSelectTheLocationForTheCollection.
  ///
  /// In en, this message translates to:
  /// **'Please select the location for the collection.'**
  String get pleaseSelectTheLocationForTheCollection;

  /// No description provided for @pleaseSelectTheTypeOfIdentification.
  ///
  /// In en, this message translates to:
  /// **'Please select the type of identification'**
  String get pleaseSelectTheTypeOfIdentification;

  /// No description provided for @pleaseSelectTheTypeOfProofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'Please select the type of proof of address'**
  String get pleaseSelectTheTypeOfProofOfAddress;

  /// No description provided for @pleaseSelectWheels.
  ///
  /// In en, this message translates to:
  /// **'Please select wheels'**
  String get pleaseSelectWheels;

  /// No description provided for @pleaseSelectXlsxFile.
  ///
  /// In en, this message translates to:
  /// **'Please select a .xlsx file'**
  String get pleaseSelectXlsxFile;

  /// No description provided for @pleaseSelectYesNoForTheBatteryBeforeProceeding.
  ///
  /// In en, this message translates to:
  /// **'Please select Yes or No for the battery before proceeding.'**
  String get pleaseSelectYesNoForTheBatteryBeforeProceeding;

  /// No description provided for @pleaseSelectaDeliveryType.
  ///
  /// In en, this message translates to:
  /// **'Please Select a Delivery Type'**
  String get pleaseSelectaDeliveryType;

  /// No description provided for @pleaseSelectaDepot.
  ///
  /// In en, this message translates to:
  /// **'Please select a Depot'**
  String get pleaseSelectaDepot;

  /// No description provided for @pleaseSelectaGPL.
  ///
  /// In en, this message translates to:
  /// **'Please select a GPL'**
  String get pleaseSelectaGPL;

  /// No description provided for @pleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get pleaseTryAgain;

  /// No description provided for @pleaseTryAnotherVehicle.
  ///
  /// In en, this message translates to:
  /// **'Please try another vehicle.'**
  String get pleaseTryAnotherVehicle;

  /// No description provided for @pleaseUseALargerScreenToAccessThisPage.
  ///
  /// In en, this message translates to:
  /// **'Please use a larger screen to access this page'**
  String get pleaseUseALargerScreenToAccessThisPage;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait'**
  String get pleaseWait;

  /// No description provided for @pleaseWaitSavingAccountDetails.
  ///
  /// In en, this message translates to:
  /// **'Please Wait - Saving Account Details'**
  String get pleaseWaitSavingAccountDetails;

  /// No description provided for @pleaseWaitSavingChanges.
  ///
  /// In en, this message translates to:
  /// **'Please Wait - Saving Changes'**
  String get pleaseWaitSavingChanges;

  /// No description provided for @plumber.
  ///
  /// In en, this message translates to:
  /// **'Plumber'**
  String get plumber;

  /// No description provided for @pm.
  ///
  /// In en, this message translates to:
  /// **'pm'**
  String get pm;

  /// No description provided for @portalAccess.
  ///
  /// In en, this message translates to:
  /// **'Portal Access'**
  String get portalAccess;

  /// No description provided for @portalUrlMissing.
  ///
  /// In en, this message translates to:
  /// **'Portal url missing e.g. https://portal-dev.emrgroup.com'**
  String get portalUrlMissing;

  /// No description provided for @portalUrlWithExample.
  ///
  /// In en, this message translates to:
  /// **'Portal URL (e.g. https://portal-dev.emrgroup.com)'**
  String get portalUrlWithExample;

  /// No description provided for @positionQrCode.
  ///
  /// In en, this message translates to:
  /// **'Position QR code within the frame'**
  String get positionQrCode;

  /// No description provided for @positive.
  ///
  /// In en, this message translates to:
  /// **'Positive'**
  String get positive;

  /// No description provided for @possibleVersionMismatchCheckPostingDataAndTicketSyncLogs.
  ///
  /// In en, this message translates to:
  /// **'Possible version mismatch with older system. Check PostingDataCheckFunction and RavenTicketToTradeSync logs in Azure'**
  String get possibleVersionMismatchCheckPostingDataAndTicketSyncLogs;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @postCode.
  ///
  /// In en, this message translates to:
  /// **'Post Code'**
  String get postCode;

  /// No description provided for @postalOrZipCode.
  ///
  /// In en, this message translates to:
  /// **'Postal / Zip Code'**
  String get postalOrZipCode;

  /// No description provided for @posted.
  ///
  /// In en, this message translates to:
  /// **'Posted'**
  String get posted;

  /// No description provided for @postingStatus.
  ///
  /// In en, this message translates to:
  /// **'Posting Status: {status}'**
  String postingStatus(Object status);

  /// No description provided for @preAssessed.
  ///
  /// In en, this message translates to:
  /// **'Pre-Assessed'**
  String get preAssessed;

  /// No description provided for @preCats.
  ///
  /// In en, this message translates to:
  /// **'Pre Cats'**
  String get preCats;

  /// No description provided for @preInvoice.
  ///
  /// In en, this message translates to:
  /// **'Pre Invoice'**
  String get preInvoice;

  /// No description provided for @prePayCards.
  ///
  /// In en, this message translates to:
  /// **'Prepay Cards'**
  String get prePayCards;

  /// No description provided for @precisionError.
  ///
  /// In en, this message translates to:
  /// **'Precision should be in range 0 and 1'**
  String get precisionError;

  /// No description provided for @preferedSite.
  ///
  /// In en, this message translates to:
  /// **'Prefered site'**
  String get preferedSite;

  /// No description provided for @preferenceErrMsg.
  ///
  /// In en, this message translates to:
  /// **'Contact preferences could not be updated'**
  String get preferenceErrMsg;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @preferencesSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Preferences Saved Successfully'**
  String get preferencesSavedSuccessfully;

  /// No description provided for @preferredDevicesForYard.
  ///
  /// In en, this message translates to:
  /// **'Preferred devices for {YardCode}'**
  String preferredDevicesForYard(Object YardCode);

  /// No description provided for @preferredLanguag.
  ///
  /// In en, this message translates to:
  /// **'Preferred languag'**
  String get preferredLanguag;

  /// No description provided for @preferredPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Preferred Payment Method'**
  String get preferredPaymentMethod;

  /// No description provided for @preferredYard.
  ///
  /// In en, this message translates to:
  /// **'Preferred Yard'**
  String get preferredYard;

  /// No description provided for @prefix.
  ///
  /// In en, this message translates to:
  /// **'Prefix'**
  String get prefix;

  /// No description provided for @premisesCode.
  ///
  /// In en, this message translates to:
  /// **'Premises Code'**
  String get premisesCode;

  /// No description provided for @premisesCodeValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the premises code'**
  String get premisesCodeValidationText;

  /// No description provided for @prepayCardDeleteMsg.
  ///
  /// In en, this message translates to:
  /// **'Prepayment card deleted successfully'**
  String get prepayCardDeleteMsg;

  /// No description provided for @prepayCardDetails.
  ///
  /// In en, this message translates to:
  /// **'Prepay Card Details'**
  String get prepayCardDetails;

  /// No description provided for @prepayCardFormatMsg.
  ///
  /// In en, this message translates to:
  /// **'Format must be like: S 12324'**
  String get prepayCardFormatMsg;

  /// No description provided for @prepaymentCard.
  ///
  /// In en, this message translates to:
  /// **'Pre-payment Card'**
  String get prepaymentCard;

  /// No description provided for @prepaymentCardNotFound.
  ///
  /// In en, this message translates to:
  /// **'Prepayment card not found.'**
  String get prepaymentCardNotFound;

  /// No description provided for @presentList.
  ///
  /// In en, this message translates to:
  /// **'Present List'**
  String get presentList;

  /// No description provided for @previewButtonText.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get previewButtonText;

  /// No description provided for @previewDocument.
  ///
  /// In en, this message translates to:
  /// **'Preview Document'**
  String get previewDocument;

  /// No description provided for @previewForm.
  ///
  /// In en, this message translates to:
  /// **'Preview Form'**
  String get previewForm;

  /// No description provided for @previewModeLabel.
  ///
  /// In en, this message translates to:
  /// **'Preview Mode'**
  String get previewModeLabel;

  /// No description provided for @previewTemplate.
  ///
  /// In en, this message translates to:
  /// **'Preview Template'**
  String get previewTemplate;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @previousIssue.
  ///
  /// In en, this message translates to:
  /// **'Previous Issue'**
  String get previousIssue;

  /// No description provided for @previousWeekPlans.
  ///
  /// In en, this message translates to:
  /// **'Previous Week\'s Plans'**
  String get previousWeekPlans;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @priceAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Price Adjustment'**
  String get priceAdjustment;

  /// No description provided for @priceChangesRestricted.
  ///
  /// In en, this message translates to:
  /// **'Price Changes Restricted'**
  String get priceChangesRestricted;

  /// No description provided for @priceFetchFailed.
  ///
  /// In en, this message translates to:
  /// **'Not able to fetch price for selected product'**
  String get priceFetchFailed;

  /// No description provided for @priceList.
  ///
  /// In en, this message translates to:
  /// **'Price List'**
  String get priceList;

  /// No description provided for @priceListAbbr.
  ///
  /// In en, this message translates to:
  /// **'PL'**
  String get priceListAbbr;

  /// No description provided for @priceListConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Price List Confirmed'**
  String get priceListConfirmed;

  /// No description provided for @priceListDetails.
  ///
  /// In en, this message translates to:
  /// **'Price List Details'**
  String get priceListDetails;

  /// No description provided for @priceListSentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Price list sent successfully.'**
  String get priceListSentSuccess;

  /// No description provided for @priceType.
  ///
  /// In en, this message translates to:
  /// **'Price Type'**
  String get priceType;

  /// No description provided for @priced.
  ///
  /// In en, this message translates to:
  /// **'Priced'**
  String get priced;

  /// No description provided for @pricelists.
  ///
  /// In en, this message translates to:
  /// **'Price Lists'**
  String get pricelists;

  /// No description provided for @prices.
  ///
  /// In en, this message translates to:
  /// **'Prices'**
  String get prices;

  /// No description provided for @pricing.
  ///
  /// In en, this message translates to:
  /// **'Pricing'**
  String get pricing;

  /// No description provided for @pricingBasis.
  ///
  /// In en, this message translates to:
  /// **'Pricing Basis'**
  String get pricingBasis;

  /// No description provided for @pricingBusinessAccount.
  ///
  /// In en, this message translates to:
  /// **'Pricing Business Account'**
  String get pricingBusinessAccount;

  /// No description provided for @pricingInterDepot.
  ///
  /// In en, this message translates to:
  /// **'Pricing Inter Depot'**
  String get pricingInterDepot;

  /// No description provided for @pricingMethod.
  ///
  /// In en, this message translates to:
  /// **'Pricing method'**
  String get pricingMethod;

  /// No description provided for @pricingRetailAccount.
  ///
  /// In en, this message translates to:
  /// **'Pricing Retail Account'**
  String get pricingRetailAccount;

  /// No description provided for @primaryContact.
  ///
  /// In en, this message translates to:
  /// **'Primary Contact'**
  String get primaryContact;

  /// No description provided for @primaryContactEmail.
  ///
  /// In en, this message translates to:
  /// **'Primary Contact Email'**
  String get primaryContactEmail;

  /// No description provided for @primaryContactName.
  ///
  /// In en, this message translates to:
  /// **'Primary Contact Name'**
  String get primaryContactName;

  /// No description provided for @primaryContactTel.
  ///
  /// In en, this message translates to:
  /// **'Primary Contact Tel'**
  String get primaryContactTel;

  /// No description provided for @primaryManager.
  ///
  /// In en, this message translates to:
  /// **'Primary Manager'**
  String get primaryManager;

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @printAtmQrCode.
  ///
  /// In en, this message translates to:
  /// **'Print ATM QR Code'**
  String get printAtmQrCode;

  /// No description provided for @printCheckWeight.
  ///
  /// In en, this message translates to:
  /// **'Print Check Weight'**
  String get printCheckWeight;

  /// No description provided for @printContainerLabel.
  ///
  /// In en, this message translates to:
  /// **'Print Container Label'**
  String get printContainerLabel;

  /// No description provided for @printError.
  ///
  /// In en, this message translates to:
  /// **'Printing label failed. Please try again.'**
  String get printError;

  /// No description provided for @printForTicketDirections.
  ///
  /// In en, this message translates to:
  /// **'Print for ticket direction(s)'**
  String get printForTicketDirections;

  /// No description provided for @printLabels.
  ///
  /// In en, this message translates to:
  /// **'Print Labels'**
  String get printLabels;

  /// No description provided for @printRemittance.
  ///
  /// In en, this message translates to:
  /// **'Print Remittance'**
  String get printRemittance;

  /// No description provided for @printTicketComments.
  ///
  /// In en, this message translates to:
  /// **'Print Ticket Comments'**
  String get printTicketComments;

  /// No description provided for @printerName.
  ///
  /// In en, this message translates to:
  /// **'Printer name'**
  String get printerName;

  /// No description provided for @printerUrl.
  ///
  /// In en, this message translates to:
  /// **'Printer URL'**
  String get printerUrl;

  /// No description provided for @printing.
  ///
  /// In en, this message translates to:
  /// **'Printing'**
  String get printing;

  /// No description provided for @priorityLabel.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get priorityLabel;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyPolicy1.
  ///
  /// In en, this message translates to:
  /// **'Want to learn more about how we handle your data? Our '**
  String get privacyPolicy1;

  /// No description provided for @privacyPolicy2.
  ///
  /// In en, this message translates to:
  /// **' is available online.'**
  String get privacyPolicy2;

  /// No description provided for @probeMeasurementResults.
  ///
  /// In en, this message translates to:
  /// **'Probe Measurement Results'**
  String get probeMeasurementResults;

  /// No description provided for @probeToleranceCheckResults.
  ///
  /// In en, this message translates to:
  /// **'Probe Tolerance Checks'**
  String get probeToleranceCheckResults;

  /// No description provided for @probeVisualInspection.
  ///
  /// In en, this message translates to:
  /// **'Probe Visual Inspection'**
  String get probeVisualInspection;

  /// No description provided for @proceedWithLogin.
  ///
  /// In en, this message translates to:
  /// **'Proceed with Login '**
  String get proceedWithLogin;

  /// No description provided for @process.
  ///
  /// In en, this message translates to:
  /// **'Process'**
  String get process;

  /// No description provided for @processGivingRiseToTheWaste.
  ///
  /// In en, this message translates to:
  /// **'Process giving rise to the waste'**
  String get processGivingRiseToTheWaste;

  /// No description provided for @processStage.
  ///
  /// In en, this message translates to:
  /// **'Process Stage'**
  String get processStage;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @productAndDesc.
  ///
  /// In en, this message translates to:
  /// **'Product and Desc.'**
  String get productAndDesc;

  /// No description provided for @productAndDescription.
  ///
  /// In en, this message translates to:
  /// **'Product & Description'**
  String get productAndDescription;

  /// No description provided for @productClass.
  ///
  /// In en, this message translates to:
  /// **'Product Class'**
  String get productClass;

  /// No description provided for @productCode.
  ///
  /// In en, this message translates to:
  /// **'Product Code'**
  String get productCode;

  /// No description provided for @productEwc.
  ///
  /// In en, this message translates to:
  /// **'Product EWC'**
  String get productEwc;

  /// No description provided for @productEwcAlreadyExist.
  ///
  /// In en, this message translates to:
  /// **'An EWC entry already exists for this product.'**
  String get productEwcAlreadyExist;

  /// No description provided for @productEwcNotFound.
  ///
  /// In en, this message translates to:
  /// **'Product EWC not found.'**
  String get productEwcNotFound;

  /// No description provided for @productFamily.
  ///
  /// In en, this message translates to:
  /// **'Product Family'**
  String get productFamily;

  /// No description provided for @productInfo.
  ///
  /// In en, this message translates to:
  /// **'Product Info'**
  String get productInfo;

  /// No description provided for @productLine.
  ///
  /// In en, this message translates to:
  /// **'Product Line'**
  String get productLine;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productName;

  /// No description provided for @productNotSelected.
  ///
  /// In en, this message translates to:
  /// **'Product is not selected'**
  String get productNotSelected;

  /// No description provided for @productType.
  ///
  /// In en, this message translates to:
  /// **'Product Type'**
  String get productType;

  /// No description provided for @production.
  ///
  /// In en, this message translates to:
  /// **'Production'**
  String get production;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @profileWeight.
  ///
  /// In en, this message translates to:
  /// **'Profile Weight'**
  String get profileWeight;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @progressBarColor.
  ///
  /// In en, this message translates to:
  /// **'Progress bar color'**
  String get progressBarColor;

  /// No description provided for @projectDetails.
  ///
  /// In en, this message translates to:
  /// **'Project Details'**
  String get projectDetails;

  /// No description provided for @projectId.
  ///
  /// In en, this message translates to:
  /// **'Project Id'**
  String get projectId;

  /// No description provided for @projectName.
  ///
  /// In en, this message translates to:
  /// **'Project Name'**
  String get projectName;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @proofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'Proof of Address'**
  String get proofOfAddress;

  /// No description provided for @proofOfId.
  ///
  /// In en, this message translates to:
  /// **'Proof of Id'**
  String get proofOfId;

  /// No description provided for @proofOfIdentity.
  ///
  /// In en, this message translates to:
  /// **'Proof of Identity'**
  String get proofOfIdentity;

  /// No description provided for @proofOfOwnership.
  ///
  /// In en, this message translates to:
  /// **'Proof of Ownership'**
  String get proofOfOwnership;

  /// No description provided for @propertyName.
  ///
  /// In en, this message translates to:
  /// **'Property Name'**
  String get propertyName;

  /// No description provided for @prototype.
  ///
  /// In en, this message translates to:
  /// **'Prototype'**
  String get prototype;

  /// No description provided for @provenanceType.
  ///
  /// In en, this message translates to:
  /// **'Provenance Type'**
  String get provenanceType;

  /// No description provided for @provideAWeightForThisLot.
  ///
  /// In en, this message translates to:
  /// **'Provide weight for this lot'**
  String get provideAWeightForThisLot;

  /// No description provided for @provisionalRate.
  ///
  /// In en, this message translates to:
  /// **'Provisional Rate'**
  String get provisionalRate;

  /// No description provided for @psnop.
  ///
  /// In en, this message translates to:
  /// **'PS & OP Planning'**
  String get psnop;

  /// No description provided for @psnopBookTransport.
  ///
  /// In en, this message translates to:
  /// **'Book Transport'**
  String get psnopBookTransport;

  /// No description provided for @psnopClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get psnopClear;

  /// No description provided for @psnopClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get psnopClose;

  /// No description provided for @psnopContractNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find contract'**
  String get psnopContractNotFoundMessage;

  /// No description provided for @psnopContractTitle.
  ///
  /// In en, this message translates to:
  /// **'Contract'**
  String get psnopContractTitle;

  /// No description provided for @psnopDepotMissingSelectionMessage.
  ///
  /// In en, this message translates to:
  /// **'Please select a depot'**
  String get psnopDepotMissingSelectionMessage;

  /// No description provided for @psnopDepotNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find depot'**
  String get psnopDepotNotFoundMessage;

  /// No description provided for @psnopDepotPosition.
  ///
  /// In en, this message translates to:
  /// **'Depot Position'**
  String get psnopDepotPosition;

  /// No description provided for @psnopDepotPositionNotFound.
  ///
  /// In en, this message translates to:
  /// **'No depot position matching the search parameters found.'**
  String get psnopDepotPositionNotFound;

  /// No description provided for @psnopDepotRegionMissingSelectionMessage.
  ///
  /// In en, this message translates to:
  /// **'Please select a depot region'**
  String get psnopDepotRegionMissingSelectionMessage;

  /// No description provided for @psnopDepotRegionNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find depot region'**
  String get psnopDepotRegionNotFoundMessage;

  /// No description provided for @psnopDepotRegionTitle.
  ///
  /// In en, this message translates to:
  /// **'Depot Region'**
  String get psnopDepotRegionTitle;

  /// No description provided for @psnopDepotTitle.
  ///
  /// In en, this message translates to:
  /// **'Depot'**
  String get psnopDepotTitle;

  /// No description provided for @psnopDestinationNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find destination'**
  String get psnopDestinationNotFoundMessage;

  /// No description provided for @psnopDestinationTitle.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get psnopDestinationTitle;

  /// No description provided for @psnopDueDates.
  ///
  /// In en, this message translates to:
  /// **'Due Dates'**
  String get psnopDueDates;

  /// No description provided for @psnopErrorOccurredMessage.
  ///
  /// In en, this message translates to:
  /// **'An error has occurred. Please try again later'**
  String get psnopErrorOccurredMessage;

  /// No description provided for @psnopExportRequested.
  ///
  /// In en, this message translates to:
  /// **'Export requested... please wait'**
  String get psnopExportRequested;

  /// No description provided for @psnopFailedToGetDepotPositions.
  ///
  /// In en, this message translates to:
  /// **'Failed to get depot positions with the given search parameters'**
  String get psnopFailedToGetDepotPositions;

  /// No description provided for @psnopFailedToGetInstructionsToMove.
  ///
  /// In en, this message translates to:
  /// **'Failed to get instructions to move with the given search parameters'**
  String get psnopFailedToGetInstructionsToMove;

  /// No description provided for @psnopFourWeekTitle.
  ///
  /// In en, this message translates to:
  /// **'4 Weeks'**
  String get psnopFourWeekTitle;

  /// No description provided for @psnopGradeGroupNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find grade group'**
  String get psnopGradeGroupNotFoundMessage;

  /// No description provided for @psnopGradeGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'Grade Group'**
  String get psnopGradeGroupTitle;

  /// No description provided for @psnopGradeNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find grade'**
  String get psnopGradeNotFoundMessage;

  /// No description provided for @psnopGradeTitle.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get psnopGradeTitle;

  /// No description provided for @psnopGradeTypeNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find grade type'**
  String get psnopGradeTypeNotFoundMessage;

  /// No description provided for @psnopGradeTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'Grade Type'**
  String get psnopGradeTypeTitle;

  /// No description provided for @psnopIgnoreZeroHeapsTitle.
  ///
  /// In en, this message translates to:
  /// **'Ignore zero heaps'**
  String get psnopIgnoreZeroHeapsTitle;

  /// No description provided for @psnopIndividualDepots.
  ///
  /// In en, this message translates to:
  /// **'Individual Depots'**
  String get psnopIndividualDepots;

  /// No description provided for @psnopInstructionsToMove.
  ///
  /// In en, this message translates to:
  /// **'Instructions to move'**
  String get psnopInstructionsToMove;

  /// No description provided for @psnopInstructionsToMoveNotFound.
  ///
  /// In en, this message translates to:
  /// **'No instructions to move matching the search parameters found.'**
  String get psnopInstructionsToMoveNotFound;

  /// No description provided for @psnopMainMenuDepotPosition.
  ///
  /// In en, this message translates to:
  /// **'Depot Position'**
  String get psnopMainMenuDepotPosition;

  /// No description provided for @psnopMainMenuDepotPositionShowHideSections.
  ///
  /// In en, this message translates to:
  /// **'Show / Hide Sections'**
  String get psnopMainMenuDepotPositionShowHideSections;

  /// No description provided for @psnopMainMenuExportExcel.
  ///
  /// In en, this message translates to:
  /// **'Export to Excel'**
  String get psnopMainMenuExportExcel;

  /// No description provided for @psnopMainMenuExportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export to PDF'**
  String get psnopMainMenuExportPdf;

  /// No description provided for @psnopMainMenuTrade2.
  ///
  /// In en, this message translates to:
  /// **'Trade 2'**
  String get psnopMainMenuTrade2;

  /// No description provided for @psnopMainMenuTrade2HeapManagement.
  ///
  /// In en, this message translates to:
  /// **'Heap Management'**
  String get psnopMainMenuTrade2HeapManagement;

  /// No description provided for @psnopMainMenuTrade2ProductionEvent.
  ///
  /// In en, this message translates to:
  /// **'Production Event'**
  String get psnopMainMenuTrade2ProductionEvent;

  /// No description provided for @psnopMainMenuTrade2TicketSearch.
  ///
  /// In en, this message translates to:
  /// **'Ticket Search'**
  String get psnopMainMenuTrade2TicketSearch;

  /// No description provided for @psnopMainMenuYardManagement.
  ///
  /// In en, this message translates to:
  /// **'Yard Management'**
  String get psnopMainMenuYardManagement;

  /// No description provided for @psnopMainMenuYardManagementAllocations.
  ///
  /// In en, this message translates to:
  /// **'Allocations'**
  String get psnopMainMenuYardManagementAllocations;

  /// No description provided for @psnopMainMenuYardManagementLiveLoads.
  ///
  /// In en, this message translates to:
  /// **'Live Loads'**
  String get psnopMainMenuYardManagementLiveLoads;

  /// No description provided for @psnopMainMenuYardManagementRequests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get psnopMainMenuYardManagementRequests;

  /// No description provided for @psnopMainMenuYardManagementRouteToMarket.
  ///
  /// In en, this message translates to:
  /// **'Route to Market'**
  String get psnopMainMenuYardManagementRouteToMarket;

  /// No description provided for @psnopMainMenuYardManagementTransportPlan.
  ///
  /// In en, this message translates to:
  /// **'Transport Plan'**
  String get psnopMainMenuYardManagementTransportPlan;

  /// No description provided for @psnopMovementTypeDirectSales.
  ///
  /// In en, this message translates to:
  /// **'Direct Sales'**
  String get psnopMovementTypeDirectSales;

  /// No description provided for @psnopMovementTypeInstructionsToMove.
  ///
  /// In en, this message translates to:
  /// **'Instructions To Move'**
  String get psnopMovementTypeInstructionsToMove;

  /// No description provided for @psnopMovementTypeNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find movement type'**
  String get psnopMovementTypeNotFoundMessage;

  /// No description provided for @psnopMovementTypeRouteToMarket.
  ///
  /// In en, this message translates to:
  /// **'Route To Market'**
  String get psnopMovementTypeRouteToMarket;

  /// No description provided for @psnopMovementTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'Movement Type'**
  String get psnopMovementTypeTitle;

  /// No description provided for @psnopMulti.
  ///
  /// In en, this message translates to:
  /// **'Multi'**
  String get psnopMulti;

  /// No description provided for @psnopNegativeHeapCalculatedAsZero.
  ///
  /// In en, this message translates to:
  /// **'Negative heap calculated as zero'**
  String get psnopNegativeHeapCalculatedAsZero;

  /// No description provided for @psnopNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get psnopNo;

  /// No description provided for @psnopNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get psnopNone;

  /// No description provided for @psnopOneWeekTitle.
  ///
  /// In en, this message translates to:
  /// **'1 Week'**
  String get psnopOneWeekTitle;

  /// No description provided for @psnopPartyNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find party'**
  String get psnopPartyNotFoundMessage;

  /// No description provided for @psnopPartyTitle.
  ///
  /// In en, this message translates to:
  /// **'Party'**
  String get psnopPartyTitle;

  /// No description provided for @psnopPlannedMovements.
  ///
  /// In en, this message translates to:
  /// **'Planned Movements'**
  String get psnopPlannedMovements;

  /// No description provided for @psnopPlannedMovementsAddNoOfLoads.
  ///
  /// In en, this message translates to:
  /// **'Please add number of loads'**
  String get psnopPlannedMovementsAddNoOfLoads;

  /// No description provided for @psnopPlannedMovementsAddRouteToMarket.
  ///
  /// In en, this message translates to:
  /// **'Add Route To Market / Ad-Hoc Movement'**
  String get psnopPlannedMovementsAddRouteToMarket;

  /// No description provided for @psnopPlannedMovementsAddWeightPerLoad.
  ///
  /// In en, this message translates to:
  /// **'Please add weight per load'**
  String get psnopPlannedMovementsAddWeightPerLoad;

  /// No description provided for @psnopPlannedMovementsChangeSelectedDatesButton.
  ///
  /// In en, this message translates to:
  /// **'Change Selected Dates'**
  String get psnopPlannedMovementsChangeSelectedDatesButton;

  /// No description provided for @psnopPlannedMovementsDestinationDepot.
  ///
  /// In en, this message translates to:
  /// **'Destination Depot'**
  String get psnopPlannedMovementsDestinationDepot;

  /// No description provided for @psnopPlannedMovementsMovementDate.
  ///
  /// In en, this message translates to:
  /// **'Movement Date'**
  String get psnopPlannedMovementsMovementDate;

  /// No description provided for @psnopPlannedMovementsNotFound.
  ///
  /// In en, this message translates to:
  /// **'No planned movements matching the search parameters found.'**
  String get psnopPlannedMovementsNotFound;

  /// No description provided for @psnopPlannedMovementsNumberOfLoads.
  ///
  /// In en, this message translates to:
  /// **'Number of Loads'**
  String get psnopPlannedMovementsNumberOfLoads;

  /// No description provided for @psnopPlannedMovementsOriginDepot.
  ///
  /// In en, this message translates to:
  /// **'Origin Depot'**
  String get psnopPlannedMovementsOriginDepot;

  /// No description provided for @psnopPlannedMovementsRemainingWeight.
  ///
  /// In en, this message translates to:
  /// **'Remaining Weight'**
  String get psnopPlannedMovementsRemainingWeight;

  /// No description provided for @psnopPlannedMovementsRequestedDate.
  ///
  /// In en, this message translates to:
  /// **'Requested Date'**
  String get psnopPlannedMovementsRequestedDate;

  /// No description provided for @psnopPlannedMovementsRequestedDateUpdateFailure.
  ///
  /// In en, this message translates to:
  /// **'Requested Date(s) could not be updated.'**
  String get psnopPlannedMovementsRequestedDateUpdateFailure;

  /// No description provided for @psnopPlannedMovementsRequestedDateUpdateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Requested Date(s) updated successfully.'**
  String get psnopPlannedMovementsRequestedDateUpdateSuccess;

  /// No description provided for @psnopPlannedMovementsRequiringTransport.
  ///
  /// In en, this message translates to:
  /// **'Planned Movements Requiring Transport'**
  String get psnopPlannedMovementsRequiringTransport;

  /// No description provided for @psnopPlannedMovementsRouteToMarketFailure.
  ///
  /// In en, this message translates to:
  /// **'Failed to create Route To Market / Ad-Hoc movement.'**
  String get psnopPlannedMovementsRouteToMarketFailure;

  /// No description provided for @psnopPlannedMovementsRouteToMarketSuccess.
  ///
  /// In en, this message translates to:
  /// **'Route To Market / Ad-Hoc movement created successfully.'**
  String get psnopPlannedMovementsRouteToMarketSuccess;

  /// No description provided for @psnopPlannedMovementsSelectMovementDate.
  ///
  /// In en, this message translates to:
  /// **'Please select a movement date'**
  String get psnopPlannedMovementsSelectMovementDate;

  /// No description provided for @psnopPlannedMovementsSubmitTransportFailure.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit Transport Request(s).'**
  String get psnopPlannedMovementsSubmitTransportFailure;

  /// No description provided for @psnopPlannedMovementsSubmitTransportRequestsButton.
  ///
  /// In en, this message translates to:
  /// **'Submit Transport Requests'**
  String get psnopPlannedMovementsSubmitTransportRequestsButton;

  /// No description provided for @psnopPlannedMovementsSubmitTransportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Transport Request(s) submitted successfully.'**
  String get psnopPlannedMovementsSubmitTransportSuccess;

  /// No description provided for @psnopPlannedMovementsSubmitTransportValidation.
  ///
  /// In en, this message translates to:
  /// **'Requested Date must be selected before submitting transport request.'**
  String get psnopPlannedMovementsSubmitTransportValidation;

  /// No description provided for @psnopPlannedMovementsTotalWeight.
  ///
  /// In en, this message translates to:
  /// **'Total Weight'**
  String get psnopPlannedMovementsTotalWeight;

  /// No description provided for @psnopPlannedMovementsUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get psnopPlannedMovementsUnit;

  /// No description provided for @psnopPlannedMovementsWeightPerLoad.
  ///
  /// In en, this message translates to:
  /// **'Weight per Load'**
  String get psnopPlannedMovementsWeightPerLoad;

  /// No description provided for @psnopProceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get psnopProceed;

  /// No description provided for @psnopSearchText.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get psnopSearchText;

  /// No description provided for @psnopTableHeaderComments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get psnopTableHeaderComments;

  /// No description provided for @psnopTableHeaderContract.
  ///
  /// In en, this message translates to:
  /// **'Contract'**
  String get psnopTableHeaderContract;

  /// No description provided for @psnopTableHeaderDestination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get psnopTableHeaderDestination;

  /// No description provided for @psnopTableHeaderDirectSales.
  ///
  /// In en, this message translates to:
  /// **'Direct Sales'**
  String get psnopTableHeaderDirectSales;

  /// No description provided for @psnopTableHeaderDirection.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get psnopTableHeaderDirection;

  /// No description provided for @psnopTableHeaderDueBy.
  ///
  /// In en, this message translates to:
  /// **'Due By'**
  String get psnopTableHeaderDueBy;

  /// No description provided for @psnopTableHeaderDueFrom.
  ///
  /// In en, this message translates to:
  /// **'Due From'**
  String get psnopTableHeaderDueFrom;

  /// No description provided for @psnopTableHeaderForecast.
  ///
  /// In en, this message translates to:
  /// **'Forecast'**
  String get psnopTableHeaderForecast;

  /// No description provided for @psnopTableHeaderGrade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get psnopTableHeaderGrade;

  /// No description provided for @psnopTableHeaderHeap.
  ///
  /// In en, this message translates to:
  /// **'Heap'**
  String get psnopTableHeaderHeap;

  /// No description provided for @psnopTableHeaderIncoming.
  ///
  /// In en, this message translates to:
  /// **'Incoming'**
  String get psnopTableHeaderIncoming;

  /// No description provided for @psnopTableHeaderInstructionsToMove.
  ///
  /// In en, this message translates to:
  /// **'Instructions To Move'**
  String get psnopTableHeaderInstructionsToMove;

  /// No description provided for @psnopTableHeaderLine.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get psnopTableHeaderLine;

  /// No description provided for @psnopTableHeaderLoads.
  ///
  /// In en, this message translates to:
  /// **'Loads'**
  String get psnopTableHeaderLoads;

  /// No description provided for @psnopTableHeaderMovements.
  ///
  /// In en, this message translates to:
  /// **'Movements'**
  String get psnopTableHeaderMovements;

  /// No description provided for @psnopTableHeaderNet.
  ///
  /// In en, this message translates to:
  /// **'Net'**
  String get psnopTableHeaderNet;

  /// No description provided for @psnopTableHeaderOnHold.
  ///
  /// In en, this message translates to:
  /// **'On Hold'**
  String get psnopTableHeaderOnHold;

  /// No description provided for @psnopTableHeaderParty.
  ///
  /// In en, this message translates to:
  /// **'Party'**
  String get psnopTableHeaderParty;

  /// No description provided for @psnopTableHeaderPartyName.
  ///
  /// In en, this message translates to:
  /// **'Party Name'**
  String get psnopTableHeaderPartyName;

  /// No description provided for @psnopTableHeaderPlanning.
  ///
  /// In en, this message translates to:
  /// **'Planning'**
  String get psnopTableHeaderPlanning;

  /// No description provided for @psnopTableHeaderPriceType.
  ///
  /// In en, this message translates to:
  /// **'Price Type'**
  String get psnopTableHeaderPriceType;

  /// No description provided for @psnopTableHeaderPriority.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get psnopTableHeaderPriority;

  /// No description provided for @psnopTableHeaderProvisionalRate.
  ///
  /// In en, this message translates to:
  /// **'Prov Rate'**
  String get psnopTableHeaderProvisionalRate;

  /// No description provided for @psnopTableHeaderProvisionalValue.
  ///
  /// In en, this message translates to:
  /// **'Prov Value'**
  String get psnopTableHeaderProvisionalValue;

  /// No description provided for @psnopTableHeaderProvisionalWeight.
  ///
  /// In en, this message translates to:
  /// **'Prov Weight'**
  String get psnopTableHeaderProvisionalWeight;

  /// No description provided for @psnopTableHeaderRef.
  ///
  /// In en, this message translates to:
  /// **'Ref'**
  String get psnopTableHeaderRef;

  /// No description provided for @psnopTableHeaderRequestedDate.
  ///
  /// In en, this message translates to:
  /// **'Requested Date'**
  String get psnopTableHeaderRequestedDate;

  /// No description provided for @psnopTableHeaderRouteToMarket.
  ///
  /// In en, this message translates to:
  /// **'Route To Market'**
  String get psnopTableHeaderRouteToMarket;

  /// No description provided for @psnopTableHeaderStock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get psnopTableHeaderStock;

  /// No description provided for @psnopTableHeaderTicketNumber.
  ///
  /// In en, this message translates to:
  /// **'Ticket No'**
  String get psnopTableHeaderTicketNumber;

  /// No description provided for @psnopTableHeaderTonnes.
  ///
  /// In en, this message translates to:
  /// **'Tonnes'**
  String get psnopTableHeaderTonnes;

  /// No description provided for @psnopTableHeaderTransport.
  ///
  /// In en, this message translates to:
  /// **'Transport'**
  String get psnopTableHeaderTransport;

  /// No description provided for @psnopTableHeaderTransportPlanId.
  ///
  /// In en, this message translates to:
  /// **'Transport Plan Id'**
  String get psnopTableHeaderTransportPlanId;

  /// No description provided for @psnopTableHeaderTransportStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get psnopTableHeaderTransportStatus;

  /// No description provided for @psnopTableHeaderType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get psnopTableHeaderType;

  /// No description provided for @psnopTableSubHeaderApprovedToSend.
  ///
  /// In en, this message translates to:
  /// **'Approved to send'**
  String get psnopTableSubHeaderApprovedToSend;

  /// No description provided for @psnopTableSubHeaderBalance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get psnopTableSubHeaderBalance;

  /// No description provided for @psnopTableSubHeaderConfirmedInterDepotInward.
  ///
  /// In en, this message translates to:
  /// **'Confirmed Inter-depot inward'**
  String get psnopTableSubHeaderConfirmedInterDepotInward;

  /// No description provided for @psnopTableSubHeaderCurrentRate.
  ///
  /// In en, this message translates to:
  /// **'Current rate per MT'**
  String get psnopTableSubHeaderCurrentRate;

  /// No description provided for @psnopTableSubHeaderCurrentWeight.
  ///
  /// In en, this message translates to:
  /// **'Current weight MT'**
  String get psnopTableSubHeaderCurrentWeight;

  /// No description provided for @psnopTableSubHeaderFixedPurchaseContracts.
  ///
  /// In en, this message translates to:
  /// **'Fixed purchase contracts'**
  String get psnopTableSubHeaderFixedPurchaseContracts;

  /// No description provided for @psnopTableSubHeaderGrade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get psnopTableSubHeaderGrade;

  /// No description provided for @psnopTableSubHeaderHeap.
  ///
  /// In en, this message translates to:
  /// **'Heap'**
  String get psnopTableSubHeaderHeap;

  /// No description provided for @psnopTableSubHeaderInterDepotReceipt.
  ///
  /// In en, this message translates to:
  /// **'Inter-depot receipt'**
  String get psnopTableSubHeaderInterDepotReceipt;

  /// No description provided for @psnopTableSubHeaderInwardUnpriced.
  ///
  /// In en, this message translates to:
  /// **'Inward unpriced'**
  String get psnopTableSubHeaderInwardUnpriced;

  /// No description provided for @psnopTableSubHeaderNeedToRequestTransport.
  ///
  /// In en, this message translates to:
  /// **'Need to request transport'**
  String get psnopTableSubHeaderNeedToRequestTransport;

  /// No description provided for @psnopTableSubHeaderNonContractPurchases.
  ///
  /// In en, this message translates to:
  /// **'Non contract purchases'**
  String get psnopTableSubHeaderNonContractPurchases;

  /// No description provided for @psnopTableSubHeaderOutwardUnpriced.
  ///
  /// In en, this message translates to:
  /// **'Outward unpriced'**
  String get psnopTableSubHeaderOutwardUnpriced;

  /// No description provided for @psnopTableSubHeaderProjectedStockOnTheGround.
  ///
  /// In en, this message translates to:
  /// **'Projected stock on the ground'**
  String get psnopTableSubHeaderProjectedStockOnTheGround;

  /// No description provided for @psnopTableSubHeaderRequestsAndReservations.
  ///
  /// In en, this message translates to:
  /// **'Requests and Reservations'**
  String get psnopTableSubHeaderRequestsAndReservations;

  /// No description provided for @psnopTableSubHeaderToolTipIncludingPricedAndUnpriced.
  ///
  /// In en, this message translates to:
  /// **'(including priced and unpriced)'**
  String get psnopTableSubHeaderToolTipIncludingPricedAndUnpriced;

  /// No description provided for @psnopTableSubHeaderTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get psnopTableSubHeaderTotal;

  /// No description provided for @psnopTableSubHeaderTotalDemand.
  ///
  /// In en, this message translates to:
  /// **'Total demand'**
  String get psnopTableSubHeaderTotalDemand;

  /// No description provided for @psnopTableSubHeaderTransportBooked.
  ///
  /// In en, this message translates to:
  /// **'Transport booked'**
  String get psnopTableSubHeaderTransportBooked;

  /// No description provided for @psnopTableSubHeaderWaitingOnTransportConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Waiting on transport confirmation'**
  String get psnopTableSubHeaderWaitingOnTransportConfirmation;

  /// No description provided for @psnopTableSubHeaderWaitingOnTruckConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Waiting on truck confirmation'**
  String get psnopTableSubHeaderWaitingOnTruckConfirmation;

  /// No description provided for @psnopTicketDirectionBoth.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get psnopTicketDirectionBoth;

  /// No description provided for @psnopTicketDirectionInwards.
  ///
  /// In en, this message translates to:
  /// **'Inwards'**
  String get psnopTicketDirectionInwards;

  /// No description provided for @psnopTicketDirectionOutwards.
  ///
  /// In en, this message translates to:
  /// **'Outwards'**
  String get psnopTicketDirectionOutwards;

  /// No description provided for @psnopTicketSummariesNotFound.
  ///
  /// In en, this message translates to:
  /// **'Could not finid ticket summaries'**
  String get psnopTicketSummariesNotFound;

  /// No description provided for @psnopTicketSummary.
  ///
  /// In en, this message translates to:
  /// **'Ticket Summary'**
  String get psnopTicketSummary;

  /// No description provided for @psnopTicketSummaryTodayDateButton.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get psnopTicketSummaryTodayDateButton;

  /// No description provided for @psnopTicketSummaryTrade2TicketSearchButton.
  ///
  /// In en, this message translates to:
  /// **'Trade 2 Ticket Search'**
  String get psnopTicketSummaryTrade2TicketSearchButton;

  /// No description provided for @psnopTicketSummaryYesterdayDateButton.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get psnopTicketSummaryYesterdayDateButton;

  /// No description provided for @psnopTrade2Access.
  ///
  /// In en, this message translates to:
  /// **'You are attempting to access Trade 2'**
  String get psnopTrade2Access;

  /// No description provided for @psnopTrade2AccessDetails.
  ///
  /// In en, this message translates to:
  /// **'Trade 2 can only be accessed on Citrix or via the EMR VPN.\n\nFor more help, please contact the IT Service Desk on +44 1925 75 5555 or IT.ServiceDesk@emrgroup.com'**
  String get psnopTrade2AccessDetails;

  /// No description provided for @psnopTransportStatusAwaitingConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Confirmation'**
  String get psnopTransportStatusAwaitingConfirmation;

  /// No description provided for @psnopTransportStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get psnopTransportStatusCancelled;

  /// No description provided for @psnopTransportStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get psnopTransportStatusCompleted;

  /// No description provided for @psnopTransportStatusConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get psnopTransportStatusConfirmed;

  /// No description provided for @psnopTransportStatusNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not find transport status'**
  String get psnopTransportStatusNotFoundMessage;

  /// No description provided for @psnopTransportStatusOngoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get psnopTransportStatusOngoing;

  /// No description provided for @psnopTransportStatusRequired.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get psnopTransportStatusRequired;

  /// No description provided for @psnopTransportStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Transport Status'**
  String get psnopTransportStatusTitle;

  /// No description provided for @psnopTwoWeekTitle.
  ///
  /// In en, this message translates to:
  /// **'2 Weeks'**
  String get psnopTwoWeekTitle;

  /// No description provided for @psnopYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get psnopYes;

  /// No description provided for @publicWeighLabel.
  ///
  /// In en, this message translates to:
  /// **'Public Weigh'**
  String get publicWeighLabel;

  /// No description provided for @publication.
  ///
  /// In en, this message translates to:
  /// **'Publication'**
  String get publication;

  /// No description provided for @publicationInformation.
  ///
  /// In en, this message translates to:
  /// **'Publication Information'**
  String get publicationInformation;

  /// No description provided for @publicationName.
  ///
  /// In en, this message translates to:
  /// **'Publication Name'**
  String get publicationName;

  /// No description provided for @publicationNotFound.
  ///
  /// In en, this message translates to:
  /// **'Publication Not Found.'**
  String get publicationNotFound;

  /// No description provided for @publications.
  ///
  /// In en, this message translates to:
  /// **'Publications'**
  String get publications;

  /// No description provided for @punch.
  ///
  /// In en, this message translates to:
  /// **'Punch'**
  String get punch;

  /// No description provided for @punches.
  ///
  /// In en, this message translates to:
  /// **'Punches in/out'**
  String get punches;

  /// No description provided for @purchase.
  ///
  /// In en, this message translates to:
  /// **'Purchase'**
  String get purchase;

  /// No description provided for @purchaseCustomer.
  ///
  /// In en, this message translates to:
  /// **'Purchase Customer'**
  String get purchaseCustomer;

  /// No description provided for @purchaseOrderNo.
  ///
  /// In en, this message translates to:
  /// **'Purchase Order No'**
  String get purchaseOrderNo;

  /// No description provided for @purchaseOrderNumber.
  ///
  /// In en, this message translates to:
  /// **'Purchase Order Number'**
  String get purchaseOrderNumber;

  /// No description provided for @purpose.
  ///
  /// In en, this message translates to:
  /// **'Purpose'**
  String get purpose;

  /// No description provided for @pushTicketToTrade.
  ///
  /// In en, this message translates to:
  /// **'Push Ticket To Trade'**
  String get pushTicketToTrade;

  /// No description provided for @qrCode.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qrCode;

  /// No description provided for @qrCodeScanner.
  ///
  /// In en, this message translates to:
  /// **'QR Code Scanner'**
  String get qrCodeScanner;

  /// No description provided for @qualityProcess.
  ///
  /// In en, this message translates to:
  /// **'Quality Process'**
  String get qualityProcess;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @quantityKg.
  ///
  /// In en, this message translates to:
  /// **'Quantity (kg)'**
  String get quantityKg;

  /// No description provided for @quantum.
  ///
  /// In en, this message translates to:
  /// **'Quantum'**
  String get quantum;

  /// No description provided for @queryLayoutExample.
  ///
  /// In en, this message translates to:
  /// **'Query Layout Example'**
  String get queryLayoutExample;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question '**
  String get question;

  /// No description provided for @questionMediaCapture.
  ///
  /// In en, this message translates to:
  /// **'Question Media Capture'**
  String get questionMediaCapture;

  /// No description provided for @queueStatus.
  ///
  /// In en, this message translates to:
  /// **'Queue Status'**
  String get queueStatus;

  /// No description provided for @queued.
  ///
  /// In en, this message translates to:
  /// **'Queued'**
  String get queued;

  /// No description provided for @quickClone.
  ///
  /// In en, this message translates to:
  /// **'Quick Clone'**
  String get quickClone;

  /// No description provided for @quickCloneJob.
  ///
  /// In en, this message translates to:
  /// **'Quick Clone Job'**
  String get quickCloneJob;

  /// No description provided for @quickQuote.
  ///
  /// In en, this message translates to:
  /// **'Quick Quote'**
  String get quickQuote;

  /// No description provided for @quickSchedule.
  ///
  /// In en, this message translates to:
  /// **'Quick Schedule'**
  String get quickSchedule;

  /// No description provided for @quickScheduleJob.
  ///
  /// In en, this message translates to:
  /// **'Quick Schedule Job'**
  String get quickScheduleJob;

  /// No description provided for @quickSchedulePlan.
  ///
  /// In en, this message translates to:
  /// **'Quick Schedule Plan'**
  String get quickSchedulePlan;

  /// No description provided for @quickTemplate.
  ///
  /// In en, this message translates to:
  /// **'Quick Template'**
  String get quickTemplate;

  /// No description provided for @quote.
  ///
  /// In en, this message translates to:
  /// **'Quote'**
  String get quote;

  /// No description provided for @quoteControl.
  ///
  /// In en, this message translates to:
  /// **'Quote Control'**
  String get quoteControl;

  /// No description provided for @quoteDetails.
  ///
  /// In en, this message translates to:
  /// **'Quote Details'**
  String get quoteDetails;

  /// No description provided for @quoteExpired.
  ///
  /// In en, this message translates to:
  /// **'Quote Expired'**
  String get quoteExpired;

  /// No description provided for @quoteMyMotor.
  ///
  /// In en, this message translates to:
  /// **'Quote My Motor'**
  String get quoteMyMotor;

  /// No description provided for @quoteNeedsToBeConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Quote needs to be confirmed'**
  String get quoteNeedsToBeConfirmed;

  /// No description provided for @quoteNumber.
  ///
  /// In en, this message translates to:
  /// **'Quote Number'**
  String get quoteNumber;

  /// No description provided for @quoteSearch.
  ///
  /// In en, this message translates to:
  /// **'Quote Search'**
  String get quoteSearch;

  /// No description provided for @quoteSource.
  ///
  /// In en, this message translates to:
  /// **'Quote Source'**
  String get quoteSource;

  /// No description provided for @quoteSummary.
  ///
  /// In en, this message translates to:
  /// **'Quote Summary'**
  String get quoteSummary;

  /// No description provided for @quoteValue.
  ///
  /// In en, this message translates to:
  /// **'Quote Value'**
  String get quoteValue;

  /// No description provided for @quotedSource.
  ///
  /// In en, this message translates to:
  /// **'Quoted Source'**
  String get quotedSource;

  /// No description provided for @quotedStatus.
  ///
  /// In en, this message translates to:
  /// **'Quoted Status'**
  String get quotedStatus;

  /// No description provided for @quotingFor.
  ///
  /// In en, this message translates to:
  /// **'Quoting For'**
  String get quotingFor;

  /// No description provided for @range.
  ///
  /// In en, this message translates to:
  /// **'{min} to {max}'**
  String range(Object max, Object min);

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @rateConverter.
  ///
  /// In en, this message translates to:
  /// **'Rate Converter'**
  String get rateConverter;

  /// No description provided for @rateMandatory.
  ///
  /// In en, this message translates to:
  /// **'Rate selection is mandatory when haulier is selected'**
  String get rateMandatory;

  /// No description provided for @rateNotValid.
  ///
  /// In en, this message translates to:
  /// **'Rate is not valid'**
  String get rateNotValid;

  /// No description provided for @ratePerUom.
  ///
  /// In en, this message translates to:
  /// **'Rate Per UOM'**
  String get ratePerUom;

  /// No description provided for @rates.
  ///
  /// In en, this message translates to:
  /// **'Rates'**
  String get rates;

  /// No description provided for @ratesAndCosts.
  ///
  /// In en, this message translates to:
  /// **'Rates & Costs'**
  String get ratesAndCosts;

  /// No description provided for @rawMaterials.
  ///
  /// In en, this message translates to:
  /// **'Raw Materials'**
  String get rawMaterials;

  /// No description provided for @reAssignButtonText.
  ///
  /// In en, this message translates to:
  /// **'Re-allocate'**
  String get reAssignButtonText;

  /// No description provided for @reAssignWithResetButtonText.
  ///
  /// In en, this message translates to:
  /// **'Re-allocate + Reset'**
  String get reAssignWithResetButtonText;

  /// No description provided for @reAssignWithResetText.
  ///
  /// In en, this message translates to:
  /// **'Re-allocate + Reset'**
  String get reAssignWithResetText;

  /// No description provided for @reEnterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'We need to validate, please re-enter your email address or'**
  String get reEnterYourEmail;

  /// No description provided for @reachedLocation.
  ///
  /// In en, this message translates to:
  /// **'Reached Location'**
  String get reachedLocation;

  /// No description provided for @readyToPay.
  ///
  /// In en, this message translates to:
  /// **'Ready to Pay'**
  String get readyToPay;

  /// No description provided for @rearVehiclePictureHeaderText.
  ///
  /// In en, this message translates to:
  /// **'Rear'**
  String get rearVehiclePictureHeaderText;

  /// No description provided for @rearrangeTrucks.
  ///
  /// In en, this message translates to:
  /// **'Rearrange Trucks'**
  String get rearrangeTrucks;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @reasonRequired.
  ///
  /// In en, this message translates to:
  /// **'*Reason is Required'**
  String get reasonRequired;

  /// No description provided for @reasons.
  ///
  /// In en, this message translates to:
  /// **'Reasons'**
  String get reasons;

  /// No description provided for @reassignContactTypeText.
  ///
  /// In en, this message translates to:
  /// **'You can reassign contact types before saving.'**
  String get reassignContactTypeText;

  /// No description provided for @recalled.
  ///
  /// In en, this message translates to:
  /// **'Recalled'**
  String get recalled;

  /// No description provided for @reccuranceDetails.
  ///
  /// In en, this message translates to:
  /// **'Recurrence Details'**
  String get reccuranceDetails;

  /// No description provided for @reccuringFrequency.
  ///
  /// In en, this message translates to:
  /// **'Recurring Frequency'**
  String get reccuringFrequency;

  /// No description provided for @receiveVehicle.
  ///
  /// In en, this message translates to:
  /// **'Receive Vehicle'**
  String get receiveVehicle;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @receivingVehicle.
  ///
  /// In en, this message translates to:
  /// **'Receiving vehicle'**
  String get receivingVehicle;

  /// No description provided for @recentJobs.
  ///
  /// In en, this message translates to:
  /// **'Recent Jobs'**
  String get recentJobs;

  /// No description provided for @reclaimProject.
  ///
  /// In en, this message translates to:
  /// **'Reclaim Project'**
  String get reclaimProject;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// No description provided for @recordInformation.
  ///
  /// In en, this message translates to:
  /// **'Record Information'**
  String get recordInformation;

  /// No description provided for @recordedOn.
  ///
  /// In en, this message translates to:
  /// **'Recorded On'**
  String get recordedOn;

  /// No description provided for @recreateFutureJobsLabel.
  ///
  /// In en, this message translates to:
  /// **'Recreate future Jobs as per new schedule'**
  String get recreateFutureJobsLabel;

  /// No description provided for @redo.
  ///
  /// In en, this message translates to:
  /// **'Redo'**
  String get redo;

  /// No description provided for @reduceCommodityRateMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter value to reduce the commodity rate'**
  String get reduceCommodityRateMsg;

  /// No description provided for @ref.
  ///
  /// In en, this message translates to:
  /// **'Ref.'**
  String get ref;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference;

  /// No description provided for @referenceExists.
  ///
  /// In en, this message translates to:
  /// **'This reference ID exists in D365'**
  String get referenceExists;

  /// No description provided for @referenceHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a reference id'**
  String get referenceHint;

  /// No description provided for @referenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get referenceLabel;

  /// No description provided for @referenceLengthValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a reference id with minimum 3 characters'**
  String get referenceLengthValidation;

  /// No description provided for @referenceValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a reference id'**
  String get referenceValidation;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @refreshButtonText.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get refreshButtonText;

  /// No description provided for @refreshPricingAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Refresh the price to complete the inspection'**
  String get refreshPricingAlertMessage;

  /// No description provided for @refreshSnapshot.
  ///
  /// In en, this message translates to:
  /// **'Refresh Snapshot'**
  String get refreshSnapshot;

  /// No description provided for @refreshSnapshotWarning.
  ///
  /// In en, this message translates to:
  /// **'Refreshing snapshots will override all existing snapshots. Do you want to continue?'**
  String get refreshSnapshotWarning;

  /// No description provided for @refreshingQuotePrice.
  ///
  /// In en, this message translates to:
  /// **'Refreshing Quote Price'**
  String get refreshingQuotePrice;

  /// No description provided for @regenerateGrades.
  ///
  /// In en, this message translates to:
  /// **'Please modify the pricing grades to accurately reflect changes made to the depot, arising point, or grades selection'**
  String get regenerateGrades;

  /// No description provided for @region.
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get region;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @registerCountryChangeNote.
  ///
  /// In en, this message translates to:
  /// **'It looks like you are registering from {countryName}. Not Right?'**
  String registerCountryChangeNote(Object countryName);

  /// No description provided for @registerHere.
  ///
  /// In en, this message translates to:
  /// **'Register Here'**
  String get registerHere;

  /// No description provided for @registerInvoice.
  ///
  /// In en, this message translates to:
  /// **'Register Invoice'**
  String get registerInvoice;

  /// No description provided for @registerMyAccount.
  ///
  /// In en, this message translates to:
  /// **'Register my account'**
  String get registerMyAccount;

  /// No description provided for @registerNew.
  ///
  /// In en, this message translates to:
  /// **'Register New'**
  String get registerNew;

  /// No description provided for @registerPopup1.
  ///
  /// In en, this message translates to:
  /// **'What will you do with this information?'**
  String get registerPopup1;

  /// No description provided for @registerPopup2.
  ///
  /// In en, this message translates to:
  /// **'Under The Scrap Metal Dealers Act 2013, we are legally required to collect ID and proof of address to confirm your identity before payment. Your email address and mobile number are used as your login ID for your customer portal.'**
  String get registerPopup2;

  /// No description provided for @registerPopup3.
  ///
  /// In en, this message translates to:
  /// **'Optionally, your email address, mobile number, and postal address can be used for sending marketing materials and special offers, but only when you have agreed to receive these messages.'**
  String get registerPopup3;

  /// No description provided for @registeredOffice.
  ///
  /// In en, this message translates to:
  /// **'Registered Office'**
  String get registeredOffice;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @rejectLocation.
  ///
  /// In en, this message translates to:
  /// **'Reject Location'**
  String get rejectLocation;

  /// No description provided for @rejectStockTake.
  ///
  /// In en, this message translates to:
  /// **'Reject Stock Take'**
  String get rejectStockTake;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @reloadResults.
  ///
  /// In en, this message translates to:
  /// **'Reload results'**
  String get reloadResults;

  /// No description provided for @reloading.
  ///
  /// In en, this message translates to:
  /// **'Reloading'**
  String get reloading;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @remainingFabrications.
  ///
  /// In en, this message translates to:
  /// **'Remaining Fabrications'**
  String get remainingFabrications;

  /// No description provided for @remainingLoads.
  ///
  /// In en, this message translates to:
  /// **'Remaining loads'**
  String get remainingLoads;

  /// No description provided for @remainingVehicleWeight.
  ///
  /// In en, this message translates to:
  /// **'Remaining Vehicle Weight'**
  String get remainingVehicleWeight;

  /// No description provided for @remark.
  ///
  /// In en, this message translates to:
  /// **'Remark: {remark}'**
  String remark(Object remark);

  /// No description provided for @remitanceCopyNotFound.
  ///
  /// In en, this message translates to:
  /// **'Remitance copy not found'**
  String get remitanceCopyNotFound;

  /// No description provided for @remittance.
  ///
  /// In en, this message translates to:
  /// **'Remittance'**
  String get remittance;

  /// No description provided for @remittanceCopy.
  ///
  /// In en, this message translates to:
  /// **'Remittance Copy'**
  String get remittanceCopy;

  /// No description provided for @remittancePrinter.
  ///
  /// In en, this message translates to:
  /// **'Remittance Printer'**
  String get remittancePrinter;

  /// No description provided for @removeButtonText.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeButtonText;

  /// No description provided for @removeCollectedTag.
  ///
  /// In en, this message translates to:
  /// **'This delete action will remove all collected tags associated with the same product and publication. Are you sure you want to continue?'**
  String get removeCollectedTag;

  /// No description provided for @removeFailedVINs.
  ///
  /// In en, this message translates to:
  /// **'Remove Failed VINs'**
  String get removeFailedVINs;

  /// No description provided for @removeFailedVRNs.
  ///
  /// In en, this message translates to:
  /// **'Removed Failed VRN\'s/VINs'**
  String get removeFailedVRNs;

  /// No description provided for @removeFromBasketConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {yardCode} - {ticketNumber} from basket?'**
  String removeFromBasketConfirmation(Object ticketNumber, Object yardCode);

  /// No description provided for @removedFabrications.
  ///
  /// In en, this message translates to:
  /// **'Removed Fabrications'**
  String get removedFabrications;

  /// No description provided for @reopenInspection.
  ///
  /// In en, this message translates to:
  /// **'Reopen Inspection'**
  String get reopenInspection;

  /// No description provided for @reopenInspectionError.
  ///
  /// In en, this message translates to:
  /// **'Error occurred when reopening vehicle for inspection'**
  String get reopenInspectionError;

  /// No description provided for @reopenInspectionSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully reopened vehicle for inspection'**
  String get reopenInspectionSuccess;

  /// No description provided for @reopeningInspection.
  ///
  /// In en, this message translates to:
  /// **'Reopening Inspection'**
  String get reopeningInspection;

  /// No description provided for @repaymentDueDate.
  ///
  /// In en, this message translates to:
  /// **'Repayment Due Date'**
  String get repaymentDueDate;

  /// No description provided for @repeatEvery.
  ///
  /// In en, this message translates to:
  /// **'Repeat Every'**
  String get repeatEvery;

  /// No description provided for @repeatEveryLabel.
  ///
  /// In en, this message translates to:
  /// **'Repeat every\n'**
  String get repeatEveryLabel;

  /// No description provided for @repeatFrequencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Repeat Frequency'**
  String get repeatFrequencyLabel;

  /// No description provided for @repeatIntervalDays.
  ///
  /// In en, this message translates to:
  /// **'Day(s)'**
  String get repeatIntervalDays;

  /// No description provided for @repeatIntervalMonths.
  ///
  /// In en, this message translates to:
  /// **'Month(s)'**
  String get repeatIntervalMonths;

  /// No description provided for @repeatIntervalWeeks.
  ///
  /// In en, this message translates to:
  /// **'Week(s)'**
  String get repeatIntervalWeeks;

  /// No description provided for @repeatIntervalYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get repeatIntervalYear;

  /// No description provided for @repeatLabel.
  ///
  /// In en, this message translates to:
  /// **'Repeat'**
  String get repeatLabel;

  /// No description provided for @repeatNDays.
  ///
  /// In en, this message translates to:
  /// **'Repeat x days'**
  String get repeatNDays;

  /// No description provided for @repeatUntil.
  ///
  /// In en, this message translates to:
  /// **'Repeat until'**
  String get repeatUntil;

  /// No description provided for @replaceCard.
  ///
  /// In en, this message translates to:
  /// **'Replace Card'**
  String get replaceCard;

  /// No description provided for @replacePrepayCard.
  ///
  /// In en, this message translates to:
  /// **'Replace Prepay Card'**
  String get replacePrepayCard;

  /// No description provided for @replaceStockTakeLocationWeight.
  ///
  /// In en, this message translates to:
  /// **'The {weightName} has already been recorded as {oldWeight}. Do you want to replace it with the new weight of {newWeight}?'**
  String replaceStockTakeLocationWeight(
    Object newWeight,
    Object oldWeight,
    Object weightName,
  );

  /// No description provided for @replayRegistration.
  ///
  /// In en, this message translates to:
  /// **'Replay Registration'**
  String get replayRegistration;

  /// No description provided for @replicateCollectedTagForYards.
  ///
  /// In en, this message translates to:
  /// **'This action will add the collected tags to all other yards that share the same product and publication.'**
  String get replicateCollectedTagForYards;

  /// No description provided for @replicationIssue.
  ///
  /// In en, this message translates to:
  /// **'Replication Issue'**
  String get replicationIssue;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @reportType.
  ///
  /// In en, this message translates to:
  /// **'Report Type'**
  String get reportType;

  /// No description provided for @reporting1099.
  ///
  /// In en, this message translates to:
  /// **'1099 Reporting'**
  String get reporting1099;

  /// No description provided for @reportingDate.
  ///
  /// In en, this message translates to:
  /// **'Reporting Date'**
  String get reportingDate;

  /// No description provided for @reportingFrequency.
  ///
  /// In en, this message translates to:
  /// **'Reporting Frequency'**
  String get reportingFrequency;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @reprice.
  ///
  /// In en, this message translates to:
  /// **'Reprice'**
  String get reprice;

  /// No description provided for @repriceTicket.
  ///
  /// In en, this message translates to:
  /// **'Reprice Ticket'**
  String get repriceTicket;

  /// No description provided for @repriceTicketConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Click Ok to Reprice Ticket'**
  String get repriceTicketConfirmation;

  /// No description provided for @repriceTicketSuccess.
  ///
  /// In en, this message translates to:
  /// **'Ticket has be repriced successfully'**
  String get repriceTicketSuccess;

  /// No description provided for @reprintLabel.
  ///
  /// In en, this message translates to:
  /// **'Re-Print Label'**
  String get reprintLabel;

  /// No description provided for @requestAuthorization.
  ///
  /// In en, this message translates to:
  /// **'Request Authorisation'**
  String get requestAuthorization;

  /// No description provided for @requestChange.
  ///
  /// In en, this message translates to:
  /// **'Request Change'**
  String get requestChange;

  /// No description provided for @requestQueuedString.
  ///
  /// In en, this message translates to:
  /// **'Your request has been queued. The data will be refreshed shortly'**
  String get requestQueuedString;

  /// No description provided for @requestSavedSuccesfully.
  ///
  /// In en, this message translates to:
  /// **'Request Saved Succesfully'**
  String get requestSavedSuccesfully;

  /// No description provided for @requestedOn.
  ///
  /// In en, this message translates to:
  /// **'Requested On'**
  String get requestedOn;

  /// No description provided for @requests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get requests;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required Field'**
  String get requiredField;

  /// No description provided for @requiredFieldsErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields'**
  String get requiredFieldsErrorMsg;

  /// No description provided for @requiresDigitalSignature.
  ///
  /// In en, this message translates to:
  /// **'Requires Digital Signature'**
  String get requiresDigitalSignature;

  /// No description provided for @rescheduleThirdPartyHaulierJobs.
  ///
  /// In en, this message translates to:
  /// **'Reschedule Third Party Haulier Jobs'**
  String get rescheduleThirdPartyHaulierJobs;

  /// No description provided for @reservedKeyWordsError.
  ///
  /// In en, this message translates to:
  /// **'The input contains system reserved keywords. Try using different words'**
  String get reservedKeyWordsError;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @resetForm.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetForm;

  /// No description provided for @resetFormConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get resetFormConfirm;

  /// No description provided for @resetFormFailed.
  ///
  /// In en, this message translates to:
  /// **'Reset form failed'**
  String get resetFormFailed;

  /// No description provided for @resetFormSuccess.
  ///
  /// In en, this message translates to:
  /// **'Reset form successful'**
  String get resetFormSuccess;

  /// No description provided for @resetFormTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetFormTitle;

  /// No description provided for @resizeWindowMessage.
  ///
  /// In en, this message translates to:
  /// **'Sorry, this view is only ready for Mobile layout, please resize your window smaller until it shows'**
  String get resizeWindowMessage;

  /// No description provided for @resolveConflicts.
  ///
  /// In en, this message translates to:
  /// **'Resolve Conflicts'**
  String get resolveConflicts;

  /// No description provided for @response.
  ///
  /// In en, this message translates to:
  /// **'Response'**
  String get response;

  /// No description provided for @responsibilities.
  ///
  /// In en, this message translates to:
  /// **'Responsibilities'**
  String get responsibilities;

  /// No description provided for @responsibility.
  ///
  /// In en, this message translates to:
  /// **'Responsibility'**
  String get responsibility;

  /// No description provided for @responsibilityDeletedMsg.
  ///
  /// In en, this message translates to:
  /// **'Responsibility deleted successfully'**
  String get responsibilityDeletedMsg;

  /// No description provided for @responsibilitySavedMsg.
  ///
  /// In en, this message translates to:
  /// **'Responsibility saved successfully'**
  String get responsibilitySavedMsg;

  /// No description provided for @restOfWorld.
  ///
  /// In en, this message translates to:
  /// **'Rest Of World'**
  String get restOfWorld;

  /// No description provided for @restartAccountRegistration.
  ///
  /// In en, this message translates to:
  /// **'Restart Account Registration'**
  String get restartAccountRegistration;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @restoreBomSuccessful.
  ///
  /// In en, this message translates to:
  /// **'The bill of materials has been restored successfully.'**
  String get restoreBomSuccessful;

  /// No description provided for @resultantPrice.
  ///
  /// In en, this message translates to:
  /// **'Resultant Price'**
  String get resultantPrice;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @resync.
  ///
  /// In en, this message translates to:
  /// **'Resync'**
  String get resync;

  /// No description provided for @resyncTicketsFromPaymentRecord.
  ///
  /// In en, this message translates to:
  /// **'Resync Tickets Stamped in Payment Record'**
  String get resyncTicketsFromPaymentRecord;

  /// No description provided for @retail.
  ///
  /// In en, this message translates to:
  /// **'Retail'**
  String get retail;

  /// No description provided for @retailAccount.
  ///
  /// In en, this message translates to:
  /// **'Retail Account'**
  String get retailAccount;

  /// No description provided for @retailPayments.
  ///
  /// In en, this message translates to:
  /// **'Retail Payments'**
  String get retailPayments;

  /// No description provided for @retainContainer.
  ///
  /// In en, this message translates to:
  /// **'Retain container'**
  String get retainContainer;

  /// No description provided for @retakePhoto.
  ///
  /// In en, this message translates to:
  /// **'Retake Photo'**
  String get retakePhoto;

  /// No description provided for @retriggerProcessor.
  ///
  /// In en, this message translates to:
  /// **'Retrigger processor'**
  String get retriggerProcessor;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @reupload.
  ///
  /// In en, this message translates to:
  /// **'Re-upload'**
  String get reupload;

  /// No description provided for @revertToDefaultCat.
  ///
  /// In en, this message translates to:
  /// **'Revert to default CAT'**
  String get revertToDefaultCat;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @reviewAssets.
  ///
  /// In en, this message translates to:
  /// **'Review Assets'**
  String get reviewAssets;

  /// No description provided for @reviewAttributes.
  ///
  /// In en, this message translates to:
  /// **'Review Attributes'**
  String get reviewAttributes;

  /// No description provided for @reviewStatus.
  ///
  /// In en, this message translates to:
  /// **'Review Status'**
  String get reviewStatus;

  /// No description provided for @reviewStocktakeConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to {action} the stock take?'**
  String reviewStocktakeConfirmation(Object action);

  /// No description provided for @right.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get right;

  /// No description provided for @rightSideQualityCheck.
  ///
  /// In en, this message translates to:
  /// **'Right Side Quality Check'**
  String get rightSideQualityCheck;

  /// No description provided for @roAdmin.
  ///
  /// In en, this message translates to:
  /// **'RO Admin'**
  String get roAdmin;

  /// No description provided for @roDriver.
  ///
  /// In en, this message translates to:
  /// **'RO Driver'**
  String get roDriver;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @roof.
  ///
  /// In en, this message translates to:
  /// **'Roof'**
  String get roof;

  /// No description provided for @ropeSeal.
  ///
  /// In en, this message translates to:
  /// **'Rope Seal'**
  String get ropeSeal;

  /// No description provided for @roundAndCollectionNumber.
  ///
  /// In en, this message translates to:
  /// **'Round and collection number'**
  String get roundAndCollectionNumber;

  /// No description provided for @roundDown.
  ///
  /// In en, this message translates to:
  /// **'Round Down'**
  String get roundDown;

  /// No description provided for @roundUp.
  ///
  /// In en, this message translates to:
  /// **'Round Up'**
  String get roundUp;

  /// No description provided for @roundingAdjustment.
  ///
  /// In en, this message translates to:
  /// **'Rounding Adjustment'**
  String get roundingAdjustment;

  /// No description provided for @roundingOnHandlingFee.
  ///
  /// In en, this message translates to:
  /// **'Rounding on Handling Fee'**
  String get roundingOnHandlingFee;

  /// No description provided for @roundingPrecision.
  ///
  /// In en, this message translates to:
  /// **'Rounding Precision'**
  String get roundingPrecision;

  /// No description provided for @roundingType.
  ///
  /// In en, this message translates to:
  /// **'Rounding Type'**
  String get roundingType;

  /// No description provided for @routeDisplayNameHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get routeDisplayNameHome;

  /// No description provided for @routeDisplayNameLogIn.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get routeDisplayNameLogIn;

  /// No description provided for @routeDisplayNameNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get routeDisplayNameNotifications;

  /// No description provided for @rowsPerPage.
  ///
  /// In en, this message translates to:
  /// **'{rows} per page'**
  String rowsPerPage(int rows);

  /// No description provided for @safety.
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get safety;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get sales;

  /// No description provided for @salesCreditTerms.
  ///
  /// In en, this message translates to:
  /// **'Sales - Credit Terms'**
  String get salesCreditTerms;

  /// No description provided for @salesInvoice.
  ///
  /// In en, this message translates to:
  /// **'Sales - Invoice'**
  String get salesInvoice;

  /// No description provided for @salesInvoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Sales Invoice Number'**
  String get salesInvoiceNumber;

  /// No description provided for @sample.
  ///
  /// In en, this message translates to:
  /// **'Sample'**
  String get sample;

  /// No description provided for @sampleStatus.
  ///
  /// In en, this message translates to:
  /// **'Sample Status'**
  String get sampleStatus;

  /// No description provided for @samplingTestingGrading.
  ///
  /// In en, this message translates to:
  /// **'Sampling, Testing and Grading'**
  String get samplingTestingGrading;

  /// No description provided for @satelliteView.
  ///
  /// In en, this message translates to:
  /// **'Satellite View'**
  String get satelliteView;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @saveAll.
  ///
  /// In en, this message translates to:
  /// **'Save All'**
  String get saveAll;

  /// No description provided for @saveAndExit.
  ///
  /// In en, this message translates to:
  /// **'Save and Exit'**
  String get saveAndExit;

  /// No description provided for @saveAndGoToNextContainer.
  ///
  /// In en, this message translates to:
  /// **'Save and Go to Next Container'**
  String get saveAndGoToNextContainer;

  /// No description provided for @saveAsDraft.
  ///
  /// In en, this message translates to:
  /// **'Save as Draft'**
  String get saveAsDraft;

  /// No description provided for @saveButtonText.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButtonText;

  /// No description provided for @saveExit.
  ///
  /// In en, this message translates to:
  /// **'SAVE & EXIT'**
  String get saveExit;

  /// No description provided for @saveFilters.
  ///
  /// In en, this message translates to:
  /// **'Save Filters'**
  String get saveFilters;

  /// No description provided for @saveSignature.
  ///
  /// In en, this message translates to:
  /// **'Save signature'**
  String get saveSignature;

  /// No description provided for @saveas.
  ///
  /// In en, this message translates to:
  /// **'Save as'**
  String get saveas;

  /// No description provided for @savedInDownloadedFolder.
  ///
  /// In en, this message translates to:
  /// **'saved in download folder'**
  String get savedInDownloadedFolder;

  /// No description provided for @savedLogs.
  ///
  /// In en, this message translates to:
  /// **'Saved Logs'**
  String get savedLogs;

  /// No description provided for @saving.
  ///
  /// In en, this message translates to:
  /// **'Saving'**
  String get saving;

  /// No description provided for @savingAdvanceStatusNotDraftError.
  ///
  /// In en, this message translates to:
  /// **'Advance \'{advanceId}\' cannot be updated because its status is \'{status}\'. Only \'Draft\' advances may be modified.'**
  String savingAdvanceStatusNotDraftError(Object advanceId, Object status);

  /// No description provided for @savingChanges.
  ///
  /// In en, this message translates to:
  /// **'Saving Changes'**
  String get savingChanges;

  /// No description provided for @savingContract.
  ///
  /// In en, this message translates to:
  /// **'Saving contract'**
  String get savingContract;

  /// No description provided for @savingPriceAdjustments.
  ///
  /// In en, this message translates to:
  /// **'Saving Price Adjustments'**
  String get savingPriceAdjustments;

  /// No description provided for @savingPriceList.
  ///
  /// In en, this message translates to:
  /// **'Saving Price List'**
  String get savingPriceList;

  /// No description provided for @savingProofOwner.
  ///
  /// In en, this message translates to:
  /// **'Saving Proof of Ownership For'**
  String get savingProofOwner;

  /// No description provided for @savingProofToCustomerAcc.
  ///
  /// In en, this message translates to:
  /// **'Saving Proof to Customer Account'**
  String get savingProofToCustomerAcc;

  /// No description provided for @scale.
  ///
  /// In en, this message translates to:
  /// **'Scale'**
  String get scale;

  /// No description provided for @scaleName.
  ///
  /// In en, this message translates to:
  /// **'Scale name'**
  String get scaleName;

  /// No description provided for @scaleNumber.
  ///
  /// In en, this message translates to:
  /// **'Scale number'**
  String get scaleNumber;

  /// No description provided for @scaleUrl.
  ///
  /// In en, this message translates to:
  /// **'Scale URL'**
  String get scaleUrl;

  /// No description provided for @scales.
  ///
  /// In en, this message translates to:
  /// **'Scales'**
  String get scales;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @scanAgain.
  ///
  /// In en, this message translates to:
  /// **'Scan Again'**
  String get scanAgain;

  /// No description provided for @scanAnItem.
  ///
  /// In en, this message translates to:
  /// **'Scan an item'**
  String get scanAnItem;

  /// No description provided for @scanBeam.
  ///
  /// In en, this message translates to:
  /// **'Scan Beam'**
  String get scanBeam;

  /// No description provided for @scanConsignment.
  ///
  /// In en, this message translates to:
  /// **'Scan consignment'**
  String get scanConsignment;

  /// No description provided for @scanOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Scan on device to upload'**
  String get scanOnDevice;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCode;

  /// No description provided for @scanTicket.
  ///
  /// In en, this message translates to:
  /// **'Scan Ticket'**
  String get scanTicket;

  /// No description provided for @scanToSearch.
  ///
  /// In en, this message translates to:
  /// **'Scan to Search'**
  String get scanToSearch;

  /// No description provided for @schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get schedule;

  /// No description provided for @scheduleBulkJobs.
  ///
  /// In en, this message translates to:
  /// **'Schedule Bulk Flow Jobs'**
  String get scheduleBulkJobs;

  /// No description provided for @scheduleForHaulier.
  ///
  /// In en, this message translates to:
  /// **'Schedule for haulier'**
  String get scheduleForHaulier;

  /// No description provided for @scheduleForTruckHaulier.
  ///
  /// In en, this message translates to:
  /// **'Schedule for truck/haulier'**
  String get scheduleForTruckHaulier;

  /// No description provided for @scheduleLabel.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get scheduleLabel;

  /// No description provided for @scheduleLoadsValidationMsg.
  ///
  /// In en, this message translates to:
  /// **'Loads to be scheduled must be less than the remaining loads of selected haulier'**
  String get scheduleLoadsValidationMsg;

  /// No description provided for @scheduleTaskCreated.
  ///
  /// In en, this message translates to:
  /// **' - Scheduled Task created!'**
  String get scheduleTaskCreated;

  /// No description provided for @scheduleTaskCreationFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create scheduled task.'**
  String get scheduleTaskCreationFailed;

  /// No description provided for @scheduleTaskUpdated.
  ///
  /// In en, this message translates to:
  /// **' - Scheduled Task Updated!'**
  String get scheduleTaskUpdated;

  /// No description provided for @scheduleTaskUpdationFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit scheduled task.'**
  String get scheduleTaskUpdationFailed;

  /// No description provided for @scheduledDate.
  ///
  /// In en, this message translates to:
  /// **'Scheduled Date'**
  String get scheduledDate;

  /// No description provided for @scheduledOn.
  ///
  /// In en, this message translates to:
  /// **'Scheduled On'**
  String get scheduledOn;

  /// No description provided for @scheduler.
  ///
  /// In en, this message translates to:
  /// **'Scheduler'**
  String get scheduler;

  /// No description provided for @schedulerActivatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Scheduler activated successfully'**
  String get schedulerActivatedSuccessfully;

  /// No description provided for @schedulerActivationFailed.
  ///
  /// In en, this message translates to:
  /// **'Scheduler activation failed'**
  String get schedulerActivationFailed;

  /// No description provided for @schedulerCreationFailed.
  ///
  /// In en, this message translates to:
  /// **'Scheduler creation failed'**
  String get schedulerCreationFailed;

  /// No description provided for @schedulerCreationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Scheduler created successfully'**
  String get schedulerCreationSuccess;

  /// No description provided for @schedulerDeactivatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Scheduler deactivated successfully'**
  String get schedulerDeactivatedSuccessfully;

  /// No description provided for @schedulerDeactivationFailed.
  ///
  /// In en, this message translates to:
  /// **'Scheduler deactivation failed'**
  String get schedulerDeactivationFailed;

  /// No description provided for @schedulerDigitalSignatureUpdated.
  ///
  /// In en, this message translates to:
  /// **'Scheduler updated with digital sigature preference'**
  String get schedulerDigitalSignatureUpdated;

  /// No description provided for @schedulerDigitalSignatureUpdationFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not update digital signature preference in scheduler'**
  String get schedulerDigitalSignatureUpdationFailed;

  /// No description provided for @schedulerLabel.
  ///
  /// In en, this message translates to:
  /// **'Scheduler'**
  String get schedulerLabel;

  /// No description provided for @schedulerPreferences.
  ///
  /// In en, this message translates to:
  /// **'Scheduler Preferences'**
  String get schedulerPreferences;

  /// No description provided for @schedulerUpdationFailed.
  ///
  /// In en, this message translates to:
  /// **'Scheduler updation failed'**
  String get schedulerUpdationFailed;

  /// No description provided for @schedulerUpdationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Scheduler updated successfully'**
  String get schedulerUpdationSuccess;

  /// No description provided for @scrapBtnLbl.
  ///
  /// In en, this message translates to:
  /// **'Mark To Be Scrapped'**
  String get scrapBtnLbl;

  /// No description provided for @scrapCarComparison.
  ///
  /// In en, this message translates to:
  /// **'Scrap Car Comparison'**
  String get scrapCarComparison;

  /// No description provided for @scrapCollector.
  ///
  /// In en, this message translates to:
  /// **'Scrap Collector'**
  String get scrapCollector;

  /// No description provided for @scrapConfirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to scrap this item?'**
  String get scrapConfirm;

  /// No description provided for @scrapMoved.
  ///
  /// In en, this message translates to:
  /// **'{weight} MT Scrap moved.'**
  String scrapMoved(Object weight);

  /// No description provided for @scrapParts.
  ///
  /// In en, this message translates to:
  /// **'Scrap Parts'**
  String get scrapParts;

  /// No description provided for @scrapRate.
  ///
  /// In en, this message translates to:
  /// **'Scrap Rate'**
  String get scrapRate;

  /// No description provided for @scrapped.
  ///
  /// In en, this message translates to:
  /// **'Scrapped'**
  String get scrapped;

  /// No description provided for @scrappingAVehicles.
  ///
  /// In en, this message translates to:
  /// **'Scrapping a vehicle(s)'**
  String get scrappingAVehicles;

  /// No description provided for @screenshotOfBankScreen.
  ///
  /// In en, this message translates to:
  /// **'Screenshot Of Bank Screen'**
  String get screenshotOfBankScreen;

  /// No description provided for @scrollEndToAcceptTAndC.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions (Scroll to end and accept)'**
  String get scrollEndToAcceptTAndC;

  /// No description provided for @seal.
  ///
  /// In en, this message translates to:
  /// **'Seal'**
  String get seal;

  /// No description provided for @sealNumber.
  ///
  /// In en, this message translates to:
  /// **'Seal Number'**
  String get sealNumber;

  /// No description provided for @sealNumberIsUsed.
  ///
  /// In en, this message translates to:
  /// **'Seal Number is already used'**
  String get sealNumberIsUsed;

  /// No description provided for @sealNumberRequired.
  ///
  /// In en, this message translates to:
  /// **'Seal Number is Required.'**
  String get sealNumberRequired;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchAtLeast4Characters.
  ///
  /// In en, this message translates to:
  /// **'Please enter a search criteria that is at least 4 characters.'**
  String get searchAtLeast4Characters;

  /// No description provided for @searchButtonText.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchButtonText;

  /// No description provided for @searchByStockNo.
  ///
  /// In en, this message translates to:
  /// **'Search by the Stock # below.'**
  String get searchByStockNo;

  /// No description provided for @searchByStockOrVin.
  ///
  /// In en, this message translates to:
  /// **'Search by the stock # below or scan VIN to get started'**
  String get searchByStockOrVin;

  /// No description provided for @searchByTemplateName.
  ///
  /// In en, this message translates to:
  /// **'Search by template name'**
  String get searchByTemplateName;

  /// No description provided for @searchByWorkRequestHintText.
  ///
  /// In en, this message translates to:
  /// **'Search by Work Request, Service Level, Work Request State'**
  String get searchByWorkRequestHintText;

  /// No description provided for @searchDatesKey.
  ///
  /// In en, this message translates to:
  /// **'LastSearchedDates'**
  String get searchDatesKey;

  /// No description provided for @searchFor.
  ///
  /// In en, this message translates to:
  /// **'Search For'**
  String get searchFor;

  /// No description provided for @searchForAnAccountBelow.
  ///
  /// In en, this message translates to:
  /// **'Search for an account below.'**
  String get searchForAnAccountBelow;

  /// No description provided for @searchForAnAddress.
  ///
  /// In en, this message translates to:
  /// **'Search for an Address'**
  String get searchForAnAddress;

  /// No description provided for @searchForVehicle.
  ///
  /// In en, this message translates to:
  /// **'Search for Vehicle'**
  String get searchForVehicle;

  /// No description provided for @searchGradeOrDescription.
  ///
  /// In en, this message translates to:
  /// **'Search grade or description'**
  String get searchGradeOrDescription;

  /// No description provided for @searchJobsHintText.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get searchJobsHintText;

  /// No description provided for @searchLocations.
  ///
  /// In en, this message translates to:
  /// **'Search Locations'**
  String get searchLocations;

  /// No description provided for @searchNewLocation.
  ///
  /// In en, this message translates to:
  /// **'Search new location'**
  String get searchNewLocation;

  /// No description provided for @searchPartyQuoteNoVin.
  ///
  /// In en, this message translates to:
  /// **'Search Party, Quote #, Post Code, Collection Account Name or VIN'**
  String get searchPartyQuoteNoVin;

  /// No description provided for @searchPartyQuoteNoVrn.
  ///
  /// In en, this message translates to:
  /// **'Search Party, Quote #, Post Code, Collection Account Name or VRN'**
  String get searchPartyQuoteNoVrn;

  /// No description provided for @searchProductItem.
  ///
  /// In en, this message translates to:
  /// **'Search product or item'**
  String get searchProductItem;

  /// No description provided for @searchSorting.
  ///
  /// In en, this message translates to:
  /// **'Search Sorting'**
  String get searchSorting;

  /// No description provided for @searchTermsKey.
  ///
  /// In en, this message translates to:
  /// **'LastSearchedTerms'**
  String get searchTermsKey;

  /// No description provided for @searching.
  ///
  /// In en, this message translates to:
  /// **'Searching...'**
  String get searching;

  /// No description provided for @searchingForVehicles.
  ///
  /// In en, this message translates to:
  /// **'Searching For Vehicles'**
  String get searchingForVehicles;

  /// No description provided for @secondTin.
  ///
  /// In en, this message translates to:
  /// **'Second Tin'**
  String get secondTin;

  /// No description provided for @secore.
  ///
  /// In en, this message translates to:
  /// **'Secore'**
  String get secore;

  /// No description provided for @secoreAgreement.
  ///
  /// In en, this message translates to:
  /// **'Secore Agreement'**
  String get secoreAgreement;

  /// No description provided for @secorePrepayCard.
  ///
  /// In en, this message translates to:
  /// **'Secore Prepay Card'**
  String get secorePrepayCard;

  /// No description provided for @section.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section;

  /// No description provided for @sectionName.
  ///
  /// In en, this message translates to:
  /// **'Section name'**
  String get sectionName;

  /// No description provided for @seeAlso.
  ///
  /// In en, this message translates to:
  /// **'See also'**
  String get seeAlso;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @selectADepot.
  ///
  /// In en, this message translates to:
  /// **'Select a Depot'**
  String get selectADepot;

  /// No description provided for @selectADifferentYard.
  ///
  /// In en, this message translates to:
  /// **'Select a different yard'**
  String get selectADifferentYard;

  /// No description provided for @selectADocumentType.
  ///
  /// In en, this message translates to:
  /// **'Select a document type'**
  String get selectADocumentType;

  /// No description provided for @selectAFile.
  ///
  /// In en, this message translates to:
  /// **'Select a file'**
  String get selectAFile;

  /// No description provided for @selectAFilter.
  ///
  /// In en, this message translates to:
  /// **'Select a filter'**
  String get selectAFilter;

  /// No description provided for @selectAGrade.
  ///
  /// In en, this message translates to:
  /// **'Select a Grade'**
  String get selectAGrade;

  /// No description provided for @selectALocation.
  ///
  /// In en, this message translates to:
  /// **'Select a Location'**
  String get selectALocation;

  /// No description provided for @selectAPartToViewDetails.
  ///
  /// In en, this message translates to:
  /// **'Select a part to view details'**
  String get selectAPartToViewDetails;

  /// No description provided for @selectAPriceFileToUpload.
  ///
  /// In en, this message translates to:
  /// **'Select a price file to upload'**
  String get selectAPriceFileToUpload;

  /// No description provided for @selectAProperty.
  ///
  /// In en, this message translates to:
  /// **'Please select a property'**
  String get selectAProperty;

  /// No description provided for @selectAReason.
  ///
  /// In en, this message translates to:
  /// **'Select a reason'**
  String get selectAReason;

  /// No description provided for @selectATag.
  ///
  /// In en, this message translates to:
  /// **'Select a tag'**
  String get selectATag;

  /// No description provided for @selectAYard.
  ///
  /// In en, this message translates to:
  /// **'Select a yard'**
  String get selectAYard;

  /// No description provided for @selectAccount.
  ///
  /// In en, this message translates to:
  /// **'Select Account'**
  String get selectAccount;

  /// No description provided for @selectAccountNumberForQuote.
  ///
  /// In en, this message translates to:
  /// **'Please, add account before adding a vehicle.'**
  String get selectAccountNumberForQuote;

  /// No description provided for @selectAddress.
  ///
  /// In en, this message translates to:
  /// **'Select Address'**
  String get selectAddress;

  /// No description provided for @selectAddresses.
  ///
  /// In en, this message translates to:
  /// **'Select address or add new'**
  String get selectAddresses;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @selectAllGrades.
  ///
  /// In en, this message translates to:
  /// **'Select all grades'**
  String get selectAllGrades;

  /// No description provided for @selectAllYards.
  ///
  /// In en, this message translates to:
  /// **'Select all Yards'**
  String get selectAllYards;

  /// No description provided for @selectAnOption.
  ///
  /// In en, this message translates to:
  /// **'Select an option'**
  String get selectAnOption;

  /// No description provided for @selectAssetFile.
  ///
  /// In en, this message translates to:
  /// **'Select Asset File'**
  String get selectAssetFile;

  /// No description provided for @selectAtLeastOneGrade.
  ///
  /// In en, this message translates to:
  /// **'You must select at least 1 grade'**
  String get selectAtLeastOneGrade;

  /// No description provided for @selectAtLeastOneTicket.
  ///
  /// In en, this message translates to:
  /// **'Select at least one ticket for Partial Pay term.'**
  String get selectAtLeastOneTicket;

  /// No description provided for @selectAtLeastOneYard.
  ///
  /// In en, this message translates to:
  /// **'Select at least one Yard'**
  String get selectAtLeastOneYard;

  /// No description provided for @selectBothTncAndSecore.
  ///
  /// In en, this message translates to:
  /// **'You must accept both sets of Terms & Conditions if you wish to have a cash option for payment at site'**
  String get selectBothTncAndSecore;

  /// No description provided for @selectCAT.
  ///
  /// In en, this message translates to:
  /// **'Select CAT'**
  String get selectCAT;

  /// No description provided for @selectClassification.
  ///
  /// In en, this message translates to:
  /// **'Select Classification'**
  String get selectClassification;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get selectCountry;

  /// No description provided for @selectCurrency.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get selectCurrency;

  /// No description provided for @selectDeliveryPoint.
  ///
  /// In en, this message translates to:
  /// **'Select a Delivery Point'**
  String get selectDeliveryPoint;

  /// No description provided for @selectDocument.
  ///
  /// In en, this message translates to:
  /// **'Select A Document'**
  String get selectDocument;

  /// No description provided for @selectExistingBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Select Existing Bank Account'**
  String get selectExistingBankAccount;

  /// No description provided for @selectFaultSymptom.
  ///
  /// In en, this message translates to:
  /// **'Symptom'**
  String get selectFaultSymptom;

  /// No description provided for @selectFile.
  ///
  /// In en, this message translates to:
  /// **'Select File'**
  String get selectFile;

  /// No description provided for @selectFromDevice.
  ///
  /// In en, this message translates to:
  /// **'Select from device'**
  String get selectFromDevice;

  /// No description provided for @selectFutureDate.
  ///
  /// In en, this message translates to:
  /// **'Please select future date'**
  String get selectFutureDate;

  /// No description provided for @selectGpl.
  ///
  /// In en, this message translates to:
  /// **'Select GPL'**
  String get selectGpl;

  /// No description provided for @selectGplOrStartFresh.
  ///
  /// In en, this message translates to:
  /// **'Select GPL or fresh'**
  String get selectGplOrStartFresh;

  /// No description provided for @selectGrades.
  ///
  /// In en, this message translates to:
  /// **'Select Grade(s)'**
  String get selectGrades;

  /// No description provided for @selectHaulier.
  ///
  /// In en, this message translates to:
  /// **'Select Haulier:'**
  String get selectHaulier;

  /// No description provided for @selectImage.
  ///
  /// In en, this message translates to:
  /// **'Select Image'**
  String get selectImage;

  /// No description provided for @selectJobsToAssignMsg.
  ///
  /// In en, this message translates to:
  /// **'Select the jobs you would like to assign to'**
  String get selectJobsToAssignMsg;

  /// No description provided for @selectKnownTare.
  ///
  /// In en, this message translates to:
  /// **'Select known tare'**
  String get selectKnownTare;

  /// No description provided for @selectList.
  ///
  /// In en, this message translates to:
  /// **'Select List'**
  String get selectList;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Location'**
  String get selectLocation;

  /// No description provided for @selectLocations.
  ///
  /// In en, this message translates to:
  /// **'Select Locations'**
  String get selectLocations;

  /// No description provided for @selectLocationsProceed.
  ///
  /// In en, this message translates to:
  /// **'Please select 1 or more locations to proceed.'**
  String get selectLocationsProceed;

  /// No description provided for @selectNonConformingValue.
  ///
  /// In en, this message translates to:
  /// **'Please select non conforming value'**
  String get selectNonConformingValue;

  /// No description provided for @selectOptionToIncludeInEmail.
  ///
  /// In en, this message translates to:
  /// **'Select options to include in the quote email'**
  String get selectOptionToIncludeInEmail;

  /// No description provided for @selectOrEnterCategory.
  ///
  /// In en, this message translates to:
  /// **'You must select a Category, or enter a new one'**
  String get selectOrEnterCategory;

  /// No description provided for @selectOrEnterReason.
  ///
  /// In en, this message translates to:
  /// **'You must select a Reason, or enter a new one'**
  String get selectOrEnterReason;

  /// No description provided for @selectOrEnterType.
  ///
  /// In en, this message translates to:
  /// **'You must select a Type, or enter a new one'**
  String get selectOrEnterType;

  /// No description provided for @selectOrderBook.
  ///
  /// In en, this message translates to:
  /// **'Select order book'**
  String get selectOrderBook;

  /// No description provided for @selectPartsToDismantle.
  ///
  /// In en, this message translates to:
  /// **'Select Parts to Dismantle'**
  String get selectPartsToDismantle;

  /// No description provided for @selectPlantoVisit.
  ///
  /// In en, this message translates to:
  /// **'Please select how often do you plan to visit us'**
  String get selectPlantoVisit;

  /// No description provided for @selectPricingOption.
  ///
  /// In en, this message translates to:
  /// **'Select Pricing Option'**
  String get selectPricingOption;

  /// No description provided for @selectPrinter.
  ///
  /// In en, this message translates to:
  /// **'Select Printer'**
  String get selectPrinter;

  /// No description provided for @selectProducts.
  ///
  /// In en, this message translates to:
  /// **'Select Products'**
  String get selectProducts;

  /// No description provided for @selectRepeatInterval.
  ///
  /// In en, this message translates to:
  /// **'Select interval'**
  String get selectRepeatInterval;

  /// No description provided for @selectRepeatOption.
  ///
  /// In en, this message translates to:
  /// **'Repeat Options'**
  String get selectRepeatOption;

  /// No description provided for @selectRequestType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get selectRequestType;

  /// No description provided for @selectRoundingType.
  ///
  /// In en, this message translates to:
  /// **'Select rounding type'**
  String get selectRoundingType;

  /// No description provided for @selectScale.
  ///
  /// In en, this message translates to:
  /// **'Select scale'**
  String get selectScale;

  /// No description provided for @selectServiceLevel.
  ///
  /// In en, this message translates to:
  /// **'Service Level'**
  String get selectServiceLevel;

  /// No description provided for @selectTemplate.
  ///
  /// In en, this message translates to:
  /// **'Select a Template'**
  String get selectTemplate;

  /// No description provided for @selectTerritories.
  ///
  /// In en, this message translates to:
  /// **'Select Territories'**
  String get selectTerritories;

  /// No description provided for @selectTerritory.
  ///
  /// In en, this message translates to:
  /// **'Select a Territory'**
  String get selectTerritory;

  /// No description provided for @selectTicketDirections.
  ///
  /// In en, this message translates to:
  /// **'Select ticket directions'**
  String get selectTicketDirections;

  /// No description provided for @selectTicketPrintTemplate.
  ///
  /// In en, this message translates to:
  /// **'Select ticket print template'**
  String get selectTicketPrintTemplate;

  /// No description provided for @selectTicketPrintType.
  ///
  /// In en, this message translates to:
  /// **'Select ticket print type'**
  String get selectTicketPrintType;

  /// No description provided for @selectTitle.
  ///
  /// In en, this message translates to:
  /// **'Please select title'**
  String get selectTitle;

  /// No description provided for @selectTruck.
  ///
  /// In en, this message translates to:
  /// **'Select Truck:'**
  String get selectTruck;

  /// No description provided for @selectTruckForAssignment.
  ///
  /// In en, this message translates to:
  /// **'Select the truck to assign jobs'**
  String get selectTruckForAssignment;

  /// No description provided for @selectTruckToView.
  ///
  /// In en, this message translates to:
  /// **'Select a truck to view its details'**
  String get selectTruckToView;

  /// No description provided for @selectUserLabel.
  ///
  /// In en, this message translates to:
  /// **'Select a user'**
  String get selectUserLabel;

  /// No description provided for @selectValidPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select valid Payment Method'**
  String get selectValidPaymentMethod;

  /// No description provided for @selectWeek.
  ///
  /// In en, this message translates to:
  /// **'Select week'**
  String get selectWeek;

  /// No description provided for @selectYard.
  ///
  /// In en, this message translates to:
  /// **'Select a Yard'**
  String get selectYard;

  /// No description provided for @selectYardOrEnterPostcode.
  ///
  /// In en, this message translates to:
  /// **'Please, select a yard or enter a valid postcode before adding a vehicle.'**
  String get selectYardOrEnterPostcode;

  /// No description provided for @selectYourCountry.
  ///
  /// In en, this message translates to:
  /// **'Please select your country by'**
  String get selectYourCountry;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @selectedDepotKey.
  ///
  /// In en, this message translates to:
  /// **'SelectedDepot'**
  String get selectedDepotKey;

  /// No description provided for @selectedLocations.
  ///
  /// In en, this message translates to:
  /// **'Selected Locations'**
  String get selectedLocations;

  /// No description provided for @selectedProduct.
  ///
  /// In en, this message translates to:
  /// **'Selected Product'**
  String get selectedProduct;

  /// No description provided for @selectedTags.
  ///
  /// In en, this message translates to:
  /// **'Selected Tags'**
  String get selectedTags;

  /// No description provided for @selectedTagsDescription.
  ///
  /// In en, this message translates to:
  /// **'The selected tags will be applied to the items you have selected in the main screen.'**
  String get selectedTagsDescription;

  /// No description provided for @selectedTerritoryKey.
  ///
  /// In en, this message translates to:
  /// **'TerritoryKey'**
  String get selectedTerritoryKey;

  /// No description provided for @selectedVehicle.
  ///
  /// In en, this message translates to:
  /// **'Selected Vehicle'**
  String get selectedVehicle;

  /// No description provided for @selectedYardKey.
  ///
  /// In en, this message translates to:
  /// **'SelectedYard'**
  String get selectedYardKey;

  /// No description provided for @selectgrade.
  ///
  /// In en, this message translates to:
  /// **'Selected Grade'**
  String get selectgrade;

  /// No description provided for @selectionReflectNote.
  ///
  /// In en, this message translates to:
  /// **'*This selection will reflect on scheduler & job screens'**
  String get selectionReflectNote;

  /// No description provided for @selfBill.
  ///
  /// In en, this message translates to:
  /// **'Self Bill'**
  String get selfBill;

  /// No description provided for @selfBilling.
  ///
  /// In en, this message translates to:
  /// **'Self Billing'**
  String get selfBilling;

  /// No description provided for @selfBillingDate.
  ///
  /// In en, this message translates to:
  /// **'Self Billing Date'**
  String get selfBillingDate;

  /// No description provided for @sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get sell;

  /// No description provided for @sellAll.
  ///
  /// In en, this message translates to:
  /// **'Sell All'**
  String get sellAll;

  /// No description provided for @sellRest.
  ///
  /// In en, this message translates to:
  /// **'Sell Rest'**
  String get sellRest;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @sendEmail.
  ///
  /// In en, this message translates to:
  /// **'Send Email'**
  String get sendEmail;

  /// No description provided for @sendOrDownload.
  ///
  /// In en, this message translates to:
  /// **'Send/Download'**
  String get sendOrDownload;

  /// No description provided for @sendPriceList.
  ///
  /// In en, this message translates to:
  /// **'Send Price List'**
  String get sendPriceList;

  /// No description provided for @sendingEmail.
  ///
  /// In en, this message translates to:
  /// **'Sending Email'**
  String get sendingEmail;

  /// No description provided for @sendingPriceList.
  ///
  /// In en, this message translates to:
  /// **'Sending Price List'**
  String get sendingPriceList;

  /// No description provided for @sendingToInspection.
  ///
  /// In en, this message translates to:
  /// **'Sending to Inspection'**
  String get sendingToInspection;

  /// No description provided for @sentForPaymentVia.
  ///
  /// In en, this message translates to:
  /// **'Sent for payment via'**
  String get sentForPaymentVia;

  /// No description provided for @serialId.
  ///
  /// In en, this message translates to:
  /// **'Serial ID'**
  String get serialId;

  /// No description provided for @serialNo.
  ///
  /// In en, this message translates to:
  /// **'Serial No'**
  String get serialNo;

  /// No description provided for @serialNumber.
  ///
  /// In en, this message translates to:
  /// **'Serial Number'**
  String get serialNumber;

  /// No description provided for @serviceLabel.
  ///
  /// In en, this message translates to:
  /// **'Service Level'**
  String get serviceLabel;

  /// No description provided for @serviceNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service not Available'**
  String get serviceNotAvailable;

  /// No description provided for @serviceType.
  ///
  /// In en, this message translates to:
  /// **'Service Type'**
  String get serviceType;

  /// No description provided for @sessionTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Session timed out.'**
  String get sessionTimedOut;

  /// No description provided for @setContents.
  ///
  /// In en, this message translates to:
  /// **'Set\nContents'**
  String get setContents;

  /// No description provided for @setLotContents.
  ///
  /// In en, this message translates to:
  /// **'Set Lot Contents'**
  String get setLotContents;

  /// No description provided for @setRecurrenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Set Recurrence'**
  String get setRecurrenceLabel;

  /// No description provided for @settingUp.
  ///
  /// In en, this message translates to:
  /// **'Setting up'**
  String get settingUp;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @setupLabel.
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get setupLabel;

  /// No description provided for @sevenDay.
  ///
  /// In en, this message translates to:
  /// **'7 Day'**
  String get sevenDay;

  /// No description provided for @shareLogs.
  ///
  /// In en, this message translates to:
  /// **'Share logs with support'**
  String get shareLogs;

  /// No description provided for @shearStuds.
  ///
  /// In en, this message translates to:
  /// **'Shear Studs'**
  String get shearStuds;

  /// No description provided for @sheq.
  ///
  /// In en, this message translates to:
  /// **'SHEQ'**
  String get sheq;

  /// No description provided for @shiftHours.
  ///
  /// In en, this message translates to:
  /// **'Shift Hours'**
  String get shiftHours;

  /// No description provided for @shortVin.
  ///
  /// In en, this message translates to:
  /// **'Short VIN'**
  String get shortVin;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @showAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account # :  {partyAccountNumber}'**
  String showAccountNumber(Object partyAccountNumber);

  /// No description provided for @showActions.
  ///
  /// In en, this message translates to:
  /// **'Show actions'**
  String get showActions;

  /// No description provided for @showAllAssets.
  ///
  /// In en, this message translates to:
  /// **'Show all assets'**
  String get showAllAssets;

  /// No description provided for @showAssets.
  ///
  /// In en, this message translates to:
  /// **'ShowAssets'**
  String get showAssets;

  /// No description provided for @showBreakup.
  ///
  /// In en, this message translates to:
  /// **'Show breakup'**
  String get showBreakup;

  /// No description provided for @showDisposedAssets.
  ///
  /// In en, this message translates to:
  /// **'Show disposed assets'**
  String get showDisposedAssets;

  /// No description provided for @showFullAddress.
  ///
  /// In en, this message translates to:
  /// **'Show full address of the location.'**
  String get showFullAddress;

  /// No description provided for @showHaulageCharge.
  ///
  /// In en, this message translates to:
  /// **'Show the Haulage Charge \n to the customer'**
  String get showHaulageCharge;

  /// No description provided for @showLiveAssets.
  ///
  /// In en, this message translates to:
  /// **'Show live assets'**
  String get showLiveAssets;

  /// No description provided for @showMenu.
  ///
  /// In en, this message translates to:
  /// **'Show Menu'**
  String get showMenu;

  /// No description provided for @showOnScheduler.
  ///
  /// In en, this message translates to:
  /// **'Show on Scheduler Screen'**
  String get showOnScheduler;

  /// No description provided for @showOnlyPostcode.
  ///
  /// In en, this message translates to:
  /// **'Show only postcode.'**
  String get showOnlyPostcode;

  /// No description provided for @showQRCode.
  ///
  /// In en, this message translates to:
  /// **'Show QR Code'**
  String get showQRCode;

  /// No description provided for @showSignaturePad.
  ///
  /// In en, this message translates to:
  /// **'Show Signature Pad'**
  String get showSignaturePad;

  /// No description provided for @showSkippedContainers.
  ///
  /// In en, this message translates to:
  /// **'Show skipped containers'**
  String get showSkippedContainers;

  /// No description provided for @showStockAsProduct.
  ///
  /// In en, this message translates to:
  /// **'Show Stock As Product'**
  String get showStockAsProduct;

  /// No description provided for @showToCustomer.
  ///
  /// In en, this message translates to:
  /// **'Show to Customer'**
  String get showToCustomer;

  /// No description provided for @showUploadControls.
  ///
  /// In en, this message translates to:
  /// **'Show Upload Controls'**
  String get showUploadControls;

  /// No description provided for @showWeightMode.
  ///
  /// In en, this message translates to:
  /// **'Show Weight Mode'**
  String get showWeightMode;

  /// No description provided for @showYardCode.
  ///
  /// In en, this message translates to:
  /// **'Show only yard code if the location is yard, else show full address.'**
  String get showYardCode;

  /// No description provided for @showYardsonScheduler.
  ///
  /// In en, this message translates to:
  /// **'Show Selected Yards On Scheduler Screen'**
  String get showYardsonScheduler;

  /// No description provided for @shownToDriver.
  ///
  /// In en, this message translates to:
  /// **'will be shown to driver'**
  String get shownToDriver;

  /// No description provided for @sicCode.
  ///
  /// In en, this message translates to:
  /// **'SIC code'**
  String get sicCode;

  /// No description provided for @sides.
  ///
  /// In en, this message translates to:
  /// **'Sides'**
  String get sides;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @signature.
  ///
  /// In en, this message translates to:
  /// **'Sign'**
  String get signature;

  /// No description provided for @signatureFull.
  ///
  /// In en, this message translates to:
  /// **'signature'**
  String get signatureFull;

  /// No description provided for @signatureInstructionSignBelow.
  ///
  /// In en, this message translates to:
  /// **'Please sign in the grey box below.'**
  String get signatureInstructionSignBelow;

  /// No description provided for @signatureLabel.
  ///
  /// In en, this message translates to:
  /// **'Signature'**
  String get signatureLabel;

  /// No description provided for @signatureUploaded.
  ///
  /// In en, this message translates to:
  /// **'Signature Uploaded'**
  String get signatureUploaded;

  /// No description provided for @siteOps.
  ///
  /// In en, this message translates to:
  /// **'Site Ops'**
  String get siteOps;

  /// No description provided for @sitePermitExceptionNumber.
  ///
  /// In en, this message translates to:
  /// **'Site permit or exception number'**
  String get sitePermitExceptionNumber;

  /// No description provided for @sitePermitHolder.
  ///
  /// In en, this message translates to:
  /// **'Site permit holder'**
  String get sitePermitHolder;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @skipAll.
  ///
  /// In en, this message translates to:
  /// **'Skip All'**
  String get skipAll;

  /// No description provided for @skipRest.
  ///
  /// In en, this message translates to:
  /// **'Skip Rest'**
  String get skipRest;

  /// No description provided for @sms.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get sms;

  /// No description provided for @snapshotDate.
  ///
  /// In en, this message translates to:
  /// **'Snapshot Date'**
  String get snapshotDate;

  /// No description provided for @snapshotDateTime.
  ///
  /// In en, this message translates to:
  /// **'Snapshot Date & Time'**
  String get snapshotDateTime;

  /// No description provided for @snapshotFailureWarning.
  ///
  /// In en, this message translates to:
  /// **'Stock take has been created, but failed to take snapshot.'**
  String get snapshotFailureWarning;

  /// No description provided for @snapshotNotCapturedWithLocations.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Snapshot not captured for the following location: {locations}} other{Snapshot not captured for the following locations: {locations}}}'**
  String snapshotNotCapturedWithLocations(num count, Object locations);

  /// No description provided for @snapshotRate.
  ///
  /// In en, this message translates to:
  /// **'Snapshot Rate'**
  String get snapshotRate;

  /// No description provided for @snapshotRefreshedMessage.
  ///
  /// In en, this message translates to:
  /// **'Snapshot has been refreshed'**
  String get snapshotRefreshedMessage;

  /// No description provided for @snapshotValue.
  ///
  /// In en, this message translates to:
  /// **'Snapshot Value'**
  String get snapshotValue;

  /// No description provided for @snapshotWeight.
  ///
  /// In en, this message translates to:
  /// **'Snapshot Weight'**
  String get snapshotWeight;

  /// No description provided for @soldSuggestion.
  ///
  /// In en, this message translates to:
  /// **'SOLD'**
  String get soldSuggestion;

  /// No description provided for @somePeopleAreNotPresent.
  ///
  /// In en, this message translates to:
  /// **'Some people are not present'**
  String get somePeopleAreNotPresent;

  /// No description provided for @sorryThereWasaProblem.
  ///
  /// In en, this message translates to:
  /// **'Sorry there was a problem'**
  String get sorryThereWasaProblem;

  /// No description provided for @sorryThisScreenIsntReadyYet.
  ///
  /// In en, this message translates to:
  /// **'Sorry, this screen isn\'t ready yet'**
  String get sorryThisScreenIsntReadyYet;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get sortBy;

  /// No description provided for @sortCode.
  ///
  /// In en, this message translates to:
  /// **'Sort Code'**
  String get sortCode;

  /// No description provided for @sortFilter.
  ///
  /// In en, this message translates to:
  /// **'Sort/Filter'**
  String get sortFilter;

  /// No description provided for @sorting.
  ///
  /// In en, this message translates to:
  /// **'Sorting'**
  String get sorting;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @specialHandlingRequirements.
  ///
  /// In en, this message translates to:
  /// **'Special handling requirements'**
  String get specialHandlingRequirements;

  /// No description provided for @specificCAT.
  ///
  /// In en, this message translates to:
  /// **'Specific CAT'**
  String get specificCAT;

  /// No description provided for @speed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get speed;

  /// No description provided for @splitPayment.
  ///
  /// In en, this message translates to:
  /// **'Split Payment'**
  String get splitPayment;

  /// No description provided for @splitTicketsByLots.
  ///
  /// In en, this message translates to:
  /// **'Split Ticket'**
  String get splitTicketsByLots;

  /// No description provided for @spot.
  ///
  /// In en, this message translates to:
  /// **'Spot'**
  String get spot;

  /// No description provided for @spotContract.
  ///
  /// In en, this message translates to:
  /// **'Spot Contract'**
  String get spotContract;

  /// No description provided for @spotContractConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Spot Contract Confirmed'**
  String get spotContractConfirmed;

  /// No description provided for @staff.
  ///
  /// In en, this message translates to:
  /// **'Staff'**
  String get staff;

  /// No description provided for @staffMissingFromRollCall.
  ///
  /// In en, this message translates to:
  /// **'Staff/ visitors missing from roll call'**
  String get staffMissingFromRollCall;

  /// No description provided for @stage.
  ///
  /// In en, this message translates to:
  /// **'Stage'**
  String get stage;

  /// No description provided for @stage0.
  ///
  /// In en, this message translates to:
  /// **'Stage 0'**
  String get stage0;

  /// No description provided for @stage0TimeStamp.
  ///
  /// In en, this message translates to:
  /// **'Stage 0 Date and Time'**
  String get stage0TimeStamp;

  /// No description provided for @stage1.
  ///
  /// In en, this message translates to:
  /// **'Stage 1'**
  String get stage1;

  /// No description provided for @stage1Of2AboutYou.
  ///
  /// In en, this message translates to:
  /// **'Stage 1 of 2: About you'**
  String get stage1Of2AboutYou;

  /// No description provided for @stage1PhotoLink.
  ///
  /// In en, this message translates to:
  /// **'Stage 1 Photo Link'**
  String get stage1PhotoLink;

  /// No description provided for @stage1TimeStamp.
  ///
  /// In en, this message translates to:
  /// **'Stage 1 Date and Time'**
  String get stage1TimeStamp;

  /// No description provided for @stage2.
  ///
  /// In en, this message translates to:
  /// **'Stage 2'**
  String get stage2;

  /// No description provided for @stage2Of2YourDocuments.
  ///
  /// In en, this message translates to:
  /// **'Stage 2 of 2: Your documents'**
  String get stage2Of2YourDocuments;

  /// No description provided for @stage2TimeStamp.
  ///
  /// In en, this message translates to:
  /// **'Stage 2 Date and Time'**
  String get stage2TimeStamp;

  /// No description provided for @stage3.
  ///
  /// In en, this message translates to:
  /// **'Stage 3'**
  String get stage3;

  /// No description provided for @stage3PhotoLink.
  ///
  /// In en, this message translates to:
  /// **'Stage 3 Photo Link'**
  String get stage3PhotoLink;

  /// No description provided for @stage3TimeStamp.
  ///
  /// In en, this message translates to:
  /// **'Stage 3 Date and Time'**
  String get stage3TimeStamp;

  /// No description provided for @standingOrder.
  ///
  /// In en, this message translates to:
  /// **'Standing Order'**
  String get standingOrder;

  /// No description provided for @standingOrderCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Standing Order Created Successfully'**
  String get standingOrderCreatedSuccessfully;

  /// No description provided for @standingOrderDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Standing Order Deleted Successfully'**
  String get standingOrderDeletedSuccessfully;

  /// No description provided for @standingOrderUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Standing Order Updated Successfully'**
  String get standingOrderUpdatedSuccessfully;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @startAssessment.
  ///
  /// In en, this message translates to:
  /// **'Start Assessment'**
  String get startAssessment;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @startDateAfterDueDateMessage.
  ///
  /// In en, this message translates to:
  /// **'Start date is after due date!'**
  String get startDateAfterDueDateMessage;

  /// No description provided for @startDateHint.
  ///
  /// In en, this message translates to:
  /// **'Schedule Task start date'**
  String get startDateHint;

  /// No description provided for @startDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDateLabel;

  /// No description provided for @startDateRequired.
  ///
  /// In en, this message translates to:
  /// **'Start date is required'**
  String get startDateRequired;

  /// No description provided for @startDateUppercase.
  ///
  /// In en, this message translates to:
  /// **'START DATE'**
  String get startDateUppercase;

  /// No description provided for @startDateValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a start date'**
  String get startDateValidation;

  /// No description provided for @startForm.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get startForm;

  /// No description provided for @startFresh.
  ///
  /// In en, this message translates to:
  /// **'Start fresh'**
  String get startFresh;

  /// No description provided for @startFromGpl.
  ///
  /// In en, this message translates to:
  /// **'Start from GPL'**
  String get startFromGpl;

  /// No description provided for @startJob.
  ///
  /// In en, this message translates to:
  /// **'Start the Job'**
  String get startJob;

  /// No description provided for @startLocation.
  ///
  /// In en, this message translates to:
  /// **'Start Location'**
  String get startLocation;

  /// No description provided for @startLocationAddress.
  ///
  /// In en, this message translates to:
  /// **'Start location address.'**
  String get startLocationAddress;

  /// No description provided for @startNumber.
  ///
  /// In en, this message translates to:
  /// **'Start Number'**
  String get startNumber;

  /// No description provided for @startRow.
  ///
  /// In en, this message translates to:
  /// **'Start Row'**
  String get startRow;

  /// No description provided for @startTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get startTime;

  /// No description provided for @started.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get started;

  /// No description provided for @startedBy.
  ///
  /// In en, this message translates to:
  /// **'Started By'**
  String get startedBy;

  /// No description provided for @stateReportingEnabled.
  ///
  /// In en, this message translates to:
  /// **'State Reporting Enabled'**
  String get stateReportingEnabled;

  /// No description provided for @statement.
  ///
  /// In en, this message translates to:
  /// **'Statement'**
  String get statement;

  /// No description provided for @statementDelayMessage.
  ///
  /// In en, this message translates to:
  /// **'Submitted documents may take up to 1 hour to show after submission.'**
  String get statementDelayMessage;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @statuses.
  ///
  /// In en, this message translates to:
  /// **'statuses'**
  String get statuses;

  /// No description provided for @statutoryInspection.
  ///
  /// In en, this message translates to:
  /// **'Statutory Inspection'**
  String get statutoryInspection;

  /// No description provided for @statutoryInspectionIntervalMonths.
  ///
  /// In en, this message translates to:
  /// **'Statutory Inspection Interval (Months)'**
  String get statutoryInspectionIntervalMonths;

  /// No description provided for @steelWheels.
  ///
  /// In en, this message translates to:
  /// **'Steel Wheels'**
  String get steelWheels;

  /// No description provided for @steels.
  ///
  /// In en, this message translates to:
  /// **'Steels'**
  String get steels;

  /// No description provided for @step.
  ///
  /// In en, this message translates to:
  /// **'Step'**
  String get step;

  /// No description provided for @stock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// No description provided for @stockTakeAlreadySubmitted.
  ///
  /// In en, this message translates to:
  /// **'Stock take has already been submitted for approval'**
  String get stockTakeAlreadySubmitted;

  /// No description provided for @stockTakeAlreadyVoted.
  ///
  /// In en, this message translates to:
  /// **'Stocktake vote has already been registered for this level'**
  String get stockTakeAlreadyVoted;

  /// No description provided for @stockTakeApprovalNotFound.
  ///
  /// In en, this message translates to:
  /// **'No pending approvals found for the Stocktake'**
  String get stockTakeApprovalNotFound;

  /// No description provided for @stockTakeApproved.
  ///
  /// In en, this message translates to:
  /// **'The stock take has been approved.'**
  String get stockTakeApproved;

  /// No description provided for @stockTakeCommentNotFound.
  ///
  /// In en, this message translates to:
  /// **'Stock take comment not found'**
  String get stockTakeCommentNotFound;

  /// No description provided for @stockTakeCompleteConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to complete the Stock Take?'**
  String get stockTakeCompleteConfirmation;

  /// No description provided for @stockTakeConfigs.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Configs'**
  String get stockTakeConfigs;

  /// No description provided for @stockTakeCreated.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Created'**
  String get stockTakeCreated;

  /// No description provided for @stockTakeCreatedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your stock take has been created.'**
  String get stockTakeCreatedMessage;

  /// No description provided for @stockTakeDeleteConflict.
  ///
  /// In en, this message translates to:
  /// **'Cannot delete stock take. The current status of the stock take has been changed.'**
  String get stockTakeDeleteConflict;

  /// No description provided for @stockTakeDeleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Stock take deleted successfully.'**
  String get stockTakeDeleteSuccess;

  /// No description provided for @stockTakeDescription.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Description'**
  String get stockTakeDescription;

  /// No description provided for @stockTakeDetails.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Details'**
  String get stockTakeDetails;

  /// No description provided for @stockTakeInventoryLocationNotFound.
  ///
  /// In en, this message translates to:
  /// **'Inventory location does not exist'**
  String get stockTakeInventoryLocationNotFound;

  /// No description provided for @stockTakeLevelNotFound.
  ///
  /// In en, this message translates to:
  /// **'Stocktake approval level not found'**
  String get stockTakeLevelNotFound;

  /// No description provided for @stockTakeLevelNotProcessed.
  ///
  /// In en, this message translates to:
  /// **'Stocktake approval for current level is not processed yet. Kindly try again later!'**
  String get stockTakeLevelNotProcessed;

  /// No description provided for @stockTakeLocationNotFound.
  ///
  /// In en, this message translates to:
  /// **'The stock take location does not exist'**
  String get stockTakeLocationNotFound;

  /// No description provided for @stockTakeNotFound.
  ///
  /// In en, this message translates to:
  /// **'The Stock take does not exist'**
  String get stockTakeNotFound;

  /// No description provided for @stockTakeOrInventoryLocationNotFound.
  ///
  /// In en, this message translates to:
  /// **'Could not find stock take or inventory location'**
  String get stockTakeOrInventoryLocationNotFound;

  /// No description provided for @stockTakePendingLocationsConfirmation.
  ///
  /// In en, this message translates to:
  /// **'There {count, plural, other{are still {count} locations} one{is still 1 location}} pending. Are you sure you want to {action}?'**
  String stockTakePendingLocationsConfirmation(Object action, num count);

  /// No description provided for @stockTakePendingWeightsWarning.
  ///
  /// In en, this message translates to:
  /// **'There {count, plural, one{is still 1 location} other{are still {count} locations}} without weights. Please complete {count, plural, one{it} other{them}} before submitting.'**
  String stockTakePendingWeightsWarning(num count);

  /// No description provided for @stockTakeRefreshSnapshotConflict.
  ///
  /// In en, this message translates to:
  /// **'Cannot refresh snapshot. The current status of the stock take has been changed.'**
  String get stockTakeRefreshSnapshotConflict;

  /// No description provided for @stockTakeRejected.
  ///
  /// In en, this message translates to:
  /// **'The stock take has been rejected.'**
  String get stockTakeRejected;

  /// No description provided for @stockTakeRoutineCheck.
  ///
  /// In en, this message translates to:
  /// **'Impact Stock'**
  String get stockTakeRoutineCheck;

  /// No description provided for @stockTakeSentToWorkflow.
  ///
  /// In en, this message translates to:
  /// **'Stocktake sent to workflow'**
  String get stockTakeSentToWorkflow;

  /// No description provided for @stockTakeSnapshotNotFound.
  ///
  /// In en, this message translates to:
  /// **'Snapshot not found for 1 or more location(s)'**
  String get stockTakeSnapshotNotFound;

  /// No description provided for @stockTakeSubmitForApprovalConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit for approval?'**
  String get stockTakeSubmitForApprovalConfirmation;

  /// No description provided for @stockTakeTrade2KeyMissing.
  ///
  /// In en, this message translates to:
  /// **'Unable to refresh snapshots. Trade2Key is missing for some locations'**
  String get stockTakeTrade2KeyMissing;

  /// No description provided for @stockTakeUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'User is not authorised to perform the action'**
  String get stockTakeUnauthorized;

  /// No description provided for @stockTakeUpdateConflict.
  ///
  /// In en, this message translates to:
  /// **'Cannot update stock take. The current status of the stock take has been changed.'**
  String get stockTakeUpdateConflict;

  /// No description provided for @stockTakeUserNotAllowedToDeleteComment.
  ///
  /// In en, this message translates to:
  /// **'User does not have permission to delete the comment'**
  String get stockTakeUserNotAllowedToDeleteComment;

  /// No description provided for @stockTakeValue.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Value'**
  String get stockTakeValue;

  /// No description provided for @stockTakeWeighedTimeValidation.
  ///
  /// In en, this message translates to:
  /// **'Selected time should be after snapshot time {time}.'**
  String stockTakeWeighedTimeValidation(Object time);

  /// No description provided for @stockTakeWeight.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Weight'**
  String get stockTakeWeight;

  /// No description provided for @stockTakeWeightNotFound.
  ///
  /// In en, this message translates to:
  /// **'Stock take weight does not exist'**
  String get stockTakeWeightNotFound;

  /// No description provided for @stockTakeWfRuleNotFound.
  ///
  /// In en, this message translates to:
  /// **'No workflow rules have been configured for the selected product family and yard'**
  String get stockTakeWfRuleNotFound;

  /// No description provided for @stockTakeYardNotFound.
  ///
  /// In en, this message translates to:
  /// **'Yard does not exist'**
  String get stockTakeYardNotFound;

  /// No description provided for @stockTakes.
  ///
  /// In en, this message translates to:
  /// **'Stock Takes'**
  String get stockTakes;

  /// No description provided for @stocktake.
  ///
  /// In en, this message translates to:
  /// **'Stock Take'**
  String get stocktake;

  /// No description provided for @stocktakeApproval.
  ///
  /// In en, this message translates to:
  /// **'Stock Take Approval'**
  String get stocktakeApproval;

  /// No description provided for @stocktakeFailureMsg.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the stocktake adjustment. The system has marked it as failed automatically.'**
  String get stocktakeFailureMsg;

  /// No description provided for @stocktakeFailureTitle.
  ///
  /// In en, this message translates to:
  /// **'Stocktake Adjustment Failed'**
  String get stocktakeFailureTitle;

  /// No description provided for @stolen.
  ///
  /// In en, this message translates to:
  /// **'Stolen'**
  String get stolen;

  /// No description provided for @stop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// No description provided for @stopped.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get stopped;

  /// No description provided for @storagePermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission denied, please allow access to storage.'**
  String get storagePermissionDenied;

  /// No description provided for @storageRate.
  ///
  /// In en, this message translates to:
  /// **'Storage Rate'**
  String get storageRate;

  /// No description provided for @storedWeight.
  ///
  /// In en, this message translates to:
  /// **'Stored weight'**
  String get storedWeight;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get street;

  /// No description provided for @stringNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get stringNo;

  /// No description provided for @stringYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get stringYes;

  /// No description provided for @structuralPenetrations.
  ///
  /// In en, this message translates to:
  /// **'Structural Penetrations'**
  String get structuralPenetrations;

  /// No description provided for @structuralSteelType.
  ///
  /// In en, this message translates to:
  /// **'Structural Steel Type'**
  String get structuralSteelType;

  /// No description provided for @structureType.
  ///
  /// In en, this message translates to:
  /// **'Type of Structure'**
  String get structureType;

  /// No description provided for @styles.
  ///
  /// In en, this message translates to:
  /// **'Styles'**
  String get styles;

  /// No description provided for @subGrade.
  ///
  /// In en, this message translates to:
  /// **'Sub-Grade'**
  String get subGrade;

  /// No description provided for @subGroup.
  ///
  /// In en, this message translates to:
  /// **'Sub Group'**
  String get subGroup;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get subTotal;

  /// No description provided for @submissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Submission'**
  String get submissionTitle;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @submitAnother.
  ///
  /// In en, this message translates to:
  /// **'Submit Another'**
  String get submitAnother;

  /// No description provided for @submitButton.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitButton;

  /// No description provided for @submitChangeRequest.
  ///
  /// In en, this message translates to:
  /// **'Submit Change Request'**
  String get submitChangeRequest;

  /// No description provided for @submitConfirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to submit changes?'**
  String get submitConfirm;

  /// No description provided for @submitContract.
  ///
  /// In en, this message translates to:
  /// **'Submit Contract'**
  String get submitContract;

  /// No description provided for @submitForApproval.
  ///
  /// In en, this message translates to:
  /// **'Submit for Approval'**
  String get submitForApproval;

  /// No description provided for @submittedBy.
  ///
  /// In en, this message translates to:
  /// **'Submitted By'**
  String get submittedBy;

  /// No description provided for @submittedDateText.
  ///
  /// In en, this message translates to:
  /// **'Submitted On '**
  String get submittedDateText;

  /// No description provided for @submittedForApproval.
  ///
  /// In en, this message translates to:
  /// **'Submitted for approval'**
  String get submittedForApproval;

  /// No description provided for @submittedJobIds.
  ///
  /// In en, this message translates to:
  /// **'SubmittedJobIds'**
  String get submittedJobIds;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @successfullySaved.
  ///
  /// In en, this message translates to:
  /// **'Successfully saved'**
  String get successfullySaved;

  /// No description provided for @successfullyUploadedThePriceFile.
  ///
  /// In en, this message translates to:
  /// **'Successfully uploaded the price file'**
  String get successfullyUploadedThePriceFile;

  /// No description provided for @suggestedPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Suggested Payment Method'**
  String get suggestedPaymentMethod;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @superGroup.
  ///
  /// In en, this message translates to:
  /// **'Super Group'**
  String get superGroup;

  /// No description provided for @supplier.
  ///
  /// In en, this message translates to:
  /// **'Supplier'**
  String get supplier;

  /// No description provided for @supplierIndustryGroup.
  ///
  /// In en, this message translates to:
  /// **'Supplier Industry Group'**
  String get supplierIndustryGroup;

  /// No description provided for @supplierVatGroup.
  ///
  /// In en, this message translates to:
  /// **'Supplier VAT Group'**
  String get supplierVatGroup;

  /// No description provided for @suppressInvoice.
  ///
  /// In en, this message translates to:
  /// **'Suppress Invoice'**
  String get suppressInvoice;

  /// No description provided for @suppressStatement.
  ///
  /// In en, this message translates to:
  /// **'Suppress Statement'**
  String get suppressStatement;

  /// No description provided for @sureToApproveSelectedAsset.
  ///
  /// In en, this message translates to:
  /// **'Are your sure You want to Approve the selected assets?'**
  String get sureToApproveSelectedAsset;

  /// No description provided for @sureToProceed.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to proceed?'**
  String get sureToProceed;

  /// No description provided for @sureToSaveChanges.
  ///
  /// In en, this message translates to:
  /// **'Are you sure You want to save these Changes?'**
  String get sureToSaveChanges;

  /// No description provided for @sureYouWantTo.
  ///
  /// In en, this message translates to:
  /// **'Are you sure You want to'**
  String get sureYouWantTo;

  /// No description provided for @suspenseAccount.
  ///
  /// In en, this message translates to:
  /// **'Suspense Account'**
  String get suspenseAccount;

  /// No description provided for @swift.
  ///
  /// In en, this message translates to:
  /// **'Swift'**
  String get swift;

  /// No description provided for @switchToManualSearch.
  ///
  /// In en, this message translates to:
  /// **'Switch to Manual Search'**
  String get switchToManualSearch;

  /// No description provided for @switchView.
  ///
  /// In en, this message translates to:
  /// **'Switch View'**
  String get switchView;

  /// No description provided for @syncAssettoCMMS.
  ///
  /// In en, this message translates to:
  /// **'Sync Asset to CMMS'**
  String get syncAssettoCMMS;

  /// No description provided for @syncFLTreeText.
  ///
  /// In en, this message translates to:
  /// **'Sync Functional Location Tree'**
  String get syncFLTreeText;

  /// No description provided for @syncLabel.
  ///
  /// In en, this message translates to:
  /// **'D365 Sync'**
  String get syncLabel;

  /// No description provided for @syncProjecttoCMMS.
  ///
  /// In en, this message translates to:
  /// **'Sync Project to CMMS'**
  String get syncProjecttoCMMS;

  /// No description provided for @syncSelected.
  ///
  /// In en, this message translates to:
  /// **'Sync Selected'**
  String get syncSelected;

  /// No description provided for @syncStatus.
  ///
  /// In en, this message translates to:
  /// **'Sync Status: {status}'**
  String syncStatus(Object status);

  /// No description provided for @syncTargets.
  ///
  /// In en, this message translates to:
  /// **'Sync Targets'**
  String get syncTargets;

  /// No description provided for @syncTaskStatus.
  ///
  /// In en, this message translates to:
  /// **'Sync Task Status'**
  String get syncTaskStatus;

  /// No description provided for @syncText.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get syncText;

  /// No description provided for @syncTicketTasks.
  ///
  /// In en, this message translates to:
  /// **'Sync Ticket Tasks'**
  String get syncTicketTasks;

  /// No description provided for @syncToD365.
  ///
  /// In en, this message translates to:
  /// **'Sync to D365'**
  String get syncToD365;

  /// No description provided for @syncToTrade2.
  ///
  /// In en, this message translates to:
  /// **'Sync to Trade2'**
  String get syncToTrade2;

  /// No description provided for @syncWeighbridgeTask.
  ///
  /// In en, this message translates to:
  /// **'Sync Weighbridge Task'**
  String get syncWeighbridgeTask;

  /// No description provided for @synced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get synced;

  /// No description provided for @syncedOn.
  ///
  /// In en, this message translates to:
  /// **'Synced On'**
  String get syncedOn;

  /// No description provided for @syncresourcetoCMMS.
  ///
  /// In en, this message translates to:
  /// **'Sync resource to CMMS'**
  String get syncresourcetoCMMS;

  /// No description provided for @systemAdmin.
  ///
  /// In en, this message translates to:
  /// **'System Admin'**
  String get systemAdmin;

  /// No description provided for @systemCount.
  ///
  /// In en, this message translates to:
  /// **'System Count'**
  String get systemCount;

  /// No description provided for @systemQuantity.
  ///
  /// In en, this message translates to:
  /// **'System Quantity'**
  String get systemQuantity;

  /// No description provided for @systemRole.
  ///
  /// In en, this message translates to:
  /// **'System Role'**
  String get systemRole;

  /// No description provided for @systemRoles.
  ///
  /// In en, this message translates to:
  /// **'System Roles'**
  String get systemRoles;

  /// No description provided for @t3SyncError.
  ///
  /// In en, this message translates to:
  /// **'T3 Sync Error: {errorMessage}'**
  String t3SyncError(Object errorMessage);

  /// No description provided for @t3TicketVersion.
  ///
  /// In en, this message translates to:
  /// **'T3TicketVersion: {version}'**
  String t3TicketVersion(Object version);

  /// No description provided for @tabToScroll.
  ///
  /// In en, this message translates to:
  /// **'Tab To Scroll'**
  String get tabToScroll;

  /// No description provided for @tagAlreadyExist.
  ///
  /// In en, this message translates to:
  /// **'A ‘[tagReason]’ tag already exists for this location.'**
  String get tagAlreadyExist;

  /// No description provided for @tagCategory.
  ///
  /// In en, this message translates to:
  /// **'Tag Category'**
  String get tagCategory;

  /// No description provided for @tagDelta.
  ///
  /// In en, this message translates to:
  /// **'Tag Delta'**
  String get tagDelta;

  /// No description provided for @tagDescription.
  ///
  /// In en, this message translates to:
  /// **'Tag Description'**
  String get tagDescription;

  /// No description provided for @tagName.
  ///
  /// In en, this message translates to:
  /// **'Tag Name'**
  String get tagName;

  /// No description provided for @tagRangeError.
  ///
  /// In en, this message translates to:
  /// **'A ‘[tagReason]’ tag already exists for this GPL from [EffectiveFrom] to [EffectiveTo]. The date range you selected overlaps with this period.'**
  String get tagRangeError;

  /// No description provided for @tagRateError.
  ///
  /// In en, this message translates to:
  /// **'Rate cannot exceed 99999999999999.99'**
  String get tagRateError;

  /// No description provided for @tagReason.
  ///
  /// In en, this message translates to:
  /// **'Tag Reason'**
  String get tagReason;

  /// No description provided for @tagTemplates.
  ///
  /// In en, this message translates to:
  /// **'Tag Templates'**
  String get tagTemplates;

  /// No description provided for @tagTerritory.
  ///
  /// In en, this message translates to:
  /// **'Tag Territory'**
  String get tagTerritory;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tag(s)'**
  String get tags;

  /// No description provided for @taguom.
  ///
  /// In en, this message translates to:
  /// **'Tag UOM'**
  String get taguom;

  /// No description provided for @takeGross.
  ///
  /// In en, this message translates to:
  /// **'Take Gross'**
  String get takeGross;

  /// No description provided for @takeManualWeight.
  ///
  /// In en, this message translates to:
  /// **'Take manual weight'**
  String get takeManualWeight;

  /// No description provided for @takePhotoAndSave.
  ///
  /// In en, this message translates to:
  /// **'Take Photo & Save'**
  String get takePhotoAndSave;

  /// No description provided for @takeTare.
  ///
  /// In en, this message translates to:
  /// **'Take Tare'**
  String get takeTare;

  /// No description provided for @takeWeight.
  ///
  /// In en, this message translates to:
  /// **'Take Weight'**
  String get takeWeight;

  /// No description provided for @takenBy.
  ///
  /// In en, this message translates to:
  /// **'Taken By'**
  String get takenBy;

  /// No description provided for @tapButtonToScan.
  ///
  /// In en, this message translates to:
  /// **'Tap the button below to start scanning'**
  String get tapButtonToScan;

  /// No description provided for @tapToScanACode.
  ///
  /// In en, this message translates to:
  /// **'Tap to scan a code'**
  String get tapToScanACode;

  /// No description provided for @tapToSelectATicket.
  ///
  /// In en, this message translates to:
  /// **'Tap to select a ticket'**
  String get tapToSelectATicket;

  /// No description provided for @tare.
  ///
  /// In en, this message translates to:
  /// **'Tare'**
  String get tare;

  /// No description provided for @tareAndWeightDeduction.
  ///
  /// In en, this message translates to:
  /// **'Tare And Weight Deduction'**
  String get tareAndWeightDeduction;

  /// No description provided for @tareWeight.
  ///
  /// In en, this message translates to:
  /// **'Tare Weight'**
  String get tareWeight;

  /// No description provided for @targetLoad.
  ///
  /// In en, this message translates to:
  /// **'Target Load'**
  String get targetLoad;

  /// No description provided for @targetLoadsVsDelivered.
  ///
  /// In en, this message translates to:
  /// **'Target loads / Delivered loads'**
  String get targetLoadsVsDelivered;

  /// No description provided for @targetLoadsVsDeliverednums.
  ///
  /// In en, this message translates to:
  /// **'Delivered/Target Loads'**
  String get targetLoadsVsDeliverednums;

  /// No description provided for @targetTickets.
  ///
  /// In en, this message translates to:
  /// **'Target Tickets ({count})'**
  String targetTickets(Object count);

  /// No description provided for @targetTonnageVsDelivered.
  ///
  /// In en, this message translates to:
  /// **'Target tonnage / Delivered tonnage'**
  String get targetTonnageVsDelivered;

  /// No description provided for @targetTonnageVsDeliverednums.
  ///
  /// In en, this message translates to:
  /// **'Delivered/Target Tons'**
  String get targetTonnageVsDeliverednums;

  /// No description provided for @targetWeight.
  ///
  /// In en, this message translates to:
  /// **'Target Weight'**
  String get targetWeight;

  /// No description provided for @targetWeightPerLoad.
  ///
  /// In en, this message translates to:
  /// **'Target Weight Per Load'**
  String get targetWeightPerLoad;

  /// No description provided for @taxIdType.
  ///
  /// In en, this message translates to:
  /// **'Tax Id Type'**
  String get taxIdType;

  /// No description provided for @taxMethod.
  ///
  /// In en, this message translates to:
  /// **'Tax Method'**
  String get taxMethod;

  /// No description provided for @team.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get team;

  /// No description provided for @teamDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Team deleted successfully.'**
  String get teamDeletedSuccessfully;

  /// No description provided for @teamHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a team name'**
  String get teamHint;

  /// No description provided for @teamLabel.
  ///
  /// In en, this message translates to:
  /// **'Allocate a team'**
  String get teamLabel;

  /// No description provided for @teamMemberHint.
  ///
  /// In en, this message translates to:
  /// **'Add a user to the Team'**
  String get teamMemberHint;

  /// No description provided for @teamMemberLabel.
  ///
  /// In en, this message translates to:
  /// **'Team Member'**
  String get teamMemberLabel;

  /// No description provided for @teamMembersHint.
  ///
  /// In en, this message translates to:
  /// **'Add a user to the team'**
  String get teamMembersHint;

  /// No description provided for @teamMembersLabel.
  ///
  /// In en, this message translates to:
  /// **'Team Members'**
  String get teamMembersLabel;

  /// No description provided for @teamMembersValidation.
  ///
  /// In en, this message translates to:
  /// **'Please add a user to the team'**
  String get teamMembersValidation;

  /// No description provided for @teamNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a Team Name'**
  String get teamNameHint;

  /// No description provided for @teamNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Team Name'**
  String get teamNameLabel;

  /// No description provided for @teamNameValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a team name'**
  String get teamNameValidation;

  /// No description provided for @teams.
  ///
  /// In en, this message translates to:
  /// **'Teams'**
  String get teams;

  /// No description provided for @techmetCatSettings.
  ///
  /// In en, this message translates to:
  /// **'Techmet CAT'**
  String get techmetCatSettings;

  /// No description provided for @telematics.
  ///
  /// In en, this message translates to:
  /// **'Telematics'**
  String get telematics;

  /// No description provided for @telephone.
  ///
  /// In en, this message translates to:
  /// **'Telephone'**
  String get telephone;

  /// No description provided for @telephoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Telephone Number'**
  String get telephoneNumber;

  /// No description provided for @template.
  ///
  /// In en, this message translates to:
  /// **'Template'**
  String get template;

  /// No description provided for @templateHint.
  ///
  /// In en, this message translates to:
  /// **'Select an existing template'**
  String get templateHint;

  /// No description provided for @templateLabel.
  ///
  /// In en, this message translates to:
  /// **'Selected Template'**
  String get templateLabel;

  /// No description provided for @templateName.
  ///
  /// In en, this message translates to:
  /// **'Template Name'**
  String get templateName;

  /// No description provided for @templateNameNotFoundValidation.
  ///
  /// In en, this message translates to:
  /// **'template name {templateName} not found. Please add to ReferenceData'**
  String templateNameNotFoundValidation(Object templateName);

  /// No description provided for @templateTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a template title'**
  String get templateTitleHint;

  /// No description provided for @templateTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Template title'**
  String get templateTitleLabel;

  /// No description provided for @templateTitleValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a template title'**
  String get templateTitleValidation;

  /// No description provided for @templateValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select an existing template'**
  String get templateValidation;

  /// No description provided for @templates.
  ///
  /// In en, this message translates to:
  /// **'Templates'**
  String get templates;

  /// No description provided for @term.
  ///
  /// In en, this message translates to:
  /// **'Term'**
  String get term;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @territories.
  ///
  /// In en, this message translates to:
  /// **'Territories'**
  String get territories;

  /// No description provided for @territory.
  ///
  /// In en, this message translates to:
  /// **'Territory'**
  String get territory;

  /// No description provided for @territoryCode.
  ///
  /// In en, this message translates to:
  /// **'Territory Code'**
  String get territoryCode;

  /// No description provided for @territoryNotLoaded.
  ///
  /// In en, this message translates to:
  /// **'Territory could not be loaded.'**
  String get territoryNotLoaded;

  /// No description provided for @territoryRequiredToLoadUoms.
  ///
  /// In en, this message translates to:
  /// **'Valid territory required to load UOMs.'**
  String get territoryRequiredToLoadUoms;

  /// No description provided for @test.
  ///
  /// In en, this message translates to:
  /// **'Test'**
  String get test;

  /// No description provided for @testedChemicalOES.
  ///
  /// In en, this message translates to:
  /// **'Tested Chemical OES'**
  String get testedChemicalOES;

  /// No description provided for @testedGrade.
  ///
  /// In en, this message translates to:
  /// **'Tested Grade'**
  String get testedGrade;

  /// No description provided for @testedImpact.
  ///
  /// In en, this message translates to:
  /// **'Tested Impact'**
  String get testedImpact;

  /// No description provided for @testedSubGrade.
  ///
  /// In en, this message translates to:
  /// **'Tested Sub-Grade'**
  String get testedSubGrade;

  /// No description provided for @testedTensile.
  ///
  /// In en, this message translates to:
  /// **'Tested Tensile'**
  String get testedTensile;

  /// No description provided for @testedYield.
  ///
  /// In en, this message translates to:
  /// **'Tested Yield'**
  String get testedYield;

  /// No description provided for @text.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get text;

  /// No description provided for @textCopied.
  ///
  /// In en, this message translates to:
  /// **'Text Copied'**
  String get textCopied;

  /// No description provided for @thankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you'**
  String get thankYou;

  /// No description provided for @theFireRegisterHasBeenCompleted.
  ///
  /// In en, this message translates to:
  /// **'The fire register has been completed'**
  String get theFireRegisterHasBeenCompleted;

  /// No description provided for @theFollowingJobsDeleted.
  ///
  /// In en, this message translates to:
  /// **'The following job(s) need to be deleted'**
  String get theFollowingJobsDeleted;

  /// No description provided for @theFollowingJobsWillBeDeleted.
  ///
  /// In en, this message translates to:
  /// **'The following job(s) will be deleted'**
  String get theFollowingJobsWillBeDeleted;

  /// No description provided for @theProcessNotReversed.
  ///
  /// In en, this message translates to:
  /// **'This process cannot be reversed. Are you sure?'**
  String get theProcessNotReversed;

  /// No description provided for @theSelectedAssets.
  ///
  /// In en, this message translates to:
  /// **'the selected assets'**
  String get theSelectedAssets;

  /// No description provided for @theTicketHasBeenSentToThePrinter.
  ///
  /// In en, this message translates to:
  /// **'The ticket has been sent to the printer'**
  String get theTicketHasBeenSentToThePrinter;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeSubtext.
  ///
  /// In en, this message translates to:
  /// **'System, light, or dark'**
  String get themeSubtext;

  /// No description provided for @thereAre.
  ///
  /// In en, this message translates to:
  /// **'There are'**
  String get thereAre;

  /// No description provided for @thereAreNoGradesOnThisContract.
  ///
  /// In en, this message translates to:
  /// **'There are no grades on this contract'**
  String get thereAreNoGradesOnThisContract;

  /// No description provided for @thereWasAnErrorConfirmingTheLot.
  ///
  /// In en, this message translates to:
  /// **'There was an error confirming the lot'**
  String get thereWasAnErrorConfirmingTheLot;

  /// No description provided for @thereWasAnErrorSavingTheLot.
  ///
  /// In en, this message translates to:
  /// **'There was an error saving the lot'**
  String get thereWasAnErrorSavingTheLot;

  /// No description provided for @thirdPartyHaulier.
  ///
  /// In en, this message translates to:
  /// **'Third Party Haulier'**
  String get thirdPartyHaulier;

  /// No description provided for @thirdPartyHauliers.
  ///
  /// In en, this message translates to:
  /// **'Third Party Hauliers'**
  String get thirdPartyHauliers;

  /// No description provided for @thisAccountHasNoContacts.
  ///
  /// In en, this message translates to:
  /// **'This account has no contacts'**
  String get thisAccountHasNoContacts;

  /// No description provided for @thisAccountHasNoPublications.
  ///
  /// In en, this message translates to:
  /// **'This account has no active Publications'**
  String get thisAccountHasNoPublications;

  /// No description provided for @thisActionCannotBeUndone.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get thisActionCannotBeUndone;

  /// No description provided for @thisActionWillAlsoMarkTheVehicleAs.
  ///
  /// In en, this message translates to:
  /// **'This action will also mark the vehicle as'**
  String get thisActionWillAlsoMarkTheVehicleAs;

  /// No description provided for @thisContact.
  ///
  /// In en, this message translates to:
  /// **'This Contact'**
  String get thisContact;

  /// No description provided for @thisContractIsNotValid.
  ///
  /// In en, this message translates to:
  /// **'This contract is not valid'**
  String get thisContractIsNotValid;

  /// No description provided for @thisIs.
  ///
  /// In en, this message translates to:
  /// **'This is'**
  String get thisIs;

  /// No description provided for @thisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get thisMonth;

  /// No description provided for @thisWeekPlans.
  ///
  /// In en, this message translates to:
  /// **'This Week\'s Plans'**
  String get thisWeekPlans;

  /// No description provided for @thriceADay.
  ///
  /// In en, this message translates to:
  /// **'Thrice a day'**
  String get thriceADay;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @ticket.
  ///
  /// In en, this message translates to:
  /// **'Ticket'**
  String get ticket;

  /// No description provided for @ticketAlreadyAdded.
  ///
  /// In en, this message translates to:
  /// **'Ticket already added to the basket'**
  String get ticketAlreadyAdded;

  /// No description provided for @ticketAlreadyPaid.
  ///
  /// In en, this message translates to:
  /// **'Ticket already paid'**
  String get ticketAlreadyPaid;

  /// No description provided for @ticketCategory.
  ///
  /// In en, this message translates to:
  /// **'Ticket Category'**
  String get ticketCategory;

  /// No description provided for @ticketCompletedOn.
  ///
  /// In en, this message translates to:
  /// **'Ticket Completed On'**
  String get ticketCompletedOn;

  /// No description provided for @ticketCount.
  ///
  /// In en, this message translates to:
  /// **'{ticketCount, plural, other{{ticketCount} Tickets} zero{No Tickets} one{1 Ticket}}'**
  String ticketCount(num ticketCount);

  /// No description provided for @ticketCreated.
  ///
  /// In en, this message translates to:
  /// **'Ticket Created'**
  String get ticketCreated;

  /// No description provided for @ticketDetails.
  ///
  /// In en, this message translates to:
  /// **'Ticket Details'**
  String get ticketDetails;

  /// No description provided for @ticketDiagnostics.
  ///
  /// In en, this message translates to:
  /// **'Ticket Diagnostics'**
  String get ticketDiagnostics;

  /// No description provided for @ticketFinished.
  ///
  /// In en, this message translates to:
  /// **'Ticket Finished'**
  String get ticketFinished;

  /// No description provided for @ticketGallery.
  ///
  /// In en, this message translates to:
  /// **'Ticket Gallery'**
  String get ticketGallery;

  /// No description provided for @ticketHeader.
  ///
  /// In en, this message translates to:
  /// **'Ticket Header'**
  String get ticketHeader;

  /// No description provided for @ticketHeadersSearchIn.
  ///
  /// In en, this message translates to:
  /// **'Ticket Headers Search In'**
  String get ticketHeadersSearchIn;

  /// No description provided for @ticketHistory.
  ///
  /// In en, this message translates to:
  /// **'Ticket History'**
  String get ticketHistory;

  /// No description provided for @ticketId.
  ///
  /// In en, this message translates to:
  /// **'Ticket Id'**
  String get ticketId;

  /// No description provided for @ticketLinePriceBreakup.
  ///
  /// In en, this message translates to:
  /// **'Ticket line price breakup'**
  String get ticketLinePriceBreakup;

  /// No description provided for @ticketLookup.
  ///
  /// In en, this message translates to:
  /// **'Ticket Lookup'**
  String get ticketLookup;

  /// No description provided for @ticketNo.
  ///
  /// In en, this message translates to:
  /// **'Ticket No.'**
  String get ticketNo;

  /// No description provided for @ticketNotFound.
  ///
  /// In en, this message translates to:
  /// **'Ticket could not be found'**
  String get ticketNotFound;

  /// No description provided for @ticketNumber.
  ///
  /// In en, this message translates to:
  /// **'Ticket Number'**
  String get ticketNumber;

  /// No description provided for @ticketNumberCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{No of. Tickets} zero{} one{Ticket Number} }'**
  String ticketNumberCount(num count);

  /// No description provided for @ticketPaymentConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Paying {amount} for {ticketNumbers} by {paymentMode}'**
  String ticketPaymentConfirmation(
    Object amount,
    Object paymentMode,
    Object ticketNumbers,
  );

  /// No description provided for @ticketPayments.
  ///
  /// In en, this message translates to:
  /// **'Ticket Payments'**
  String get ticketPayments;

  /// No description provided for @ticketPrintName.
  ///
  /// In en, this message translates to:
  /// **'Ticket print name'**
  String get ticketPrintName;

  /// No description provided for @ticketPrintType.
  ///
  /// In en, this message translates to:
  /// **'Ticket print type'**
  String get ticketPrintType;

  /// No description provided for @ticketPrints.
  ///
  /// In en, this message translates to:
  /// **'Ticket Prints'**
  String get ticketPrints;

  /// No description provided for @ticketRepricedSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Ticket has be repriced successfully'**
  String get ticketRepricedSuccessful;

  /// No description provided for @ticketSplitFailed.
  ///
  /// In en, this message translates to:
  /// **'Ticket split failed'**
  String get ticketSplitFailed;

  /// No description provided for @ticketSplitLabel.
  ///
  /// In en, this message translates to:
  /// **'Ticket Split'**
  String get ticketSplitLabel;

  /// No description provided for @ticketSplitSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Ticket split sucessfully'**
  String get ticketSplitSuccessfully;

  /// No description provided for @ticketStatus.
  ///
  /// In en, this message translates to:
  /// **'Ticket Status'**
  String get ticketStatus;

  /// No description provided for @ticketSummary.
  ///
  /// In en, this message translates to:
  /// **'Ticket Summary'**
  String get ticketSummary;

  /// No description provided for @ticketSyncInitiated.
  ///
  /// In en, this message translates to:
  /// **'Ticket Sync Initiated'**
  String get ticketSyncInitiated;

  /// No description provided for @ticketSyncedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Ticket synced successfully'**
  String get ticketSyncedSuccessfully;

  /// No description provided for @ticketSystemAdmin.
  ///
  /// In en, this message translates to:
  /// **'System Admin'**
  String get ticketSystemAdmin;

  /// No description provided for @ticketType.
  ///
  /// In en, this message translates to:
  /// **'Ticket Type'**
  String get ticketType;

  /// No description provided for @ticketUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Ticket {ticketId} is Unlocked successfully!'**
  String ticketUnlocked(Object ticketId);

  /// No description provided for @ticketUnpayable.
  ///
  /// In en, this message translates to:
  /// **'Ticket cant be paid'**
  String get ticketUnpayable;

  /// No description provided for @ticketValidationFailedSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Ticket Validation failed for one or more tickets. Can\'t select all'**
  String get ticketValidationFailedSelectAll;

  /// No description provided for @ticketValidationResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Ticket Validation Results'**
  String get ticketValidationResultsTitle;

  /// No description provided for @ticketValidationRulesFailed.
  ///
  /// In en, this message translates to:
  /// **'Ticket Validation rules failed'**
  String get ticketValidationRulesFailed;

  /// No description provided for @ticketWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Ticket #{ticketNumber}'**
  String ticketWithNumber(Object ticketNumber);

  /// No description provided for @tickets.
  ///
  /// In en, this message translates to:
  /// **'Tickets'**
  String get tickets;

  /// No description provided for @ticketsGallery.
  ///
  /// In en, this message translates to:
  /// **'Tickets Gallery'**
  String get ticketsGallery;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @timePeriod.
  ///
  /// In en, this message translates to:
  /// **'Time Period'**
  String get timePeriod;

  /// No description provided for @timeStamp.
  ///
  /// In en, this message translates to:
  /// **'TimeStamp'**
  String get timeStamp;

  /// No description provided for @timeline.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get timeline;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @titleCompletedJobs.
  ///
  /// In en, this message translates to:
  /// **'View Completed Jobs'**
  String get titleCompletedJobs;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @toBeCollectedFrom.
  ///
  /// In en, this message translates to:
  /// **'To be collected from'**
  String get toBeCollectedFrom;

  /// No description provided for @toBeDeliveredTo.
  ///
  /// In en, this message translates to:
  /// **'To be delivered to'**
  String get toBeDeliveredTo;

  /// No description provided for @toBePaidInFullBy.
  ///
  /// In en, this message translates to:
  /// **'To Be Paid In Full By'**
  String get toBePaidInFullBy;

  /// No description provided for @toBeUnpaid.
  ///
  /// In en, this message translates to:
  /// **'To be unpaid'**
  String get toBeUnpaid;

  /// No description provided for @toDateTime.
  ///
  /// In en, this message translates to:
  /// **'To Date Time'**
  String get toDateTime;

  /// No description provided for @toDo.
  ///
  /// In en, this message translates to:
  /// **'To Do'**
  String get toDo;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @todaysPlan.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Plan'**
  String get todaysPlan;

  /// No description provided for @toggleAllGrades.
  ///
  /// In en, this message translates to:
  /// **'Toggle all grades'**
  String get toggleAllGrades;

  /// No description provided for @toleranceCheck.
  ///
  /// In en, this message translates to:
  /// **'Tolerance Check'**
  String get toleranceCheck;

  /// No description provided for @tomorrowsPlan.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow\'s Plan'**
  String get tomorrowsPlan;

  /// No description provided for @tooManyResultsPlease.
  ///
  /// In en, this message translates to:
  /// **'Too many results,\nplease add further search criteria'**
  String get tooManyResultsPlease;

  /// No description provided for @tooShort.
  ///
  /// In en, this message translates to:
  /// **'Too Short'**
  String get tooShort;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @totalAdvanceOffset.
  ///
  /// In en, this message translates to:
  /// **'Total Advance Offset'**
  String get totalAdvanceOffset;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @totalCount.
  ///
  /// In en, this message translates to:
  /// **'Total Count'**
  String get totalCount;

  /// No description provided for @totalDeductions.
  ///
  /// In en, this message translates to:
  /// **'Total Deductions'**
  String get totalDeductions;

  /// No description provided for @totalDelayImpact.
  ///
  /// In en, this message translates to:
  /// **'Total delay impact'**
  String get totalDelayImpact;

  /// No description provided for @totalGrades.
  ///
  /// In en, this message translates to:
  /// **'Total grades'**
  String get totalGrades;

  /// No description provided for @totalJobs.
  ///
  /// In en, this message translates to:
  /// **'Total Jobs'**
  String get totalJobs;

  /// No description provided for @totalLines.
  ///
  /// In en, this message translates to:
  /// **'Total Lines'**
  String get totalLines;

  /// No description provided for @totalLoads.
  ///
  /// In en, this message translates to:
  /// **'Total loads'**
  String get totalLoads;

  /// No description provided for @totalLoadsDisplay.
  ///
  /// In en, this message translates to:
  /// **'Total Loads'**
  String get totalLoadsDisplay;

  /// No description provided for @totalOffset.
  ///
  /// In en, this message translates to:
  /// **'Total Offset'**
  String get totalOffset;

  /// No description provided for @totalOffsetForThisPayment.
  ///
  /// In en, this message translates to:
  /// **'Total Offset for this Payment'**
  String get totalOffsetForThisPayment;

  /// No description provided for @totalOffsetUsed.
  ///
  /// In en, this message translates to:
  /// **'Total Offset used'**
  String get totalOffsetUsed;

  /// No description provided for @totalPaid.
  ///
  /// In en, this message translates to:
  /// **'Total Paid'**
  String get totalPaid;

  /// No description provided for @totalPayable.
  ///
  /// In en, this message translates to:
  /// **'Total Payable'**
  String get totalPayable;

  /// No description provided for @totalPlans.
  ///
  /// In en, this message translates to:
  /// **'Total Plans'**
  String get totalPlans;

  /// No description provided for @totalRemaining.
  ///
  /// In en, this message translates to:
  /// **'Total Remaining'**
  String get totalRemaining;

  /// No description provided for @totalTargetLoadsVsDeliveryLoads.
  ///
  /// In en, this message translates to:
  /// **'Total Target Loads/Delivered Loads'**
  String get totalTargetLoadsVsDeliveryLoads;

  /// No description provided for @totalTargetWeightVsDeliveredWeight.
  ///
  /// In en, this message translates to:
  /// **'Total Target Weight / Delivered Weight'**
  String get totalTargetWeightVsDeliveredWeight;

  /// No description provided for @totalTimeTaken.
  ///
  /// In en, this message translates to:
  /// **'Total Time Taken'**
  String get totalTimeTaken;

  /// No description provided for @totalUsed.
  ///
  /// In en, this message translates to:
  /// **'Total Used'**
  String get totalUsed;

  /// No description provided for @totalValueCantBeAbove.
  ///
  /// In en, this message translates to:
  /// **'*The Total Value of Adjustments CAN NOT be greater than {Amount}'**
  String totalValueCantBeAbove(String Amount);

  /// No description provided for @totalWeight.
  ///
  /// In en, this message translates to:
  /// **'Total Weight'**
  String get totalWeight;

  /// No description provided for @totalWeightError.
  ///
  /// In en, this message translates to:
  /// **'Total weight should be {weight}'**
  String totalWeightError(Object weight);

  /// No description provided for @town.
  ///
  /// In en, this message translates to:
  /// **'Town'**
  String get town;

  /// No description provided for @townOrCity.
  ///
  /// In en, this message translates to:
  /// **'Town or city'**
  String get townOrCity;

  /// No description provided for @traceEnabledKey.
  ///
  /// In en, this message translates to:
  /// **'TraceEnabled'**
  String get traceEnabledKey;

  /// No description provided for @track.
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get track;

  /// No description provided for @trade2.
  ///
  /// In en, this message translates to:
  /// **'trade2'**
  String get trade2;

  /// No description provided for @tradeCustomers.
  ///
  /// In en, this message translates to:
  /// **'Trade Customers'**
  String get tradeCustomers;

  /// No description provided for @tradeIndustryGroup.
  ///
  /// In en, this message translates to:
  /// **'Trade Industry Group'**
  String get tradeIndustryGroup;

  /// No description provided for @tradeRetailSuppliers.
  ///
  /// In en, this message translates to:
  /// **'Trade Retail Suppliers'**
  String get tradeRetailSuppliers;

  /// No description provided for @tradeSuppliers.
  ///
  /// In en, this message translates to:
  /// **'Trade Suppliers'**
  String get tradeSuppliers;

  /// No description provided for @tradeSync.
  ///
  /// In en, this message translates to:
  /// **'Trade Sync'**
  String get tradeSync;

  /// No description provided for @trader.
  ///
  /// In en, this message translates to:
  /// **'TradeR'**
  String get trader;

  /// No description provided for @traderFerrous.
  ///
  /// In en, this message translates to:
  /// **'Trader Ferrous'**
  String get traderFerrous;

  /// No description provided for @traderFerrousPassive.
  ///
  /// In en, this message translates to:
  /// **'Trader Ferrous Passive'**
  String get traderFerrousPassive;

  /// No description provided for @traderIndustryGroup.
  ///
  /// In en, this message translates to:
  /// **'Trader Industry Group'**
  String get traderIndustryGroup;

  /// No description provided for @traderNonFerrous.
  ///
  /// In en, this message translates to:
  /// **'Trader Non Ferrous'**
  String get traderNonFerrous;

  /// No description provided for @traderNonFerrousPassive.
  ///
  /// In en, this message translates to:
  /// **'Trader Non Ferrous Passive'**
  String get traderNonFerrousPassive;

  /// No description provided for @traderPaymentTerms.
  ///
  /// In en, this message translates to:
  /// **'Trader Payment Terms'**
  String get traderPaymentTerms;

  /// No description provided for @trailerAssetNumber.
  ///
  /// In en, this message translates to:
  /// **'Trailer Asset Number'**
  String get trailerAssetNumber;

  /// No description provided for @trailerDetails.
  ///
  /// In en, this message translates to:
  /// **'Trailer Details'**
  String get trailerDetails;

  /// No description provided for @trailerModel.
  ///
  /// In en, this message translates to:
  /// **'Trailer Model'**
  String get trailerModel;

  /// No description provided for @trailerType.
  ///
  /// In en, this message translates to:
  /// **'Trailer Type'**
  String get trailerType;

  /// No description provided for @trailers.
  ///
  /// In en, this message translates to:
  /// **'Trailers'**
  String get trailers;

  /// No description provided for @transactionCount.
  ///
  /// In en, this message translates to:
  /// **'{transactionCount, plural, other{{transactionCount} Transactions} zero{No Transactions} one{1 Transaction}}'**
  String transactionCount(num transactionCount);

  /// No description provided for @transactionSummary.
  ///
  /// In en, this message translates to:
  /// **'Transaction Summary'**
  String get transactionSummary;

  /// No description provided for @transactionTotal.
  ///
  /// In en, this message translates to:
  /// **'Transaction Total'**
  String get transactionTotal;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @transferAlreadyProcess.
  ///
  /// In en, this message translates to:
  /// **'Transfer is already process'**
  String get transferAlreadyProcess;

  /// No description provided for @transferApprovals.
  ///
  /// In en, this message translates to:
  /// **'Transfer Approvals'**
  String get transferApprovals;

  /// No description provided for @transferLine.
  ///
  /// In en, this message translates to:
  /// **'Transfer Line'**
  String get transferLine;

  /// No description provided for @transferOut.
  ///
  /// In en, this message translates to:
  /// **'TransferOut'**
  String get transferOut;

  /// No description provided for @transferString.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transferString;

  /// No description provided for @transferToDepot.
  ///
  /// In en, this message translates to:
  /// **'Transfer To Depot'**
  String get transferToDepot;

  /// No description provided for @transformationEnabled.
  ///
  /// In en, this message translates to:
  /// **'Transformation Enabled'**
  String get transformationEnabled;

  /// No description provided for @transmission.
  ///
  /// In en, this message translates to:
  /// **'Transmission'**
  String get transmission;

  /// No description provided for @transportOffice.
  ///
  /// In en, this message translates to:
  /// **'Transport Office'**
  String get transportOffice;

  /// No description provided for @triage.
  ///
  /// In en, this message translates to:
  /// **'Triage'**
  String get triage;

  /// No description provided for @truck.
  ///
  /// In en, this message translates to:
  /// **'Truck'**
  String get truck;

  /// No description provided for @truckCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Truck created successfully'**
  String get truckCreatedSuccessfully;

  /// No description provided for @truckDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Truck deleted successfully'**
  String get truckDeletedSuccessfully;

  /// No description provided for @truckDetails.
  ///
  /// In en, this message translates to:
  /// **'Truck Details'**
  String get truckDetails;

  /// No description provided for @truckType.
  ///
  /// In en, this message translates to:
  /// **'Truck type'**
  String get truckType;

  /// No description provided for @truckUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Truck updated successfully'**
  String get truckUpdatedSuccessfully;

  /// No description provided for @truckUtilization.
  ///
  /// In en, this message translates to:
  /// **'Truck Utilization'**
  String get truckUtilization;

  /// No description provided for @trucks.
  ///
  /// In en, this message translates to:
  /// **'Trucks'**
  String get trucks;

  /// No description provided for @trueText.
  ///
  /// In en, this message translates to:
  /// **'true'**
  String get trueText;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @tuxedo.
  ///
  /// In en, this message translates to:
  /// **'Tuxedo'**
  String get tuxedo;

  /// No description provided for @twiceADay.
  ///
  /// In en, this message translates to:
  /// **'Twice a day'**
  String get twiceADay;

  /// No description provided for @twist.
  ///
  /// In en, this message translates to:
  /// **'Twist'**
  String get twist;

  /// No description provided for @twpl.
  ///
  /// In en, this message translates to:
  /// **'TWPL'**
  String get twpl;

  /// No description provided for @twplTooltip.
  ///
  /// In en, this message translates to:
  /// **'This is the total weight per load that we are expecting to be able to calculate a Load count based on the target weight'**
  String get twplTooltip;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @typeAheadMessageAssets.
  ///
  /// In en, this message translates to:
  /// **'No assets found for depot.'**
  String get typeAheadMessageAssets;

  /// No description provided for @typeAheadMessageDepots.
  ///
  /// In en, this message translates to:
  /// **'No depots found.'**
  String get typeAheadMessageDepots;

  /// No description provided for @typeAheadMessageLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading ...'**
  String get typeAheadMessageLoading;

  /// No description provided for @typeAheadMessageYards.
  ///
  /// In en, this message translates to:
  /// **'No yards found'**
  String get typeAheadMessageYards;

  /// No description provided for @typeToSearchAddress.
  ///
  /// In en, this message translates to:
  /// **'Start typing to search address...'**
  String get typeToSearchAddress;

  /// No description provided for @typeofJob.
  ///
  /// In en, this message translates to:
  /// **'Type of Job'**
  String get typeofJob;

  /// No description provided for @unAssign.
  ///
  /// In en, this message translates to:
  /// **'Unassign'**
  String get unAssign;

  /// No description provided for @unClasses.
  ///
  /// In en, this message translates to:
  /// **'UN class(es)'**
  String get unClasses;

  /// No description provided for @unDispose.
  ///
  /// In en, this message translates to:
  /// **'UnDispose'**
  String get unDispose;

  /// No description provided for @unDisposeConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Un- Dispose this asset?'**
  String get unDisposeConfirmation;

  /// No description provided for @unIdentificationNumbers.
  ///
  /// In en, this message translates to:
  /// **'UN identification numbers'**
  String get unIdentificationNumbers;

  /// No description provided for @unableToDeleteDiscrepancy.
  ///
  /// In en, this message translates to:
  /// **'Unable to delete image(s) due to attached discrepancy'**
  String get unableToDeleteDiscrepancy;

  /// No description provided for @unableToExtractDocumentType.
  ///
  /// In en, this message translates to:
  /// **'Unable to extract document information. Please upload a valid {documentType}.'**
  String unableToExtractDocumentType(Object documentType);

  /// No description provided for @unableToPrint.
  ///
  /// In en, this message translates to:
  /// **'Unable to print'**
  String get unableToPrint;

  /// No description provided for @unableToPrintRemittance.
  ///
  /// In en, this message translates to:
  /// **'Unable to print remittance.'**
  String get unableToPrintRemittance;

  /// No description provided for @unableToRefreshSnapshots.
  ///
  /// In en, this message translates to:
  /// **'Unable to refresh snapshots'**
  String get unableToRefreshSnapshots;

  /// No description provided for @unableToSaveTheExportedData.
  ///
  /// In en, this message translates to:
  /// **'Unable to save the exported data'**
  String get unableToSaveTheExportedData;

  /// No description provided for @unableToSyncTickets.
  ///
  /// In en, this message translates to:
  /// **'Unable to Sync tickets: {ticketIds}'**
  String unableToSyncTickets(Object ticketIds);

  /// No description provided for @unableToUnlock.
  ///
  /// In en, this message translates to:
  /// **'We are unable To Unlock ticket: {ticketId}'**
  String unableToUnlock(Object ticketId);

  /// No description provided for @unassignJob.
  ///
  /// In en, this message translates to:
  /// **'Unassign Job'**
  String get unassignJob;

  /// No description provided for @unassigned.
  ///
  /// In en, this message translates to:
  /// **'Unassigned'**
  String get unassigned;

  /// No description provided for @unassignedJobs.
  ///
  /// In en, this message translates to:
  /// **'Available Jobs'**
  String get unassignedJobs;

  /// No description provided for @underTheScrapMetalAct.
  ///
  /// In en, this message translates to:
  /// **'*Under the Scrap Metal Dealers Act 2013'**
  String get underTheScrapMetalAct;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @undoPart.
  ///
  /// In en, this message translates to:
  /// **'Undo Part'**
  String get undoPart;

  /// No description provided for @unfixed.
  ///
  /// In en, this message translates to:
  /// **'Unfixed'**
  String get unfixed;

  /// No description provided for @ungroupJob.
  ///
  /// In en, this message translates to:
  /// **'Ungroup Jobs'**
  String get ungroupJob;

  /// No description provided for @unhandled.
  ///
  /// In en, this message translates to:
  /// **'Unhandled'**
  String get unhandled;

  /// No description provided for @uninsured.
  ///
  /// In en, this message translates to:
  /// **'Uninsured'**
  String get uninsured;

  /// No description provided for @uniqueNumbers.
  ///
  /// In en, this message translates to:
  /// **'Unique Numbers'**
  String get uniqueNumbers;

  /// No description provided for @uniqueNumbersToolTip.
  ///
  /// In en, this message translates to:
  /// **'Input format should match:\'                       \'\n123000: UNM100 123001: UNM101'**
  String get uniqueNumbersToolTip;

  /// No description provided for @unitConverter.
  ///
  /// In en, this message translates to:
  /// **'Unit Converter'**
  String get unitConverter;

  /// No description provided for @unitCost.
  ///
  /// In en, this message translates to:
  /// **'Unit Cost'**
  String get unitCost;

  /// No description provided for @unitCostPaid.
  ///
  /// In en, this message translates to:
  /// **'Unit Cost Paid'**
  String get unitCostPaid;

  /// No description provided for @unitMm.
  ///
  /// In en, this message translates to:
  /// **'mm'**
  String get unitMm;

  /// No description provided for @unitOfMeasurement.
  ///
  /// In en, this message translates to:
  /// **'Unit Of Measurement'**
  String get unitOfMeasurement;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @unknownCodeType.
  ///
  /// In en, this message translates to:
  /// **'Unknown Code Type'**
  String get unknownCodeType;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// No description provided for @unknownFailure.
  ///
  /// In en, this message translates to:
  /// **'Unknown Failure'**
  String get unknownFailure;

  /// No description provided for @unknownSerialNumber.
  ///
  /// In en, this message translates to:
  /// **'Unknown Serial Number'**
  String get unknownSerialNumber;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @unlockJobFromScheduledDate.
  ///
  /// In en, this message translates to:
  /// **'Unlock job from scheduled date'**
  String get unlockJobFromScheduledDate;

  /// No description provided for @unlockedJob.
  ///
  /// In en, this message translates to:
  /// **'Unlocked Job'**
  String get unlockedJob;

  /// No description provided for @unpay.
  ///
  /// In en, this message translates to:
  /// **'Unpay'**
  String get unpay;

  /// No description provided for @unpayConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Unpay Confirmation'**
  String get unpayConfirmation;

  /// No description provided for @unpayConfirmationMsg.
  ///
  /// In en, this message translates to:
  /// **'Following transactions will be unpaid.'**
  String get unpayConfirmationMsg;

  /// No description provided for @unpaySuccess.
  ///
  /// In en, this message translates to:
  /// **'Unpay process initialted successfully'**
  String get unpaySuccess;

  /// No description provided for @unpayTicket.
  ///
  /// In en, this message translates to:
  /// **'Unpay Ticket'**
  String get unpayTicket;

  /// No description provided for @unpriced.
  ///
  /// In en, this message translates to:
  /// **'Unpriced'**
  String get unpriced;

  /// No description provided for @unsaved.
  ///
  /// In en, this message translates to:
  /// **'Unsaved Changes'**
  String get unsaved;

  /// No description provided for @unsavedChangesMsg.
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes. Do you want to save before exiting?'**
  String get unsavedChangesMsg;

  /// No description provided for @unsupportedVehicle.
  ///
  /// In en, this message translates to:
  /// **'Unsupported Vehicle'**
  String get unsupportedVehicle;

  /// No description provided for @unsynced.
  ///
  /// In en, this message translates to:
  /// **'Unsynced'**
  String get unsynced;

  /// No description provided for @uom.
  ///
  /// In en, this message translates to:
  /// **'UOM'**
  String get uom;

  /// No description provided for @uomMismatchError.
  ///
  /// In en, this message translates to:
  /// **'The rate unit you entered does not match the selected account prices.'**
  String get uomMismatchError;

  /// No description provided for @upcomingVOR.
  ///
  /// In en, this message translates to:
  /// **'Upcoming VOR'**
  String get upcomingVOR;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updateAccount.
  ///
  /// In en, this message translates to:
  /// **'Update Account'**
  String get updateAccount;

  /// No description provided for @updateAssetNumberMsg.
  ///
  /// In en, this message translates to:
  /// **'Please update Asset No.'**
  String get updateAssetNumberMsg;

  /// No description provided for @updateDriverEvents.
  ///
  /// In en, this message translates to:
  /// **'Update Driver Events'**
  String get updateDriverEvents;

  /// No description provided for @updatePaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Update Payment Method'**
  String get updatePaymentMethod;

  /// No description provided for @updateProductEwcSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Product EWC updated successfully'**
  String get updateProductEwcSuccessMessage;

  /// No description provided for @updateProofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'Update Proof Of Address'**
  String get updateProofOfAddress;

  /// No description provided for @updateProofOfIdentity.
  ///
  /// In en, this message translates to:
  /// **'Update Proof of Identity'**
  String get updateProofOfIdentity;

  /// No description provided for @updateStandingOrder.
  ///
  /// In en, this message translates to:
  /// **'Update Standing Order'**
  String get updateStandingOrder;

  /// No description provided for @updateTagEndDateError.
  ///
  /// In en, this message translates to:
  /// **'Error in updating tag end date.'**
  String get updateTagEndDateError;

  /// No description provided for @updateTagEndDateRangeError.
  ///
  /// In en, this message translates to:
  /// **'Tag end date should be greater than start date [startDate].'**
  String get updateTagEndDateRangeError;

  /// No description provided for @updateTruck.
  ///
  /// In en, this message translates to:
  /// **'Update Truck'**
  String get updateTruck;

  /// No description provided for @updateYourPreferences.
  ///
  /// In en, this message translates to:
  /// **'Update your preferences'**
  String get updateYourPreferences;

  /// No description provided for @updated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updated;

  /// No description provided for @updatedBy.
  ///
  /// In en, this message translates to:
  /// **'Updated By'**
  String get updatedBy;

  /// No description provided for @updatedDate.
  ///
  /// In en, this message translates to:
  /// **'Updated date'**
  String get updatedDate;

  /// No description provided for @updatedPartial.
  ///
  /// In en, this message translates to:
  /// **'Updated Partial'**
  String get updatedPartial;

  /// No description provided for @updatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Updated successfully'**
  String get updatedSuccessfully;

  /// No description provided for @updatingVehicleQuoteFor.
  ///
  /// In en, this message translates to:
  /// **'Updating Vehicle Quote For - '**
  String get updatingVehicleQuoteFor;

  /// No description provided for @upliftPoRaised.
  ///
  /// In en, this message translates to:
  /// **'Uplift PO Raised'**
  String get upliftPoRaised;

  /// No description provided for @upliftPrice.
  ///
  /// In en, this message translates to:
  /// **'Uplift Price'**
  String get upliftPrice;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @uploadConsignmentNote.
  ///
  /// In en, this message translates to:
  /// **'Upload Consignment Note'**
  String get uploadConsignmentNote;

  /// No description provided for @uploadCreditNote.
  ///
  /// In en, this message translates to:
  /// **'Please upload the credit note.'**
  String get uploadCreditNote;

  /// No description provided for @uploadCreditNoteMessage.
  ///
  /// In en, this message translates to:
  /// **'Please upload Credit Note'**
  String get uploadCreditNoteMessage;

  /// No description provided for @uploadCreditNoteTitle.
  ///
  /// In en, this message translates to:
  /// **'Upload Credit Note'**
  String get uploadCreditNoteTitle;

  /// No description provided for @uploadDate.
  ///
  /// In en, this message translates to:
  /// **'Upload Date'**
  String get uploadDate;

  /// No description provided for @uploadDocument.
  ///
  /// In en, this message translates to:
  /// **'Upload Document'**
  String get uploadDocument;

  /// No description provided for @uploadDocumentIdentificationHeader.
  ///
  /// In en, this message translates to:
  /// **'Upload Document/Identification'**
  String get uploadDocumentIdentificationHeader;

  /// No description provided for @uploadIdDocument.
  ///
  /// In en, this message translates to:
  /// **'Upload Id Document'**
  String get uploadIdDocument;

  /// No description provided for @uploadInvoice.
  ///
  /// In en, this message translates to:
  /// **'Please upload the Invoice'**
  String get uploadInvoice;

  /// No description provided for @uploadInvoiceError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while uploading invoice.'**
  String get uploadInvoiceError;

  /// No description provided for @uploadInvoiceMessage.
  ///
  /// In en, this message translates to:
  /// **'Please upload Invoice'**
  String get uploadInvoiceMessage;

  /// No description provided for @uploadInvoiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Upload Invoice'**
  String get uploadInvoiceTitle;

  /// No description provided for @uploadProofOfAddress.
  ///
  /// In en, this message translates to:
  /// **'Upload Proof Of Address'**
  String get uploadProofOfAddress;

  /// No description provided for @uploadProofOfIdentity.
  ///
  /// In en, this message translates to:
  /// **'Upload Proof of Identity'**
  String get uploadProofOfIdentity;

  /// No description provided for @uploadVINDocumentAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Please upload VIN document'**
  String get uploadVINDocumentAlertMessage;

  /// No description provided for @uploadVRNDocumentAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Please upload VRN document'**
  String get uploadVRNDocumentAlertMessage;

  /// No description provided for @uploadYourIDDocuments.
  ///
  /// In en, this message translates to:
  /// **'Update your ID documents'**
  String get uploadYourIDDocuments;

  /// No description provided for @uploads.
  ///
  /// In en, this message translates to:
  /// **'Uploads'**
  String get uploads;

  /// No description provided for @usableWeight.
  ///
  /// In en, this message translates to:
  /// **'Usable Weight'**
  String get usableWeight;

  /// No description provided for @usableWeightW2.
  ///
  /// In en, this message translates to:
  /// **'Usable Weight (W2)'**
  String get usableWeightW2;

  /// No description provided for @useCamera.
  ///
  /// In en, this message translates to:
  /// **'Use Camera'**
  String get useCamera;

  /// No description provided for @useDeliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Use Delivery Address'**
  String get useDeliveryAddress;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @userHasBeenAssigned.
  ///
  /// In en, this message translates to:
  /// **'Job(s) has been assigned to user'**
  String get userHasBeenAssigned;

  /// No description provided for @userHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a user name'**
  String get userHint;

  /// No description provided for @userId.
  ///
  /// In en, this message translates to:
  /// **'User Id'**
  String get userId;

  /// No description provided for @userLabel.
  ///
  /// In en, this message translates to:
  /// **'Allocate a user'**
  String get userLabel;

  /// No description provided for @userPreferences.
  ///
  /// In en, this message translates to:
  /// **'User Preferences'**
  String get userPreferences;

  /// No description provided for @userValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a user'**
  String get userValidation;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'User name'**
  String get username;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @utilityBill.
  ///
  /// In en, this message translates to:
  /// **'Utility Bill'**
  String get utilityBill;

  /// No description provided for @v5.
  ///
  /// In en, this message translates to:
  /// **'V5'**
  String get v5;

  /// No description provided for @v5LogBook.
  ///
  /// In en, this message translates to:
  /// **'V5 Log Book'**
  String get v5LogBook;

  /// No description provided for @validFor5Min.
  ///
  /// In en, this message translates to:
  /// **'Valid for 5 minutes only'**
  String get validFor5Min;

  /// No description provided for @validFrom.
  ///
  /// In en, this message translates to:
  /// **'Valid From'**
  String get validFrom;

  /// No description provided for @validId.
  ///
  /// In en, this message translates to:
  /// **'Valid ID'**
  String get validId;

  /// No description provided for @validTill.
  ///
  /// In en, this message translates to:
  /// **'Valid Till'**
  String get validTill;

  /// No description provided for @validTo.
  ///
  /// In en, this message translates to:
  /// **'Valid To'**
  String get validTo;

  /// No description provided for @validUKId.
  ///
  /// In en, this message translates to:
  /// **'Valid UK ID'**
  String get validUKId;

  /// No description provided for @validWarning.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid warning message'**
  String get validWarning;

  /// No description provided for @validate.
  ///
  /// In en, this message translates to:
  /// **'Validate'**
  String get validate;

  /// No description provided for @validateButtonText.
  ///
  /// In en, this message translates to:
  /// **'Validate'**
  String get validateButtonText;

  /// No description provided for @validateBySignature.
  ///
  /// In en, this message translates to:
  /// **'Validate by signature'**
  String get validateBySignature;

  /// No description provided for @validateByWorkOrder.
  ///
  /// In en, this message translates to:
  /// **'Validate by work order'**
  String get validateByWorkOrder;

  /// No description provided for @validateNumericMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid numeric value'**
  String get validateNumericMessage;

  /// No description provided for @validateTimeMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid time'**
  String get validateTimeMessage;

  /// No description provided for @validateVehicleDetails.
  ///
  /// In en, this message translates to:
  /// **'Validate Vehicle Details'**
  String get validateVehicleDetails;

  /// No description provided for @validateVin.
  ///
  /// In en, this message translates to:
  /// **'Validate VIN'**
  String get validateVin;

  /// No description provided for @validating.
  ///
  /// In en, this message translates to:
  /// **'Validating'**
  String get validating;

  /// No description provided for @validationAddFinishedGoods.
  ///
  /// In en, this message translates to:
  /// **'Please add products for Finished Goods'**
  String get validationAddFinishedGoods;

  /// No description provided for @validationAddRawMaterials.
  ///
  /// In en, this message translates to:
  /// **'Please add products for Raw Materials'**
  String get validationAddRawMaterials;

  /// No description provided for @validationAsset.
  ///
  /// In en, this message translates to:
  /// **'Please select an asset'**
  String get validationAsset;

  /// No description provided for @validationDepot.
  ///
  /// In en, this message translates to:
  /// **'Please select a depot'**
  String get validationDepot;

  /// No description provided for @validationDescription.
  ///
  /// In en, this message translates to:
  /// **'Please enter a description'**
  String get validationDescription;

  /// No description provided for @validationErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'Please correct the validation error(s).'**
  String get validationErrorMsg;

  /// No description provided for @validationFailed.
  ///
  /// In en, this message translates to:
  /// **'Validation Failed'**
  String get validationFailed;

  /// No description provided for @validationFillBasicDetails.
  ///
  /// In en, this message translates to:
  /// **'Please fill the basic details'**
  String get validationFillBasicDetails;

  /// No description provided for @validationRequestType.
  ///
  /// In en, this message translates to:
  /// **'Please select a maintenance request type'**
  String get validationRequestType;

  /// No description provided for @validationServiceLevel.
  ///
  /// In en, this message translates to:
  /// **'Please select a service level'**
  String get validationServiceLevel;

  /// No description provided for @validationUrlStartsWith.
  ///
  /// In en, this message translates to:
  /// **'Must start with http:// or https://'**
  String get validationUrlStartsWith;

  /// No description provided for @valuation.
  ///
  /// In en, this message translates to:
  /// **'Valuation'**
  String get valuation;

  /// No description provided for @value.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get value;

  /// No description provided for @valueDiff.
  ///
  /// In en, this message translates to:
  /// **'Value Diff'**
  String get valueDiff;

  /// No description provided for @valueOffered.
  ///
  /// In en, this message translates to:
  /// **'Value Offered'**
  String get valueOffered;

  /// No description provided for @variant.
  ///
  /// In en, this message translates to:
  /// **'Variant'**
  String get variant;

  /// No description provided for @vatClass.
  ///
  /// In en, this message translates to:
  /// **'Vat Class'**
  String get vatClass;

  /// No description provided for @vatReg.
  ///
  /// In en, this message translates to:
  /// **'VAT Registration'**
  String get vatReg;

  /// No description provided for @vatRegNumber.
  ///
  /// In en, this message translates to:
  /// **'VAT Reg Number'**
  String get vatRegNumber;

  /// No description provided for @vatRegistered.
  ///
  /// In en, this message translates to:
  /// **'VAT Registered'**
  String get vatRegistered;

  /// No description provided for @vehicle.
  ///
  /// In en, this message translates to:
  /// **'Vehicle'**
  String get vehicle;

  /// No description provided for @vehicleAcquisition.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Acquisition'**
  String get vehicleAcquisition;

  /// No description provided for @vehicleAlreadyAdded.
  ///
  /// In en, this message translates to:
  /// **'Vehicle already added'**
  String get vehicleAlreadyAdded;

  /// No description provided for @vehicleAssessment.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Assessment'**
  String get vehicleAssessment;

  /// No description provided for @vehicleDetails.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Details'**
  String get vehicleDetails;

  /// No description provided for @vehicleDetailsRequired.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Details Required'**
  String get vehicleDetailsRequired;

  /// No description provided for @vehicleDocuments.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Documents'**
  String get vehicleDocuments;

  /// No description provided for @vehicleInfo.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Info'**
  String get vehicleInfo;

  /// No description provided for @vehicleInformation.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Information'**
  String get vehicleInformation;

  /// No description provided for @vehicleIsNowSuccessfullyDismantled.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is now successfully dismantled'**
  String get vehicleIsNowSuccessfullyDismantled;

  /// No description provided for @vehicleNotFound.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Not Found'**
  String get vehicleNotFound;

  /// No description provided for @vehicleParts.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Parts'**
  String get vehicleParts;

  /// No description provided for @vehiclePictures.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Pictures'**
  String get vehiclePictures;

  /// No description provided for @vehicleProof.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Proof'**
  String get vehicleProof;

  /// No description provided for @vehicleQuotedFor.
  ///
  /// In en, this message translates to:
  /// **'Quote {batchQuoteId} for {accountNo} contains this vehicle, would you like to load this quote?'**
  String vehicleQuotedFor(String accountNo, int batchQuoteId);

  /// No description provided for @vehicleReg.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Reg'**
  String get vehicleReg;

  /// No description provided for @vehicleRegistration.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Registration'**
  String get vehicleRegistration;

  /// No description provided for @vehicles.
  ///
  /// In en, this message translates to:
  /// **'Vehicles'**
  String get vehicles;

  /// No description provided for @vehiclesAwaiting.
  ///
  /// In en, this message translates to:
  /// **'Vehicles awaiting inspection'**
  String get vehiclesAwaiting;

  /// No description provided for @vehiclesQuoted.
  ///
  /// In en, this message translates to:
  /// **'Vehicle(s) Quoted'**
  String get vehiclesQuoted;

  /// No description provided for @vehiclesSelected.
  ///
  /// In en, this message translates to:
  /// **'Vehicles Selected'**
  String get vehiclesSelected;

  /// No description provided for @vendorName.
  ///
  /// In en, this message translates to:
  /// **'Vendor Name'**
  String get vendorName;

  /// No description provided for @verificationEmailSubjectHintNote.
  ///
  /// In en, this message translates to:
  /// **'Look out for an email in your {emailAddress} inbox with the subject line: '**
  String verificationEmailSubjectHintNote(Object emailAddress);

  /// No description provided for @verificationItems.
  ///
  /// In en, this message translates to:
  /// **'Verification Item(s)'**
  String get verificationItems;

  /// No description provided for @verificationType.
  ///
  /// In en, this message translates to:
  /// **'Verification Type'**
  String get verificationType;

  /// No description provided for @videoUrl.
  ///
  /// In en, this message translates to:
  /// **'Video URL'**
  String get videoUrl;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @viewCount.
  ///
  /// In en, this message translates to:
  /// **'View Count'**
  String get viewCount;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @viewDocuments.
  ///
  /// In en, this message translates to:
  /// **'View Documents'**
  String get viewDocuments;

  /// No description provided for @viewFireRollCallLogs.
  ///
  /// In en, this message translates to:
  /// **'View Fire Roll Call Logs'**
  String get viewFireRollCallLogs;

  /// No description provided for @viewGrid.
  ///
  /// In en, this message translates to:
  /// **'Grid View'**
  String get viewGrid;

  /// No description provided for @viewImages.
  ///
  /// In en, this message translates to:
  /// **'View Images'**
  String get viewImages;

  /// No description provided for @viewJson.
  ///
  /// In en, this message translates to:
  /// **'View Json'**
  String get viewJson;

  /// No description provided for @viewList.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get viewList;

  /// No description provided for @viewMissingFromMusterPoint.
  ///
  /// In en, this message translates to:
  /// **'View staff missing from muster point'**
  String get viewMissingFromMusterPoint;

  /// No description provided for @viewPdf.
  ///
  /// In en, this message translates to:
  /// **'View PDF'**
  String get viewPdf;

  /// No description provided for @viewPrepayCard.
  ///
  /// In en, this message translates to:
  /// **'View Prepay Card'**
  String get viewPrepayCard;

  /// No description provided for @viewPunches.
  ///
  /// In en, this message translates to:
  /// **'View Punches In/Out'**
  String get viewPunches;

  /// No description provided for @viewSavedLogs.
  ///
  /// In en, this message translates to:
  /// **'View Saved Logs'**
  String get viewSavedLogs;

  /// No description provided for @viewVisitorDetails.
  ///
  /// In en, this message translates to:
  /// **'View visitor details'**
  String get viewVisitorDetails;

  /// No description provided for @viewWeights.
  ///
  /// In en, this message translates to:
  /// **'View Weights'**
  String get viewWeights;

  /// No description provided for @vihbNumber.
  ///
  /// In en, this message translates to:
  /// **'VIHB Number'**
  String get vihbNumber;

  /// No description provided for @vin.
  ///
  /// In en, this message translates to:
  /// **'VIN'**
  String get vin;

  /// No description provided for @vinDesc.
  ///
  /// In en, this message translates to:
  /// **'Vin Desc'**
  String get vinDesc;

  /// No description provided for @vinNumber.
  ///
  /// In en, this message translates to:
  /// **'VIN Number'**
  String get vinNumber;

  /// No description provided for @vinNumberIsNotValid.
  ///
  /// In en, this message translates to:
  /// **'Vin number is not valid'**
  String get vinNumberIsNotValid;

  /// No description provided for @vinScrap.
  ///
  /// In en, this message translates to:
  /// **'VIN Scrap'**
  String get vinScrap;

  /// No description provided for @vinScrapQuote.
  ///
  /// In en, this message translates to:
  /// **'VIN Scrap Quote'**
  String get vinScrapQuote;

  /// No description provided for @vinUnreadable.
  ///
  /// In en, this message translates to:
  /// **'VIN Unreadable'**
  String get vinUnreadable;

  /// No description provided for @vinVerification.
  ///
  /// In en, this message translates to:
  /// **'VIN Verification (last 4 digits)'**
  String get vinVerification;

  /// No description provided for @vinsFound.
  ///
  /// In en, this message translates to:
  /// **'VINs found'**
  String get vinsFound;

  /// No description provided for @visibleToDispatchersNote.
  ///
  /// In en, this message translates to:
  /// **'This is visible to dispatchers only.'**
  String get visibleToDispatchersNote;

  /// No description provided for @visitFrequency.
  ///
  /// In en, this message translates to:
  /// **'Visit Frequency'**
  String get visitFrequency;

  /// No description provided for @visitor.
  ///
  /// In en, this message translates to:
  /// **'Visitor'**
  String get visitor;

  /// No description provided for @visitorCompanyName.
  ///
  /// In en, this message translates to:
  /// **'Visitor Company name'**
  String get visitorCompanyName;

  /// No description provided for @visitorHost.
  ///
  /// In en, this message translates to:
  /// **'Visitor Host'**
  String get visitorHost;

  /// No description provided for @visitorInfo.
  ///
  /// In en, this message translates to:
  /// **'Visitor info'**
  String get visitorInfo;

  /// No description provided for @visitorPhoneNo.
  ///
  /// In en, this message translates to:
  /// **'Visitor phone no'**
  String get visitorPhoneNo;

  /// No description provided for @visitorVehicleReg.
  ///
  /// In en, this message translates to:
  /// **'Visitor vehicle reg'**
  String get visitorVehicleReg;

  /// No description provided for @visual.
  ///
  /// In en, this message translates to:
  /// **'Visual'**
  String get visual;

  /// No description provided for @volume.
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get volume;

  /// No description provided for @vorCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'VOR Schedule Created successfully'**
  String get vorCreatedSuccessfully;

  /// No description provided for @vorDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'VOR Schedule Deleted successfully'**
  String get vorDeletedSuccessfully;

  /// No description provided for @vorSchedule.
  ///
  /// In en, this message translates to:
  /// **'VOR Schedules'**
  String get vorSchedule;

  /// No description provided for @vorScheduleUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'VOR Schedule Updated successfully'**
  String get vorScheduleUpdatedSuccessfully;

  /// No description provided for @vorSelectionMessage.
  ///
  /// In en, this message translates to:
  /// **'*The VOR will be applied to selected '**
  String get vorSelectionMessage;

  /// No description provided for @vorUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update VOR Schedule'**
  String get vorUpdate;

  /// No description provided for @vrm.
  ///
  /// In en, this message translates to:
  /// **'VRM'**
  String get vrm;

  /// No description provided for @vrmAlreadyInUseValidation.
  ///
  /// In en, this message translates to:
  /// **'VRM already in use. Please change the VRM and try again.'**
  String get vrmAlreadyInUseValidation;

  /// No description provided for @vrn.
  ///
  /// In en, this message translates to:
  /// **'VRN'**
  String get vrn;

  /// No description provided for @vrnIsNotValid.
  ///
  /// In en, this message translates to:
  /// **'VRN is not valid'**
  String get vrnIsNotValid;

  /// No description provided for @vrnScrap.
  ///
  /// In en, this message translates to:
  /// **'VRN Scrap'**
  String get vrnScrap;

  /// No description provided for @vrnScrapQuote.
  ///
  /// In en, this message translates to:
  /// **'VRN Scrap Quote'**
  String get vrnScrapQuote;

  /// No description provided for @vrnsFound.
  ///
  /// In en, this message translates to:
  /// **'VRN\'s found'**
  String get vrnsFound;

  /// No description provided for @vrnsNotFound.
  ///
  /// In en, this message translates to:
  /// **'VRNs not found'**
  String get vrnsNotFound;

  /// No description provided for @w9Received.
  ///
  /// In en, this message translates to:
  /// **'W-9 Received'**
  String get w9Received;

  /// No description provided for @waitingForApproval.
  ///
  /// In en, this message translates to:
  /// **'Waiting for approval'**
  String get waitingForApproval;

  /// No description provided for @waitingForPosting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for Posting'**
  String get waitingForPosting;

  /// No description provided for @walletActivated.
  ///
  /// In en, this message translates to:
  /// **'Wallet Activated'**
  String get walletActivated;

  /// No description provided for @wantToBeContactedByPost.
  ///
  /// In en, this message translates to:
  /// **'Yes, I would like to be contacted by post'**
  String get wantToBeContactedByPost;

  /// No description provided for @warn.
  ///
  /// In en, this message translates to:
  /// **'Warn'**
  String get warn;

  /// No description provided for @warnWeighbridgeGroupAlreadyExistsForYard.
  ///
  /// In en, this message translates to:
  /// **'A Weighbridge Group for this yard already exists.'**
  String get warnWeighbridgeGroupAlreadyExistsForYard;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @warningAddCollectedTag.
  ///
  /// In en, this message translates to:
  /// **'Warning: Adding Tag'**
  String get warningAddCollectedTag;

  /// No description provided for @warningDeleteTag.
  ///
  /// In en, this message translates to:
  /// **'Warning: Deleting Tag'**
  String get warningDeleteTag;

  /// No description provided for @warnings.
  ///
  /// In en, this message translates to:
  /// **'Warnings'**
  String get warnings;

  /// No description provided for @waste.
  ///
  /// In en, this message translates to:
  /// **'Waste'**
  String get waste;

  /// No description provided for @wasteCarrierRegNo.
  ///
  /// In en, this message translates to:
  /// **'Waste Carrier Reg No'**
  String get wasteCarrierRegNo;

  /// No description provided for @wasteDesc.
  ///
  /// In en, this message translates to:
  /// **'Desc. of Waste'**
  String get wasteDesc;

  /// No description provided for @wasteManagementOpRd.
  ///
  /// In en, this message translates to:
  /// **'Waste Management operation (R/D)'**
  String get wasteManagementOpRd;

  /// No description provided for @wasteProducer.
  ///
  /// In en, this message translates to:
  /// **'Waste Producer'**
  String get wasteProducer;

  /// No description provided for @wasteProducerAddressValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the address of the waste producer'**
  String get wasteProducerAddressValidationText;

  /// No description provided for @wasteProducerPostcodeValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the postcode of the waste producer'**
  String get wasteProducerPostcodeValidationText;

  /// No description provided for @wasteReceivedBy.
  ///
  /// In en, this message translates to:
  /// **'Waste received by'**
  String get wasteReceivedBy;

  /// No description provided for @wasteReceiver.
  ///
  /// In en, this message translates to:
  /// **'Waste Receiver'**
  String get wasteReceiver;

  /// No description provided for @wasteReceiverAddressValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the address of the waste receiver'**
  String get wasteReceiverAddressValidationText;

  /// No description provided for @wasteReceiverPostcodeValidationText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the postcode of the waste receiver'**
  String get wasteReceiverPostcodeValidationText;

  /// No description provided for @wasteRejectedReason.
  ///
  /// In en, this message translates to:
  /// **'Waste Rejected Reason'**
  String get wasteRejectedReason;

  /// No description provided for @wasteTransferLicence.
  ///
  /// In en, this message translates to:
  /// **'Waste Transfer Licence'**
  String get wasteTransferLicence;

  /// No description provided for @wasteTypeNoteAccepted.
  ///
  /// In en, this message translates to:
  /// **'Type of waste not accepted'**
  String get wasteTypeNoteAccepted;

  /// No description provided for @webBoltHoles.
  ///
  /// In en, this message translates to:
  /// **'Web Bolt Holes'**
  String get webBoltHoles;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get week;

  /// No description provided for @weekOf.
  ///
  /// In en, this message translates to:
  /// **'Week of'**
  String get weekOf;

  /// No description provided for @weekdays.
  ///
  /// In en, this message translates to:
  /// **'Weekdays'**
  String get weekdays;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @weeks.
  ///
  /// In en, this message translates to:
  /// **'weeks'**
  String get weeks;

  /// No description provided for @weighbridge.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge'**
  String get weighbridge;

  /// No description provided for @weighbridgeConfig.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Configuration'**
  String get weighbridgeConfig;

  /// No description provided for @weighbridgeConfigId.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Configuration Id'**
  String get weighbridgeConfigId;

  /// No description provided for @weighbridgeConfigNotFound.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Configuration not found.'**
  String get weighbridgeConfigNotFound;

  /// No description provided for @weighbridgeConfigs.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Configurations'**
  String get weighbridgeConfigs;

  /// No description provided for @weighbridgeConfigurationId.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Configuration Id'**
  String get weighbridgeConfigurationId;

  /// No description provided for @weighbridgeGatwayEndPoint.
  ///
  /// In en, this message translates to:
  /// **'Gateway Endpoint'**
  String get weighbridgeGatwayEndPoint;

  /// No description provided for @weighbridgeGroup.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Group'**
  String get weighbridgeGroup;

  /// No description provided for @weighbridgeGroups.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Groups'**
  String get weighbridgeGroups;

  /// No description provided for @weighbridgeId.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Id'**
  String get weighbridgeId;

  /// No description provided for @weighbridgeProfile.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Profile'**
  String get weighbridgeProfile;

  /// No description provided for @weighbridgeProfileDeleteError.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete weighbridge profile.'**
  String get weighbridgeProfileDeleteError;

  /// No description provided for @weighbridgeProfileDeleted.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge profile deleted successfully.'**
  String get weighbridgeProfileDeleted;

  /// No description provided for @weighbridgeProfileId.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Profile Id'**
  String get weighbridgeProfileId;

  /// No description provided for @weighbridgeProfileNotFound.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Profile not found.'**
  String get weighbridgeProfileNotFound;

  /// No description provided for @weighbridgeProfiles.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge Profiles'**
  String get weighbridgeProfiles;

  /// No description provided for @weighbridgeTokenEndPoint.
  ///
  /// In en, this message translates to:
  /// **'Token Endpoint'**
  String get weighbridgeTokenEndPoint;

  /// No description provided for @weighbridgeUOM.
  ///
  /// In en, this message translates to:
  /// **'Weighbridge UOM'**
  String get weighbridgeUOM;

  /// No description provided for @weighedBy.
  ///
  /// In en, this message translates to:
  /// **'Weighed By'**
  String get weighedBy;

  /// No description provided for @weighedDate.
  ///
  /// In en, this message translates to:
  /// **'Weighed Date'**
  String get weighedDate;

  /// No description provided for @weighedDateTime.
  ///
  /// In en, this message translates to:
  /// **'Weighed Date & Time'**
  String get weighedDateTime;

  /// No description provided for @weighedTime.
  ///
  /// In en, this message translates to:
  /// **'Weighed Time'**
  String get weighedTime;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @weightCount.
  ///
  /// In en, this message translates to:
  /// **'Weight/Count'**
  String get weightCount;

  /// No description provided for @weightDiff.
  ///
  /// In en, this message translates to:
  /// **'Weight Diff'**
  String get weightDiff;

  /// No description provided for @weightLine.
  ///
  /// In en, this message translates to:
  /// **'Weight Line'**
  String get weightLine;

  /// No description provided for @weightPerLoad.
  ///
  /// In en, this message translates to:
  /// **'Weight Per Load'**
  String get weightPerLoad;

  /// No description provided for @weights.
  ///
  /// In en, this message translates to:
  /// **'Weights'**
  String get weights;

  /// No description provided for @what3Words.
  ///
  /// In en, this message translates to:
  /// **'What 3 words'**
  String get what3Words;

  /// No description provided for @whatIfIDontWantToBeContacted.
  ///
  /// In en, this message translates to:
  /// **'What if I don\'t want to be contacted?'**
  String get whatIfIDontWantToBeContacted;

  /// No description provided for @whatIfIDontWantToBeContactedNote.
  ///
  /// In en, this message translates to:
  /// **'No worries at all. If you don’t want to get special offers and higher prices than anyone else, you can choose to opt out.'**
  String get whatIfIDontWantToBeContactedNote;

  /// No description provided for @whatInformationWouldYouLikeToInclude.
  ///
  /// In en, this message translates to:
  /// **'What Information would you like to include?'**
  String get whatInformationWouldYouLikeToInclude;

  /// No description provided for @whatWillINeed.
  ///
  /// In en, this message translates to:
  /// **'What will I need?'**
  String get whatWillINeed;

  /// No description provided for @whatWouldYouLikeToDo.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do'**
  String get whatWouldYouLikeToDo;

  /// No description provided for @wheelCount.
  ///
  /// In en, this message translates to:
  /// **'Wheel Count'**
  String get wheelCount;

  /// No description provided for @wheelDetails.
  ///
  /// In en, this message translates to:
  /// **'Wheel Details'**
  String get wheelDetails;

  /// No description provided for @wheels.
  ///
  /// In en, this message translates to:
  /// **'Wheels'**
  String get wheels;

  /// No description provided for @wheelsAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Please select wheels'**
  String get wheelsAlertMessage;

  /// No description provided for @whyDoWeNeedThis.
  ///
  /// In en, this message translates to:
  /// **'Why do we need this'**
  String get whyDoWeNeedThis;

  /// No description provided for @whyDoWeWantBoth.
  ///
  /// In en, this message translates to:
  /// **'Why do we want both?'**
  String get whyDoWeWantBoth;

  /// No description provided for @whyDoWeWantBothFormsOfContact.
  ///
  /// In en, this message translates to:
  /// **'Why do we want both forms of contact?'**
  String get whyDoWeWantBothFormsOfContact;

  /// No description provided for @whyDoWeWantBothNote.
  ///
  /// In en, this message translates to:
  /// **'In case you forget one, you\'ll be able to log in with the other. We\'re only thinking of you!. We’ll only send you special offers and exciting news if you opt in, so don’t worry about a flurry of marketing messages filling up your inbox.'**
  String get whyDoWeWantBothNote;

  /// No description provided for @whyDoWeWantToKnowThis.
  ///
  /// In en, this message translates to:
  /// **'Why do we want to know this?'**
  String get whyDoWeWantToKnowThis;

  /// No description provided for @whyDoWeWantToKnowThisNote.
  ///
  /// In en, this message translates to:
  /// **'Understanding you helps us tailor our services, communications and offers, so you\'re getting the best service, personalised to you.'**
  String get whyDoWeWantToKnowThisNote;

  /// No description provided for @whyWeNeedSignature.
  ///
  /// In en, this message translates to:
  /// **'We need a signature to confirm you agree to all the T&C\'s and we will use your signature as your agreement on any printed documents (where applicable)'**
  String get whyWeNeedSignature;

  /// No description provided for @wmlExemptionNo.
  ///
  /// In en, this message translates to:
  /// **'Wml Exemption No'**
  String get wmlExemptionNo;

  /// No description provided for @workOrderDescHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a description'**
  String get workOrderDescHint;

  /// No description provided for @workOrderDescLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get workOrderDescLabel;

  /// No description provided for @workOrderDescValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a desciption for the Work Order'**
  String get workOrderDescValidation;

  /// No description provided for @workRequestCreated.
  ///
  /// In en, this message translates to:
  /// **'Work request created.!'**
  String get workRequestCreated;

  /// No description provided for @workRequestTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Work request type on failed question'**
  String get workRequestTypeHint;

  /// No description provided for @workRequestTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Default work request type'**
  String get workRequestTypeLabel;

  /// No description provided for @workRequests.
  ///
  /// In en, this message translates to:
  /// **'Work Requests'**
  String get workRequests;

  /// No description provided for @workflowHistory.
  ///
  /// In en, this message translates to:
  /// **'Workflow History'**
  String get workflowHistory;

  /// No description provided for @workflowNotStarted.
  ///
  /// In en, this message translates to:
  /// **'Workflow Not Started'**
  String get workflowNotStarted;

  /// No description provided for @workflowStatus.
  ///
  /// In en, this message translates to:
  /// **'Level {level} - {status}'**
  String workflowStatus(Object level, Object status);

  /// No description provided for @workflows.
  ///
  /// In en, this message translates to:
  /// **'Workflows'**
  String get workflows;

  /// No description provided for @workingDays.
  ///
  /// In en, this message translates to:
  /// **'Working Days'**
  String get workingDays;

  /// No description provided for @workplace.
  ///
  /// In en, this message translates to:
  /// **'Workplace'**
  String get workplace;

  /// No description provided for @worksheetName.
  ///
  /// In en, this message translates to:
  /// **'Worksheet Name'**
  String get worksheetName;

  /// No description provided for @wtnSsaExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Wtn/SSA Expiry Date'**
  String get wtnSsaExpiryDate;

  /// No description provided for @yard.
  ///
  /// In en, this message translates to:
  /// **'Yard'**
  String get yard;

  /// No description provided for @yardAllocationStatusClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get yardAllocationStatusClosed;

  /// No description provided for @yardAllocationStatusDraft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get yardAllocationStatusDraft;

  /// No description provided for @yardAllocationStatusOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get yardAllocationStatusOpen;

  /// No description provided for @yardAllocationStatusUsed.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get yardAllocationStatusUsed;

  /// No description provided for @yardClassificationStatusDomestic.
  ///
  /// In en, this message translates to:
  /// **'Domestic'**
  String get yardClassificationStatusDomestic;

  /// No description provided for @yardClassificationStatusEuropean.
  ///
  /// In en, this message translates to:
  /// **'European'**
  String get yardClassificationStatusEuropean;

  /// No description provided for @yardClassificationStatusExport.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get yardClassificationStatusExport;

  /// No description provided for @yardCode.
  ///
  /// In en, this message translates to:
  /// **'Yard Code'**
  String get yardCode;

  /// No description provided for @yardHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a Yard. eg: YOLD or Oldbury'**
  String get yardHint;

  /// No description provided for @yardInstructionsToMove.
  ///
  /// In en, this message translates to:
  /// **'Instructions To Move'**
  String get yardInstructionsToMove;

  /// No description provided for @yardLabel.
  ///
  /// In en, this message translates to:
  /// **'Yard'**
  String get yardLabel;

  /// No description provided for @yardLiveLoadDateFilterNextWeek.
  ///
  /// In en, this message translates to:
  /// **'Next Week'**
  String get yardLiveLoadDateFilterNextWeek;

  /// No description provided for @yardLiveLoadDateFilterThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get yardLiveLoadDateFilterThisWeek;

  /// No description provided for @yardLiveLoadDateFilterToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get yardLiveLoadDateFilterToday;

  /// No description provided for @yardLiveLoadDateFilterTommorow.
  ///
  /// In en, this message translates to:
  /// **'Tommorow'**
  String get yardLiveLoadDateFilterTommorow;

  /// No description provided for @yardLiveLoadDateFilterYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yardLiveLoadDateFilterYesterday;

  /// No description provided for @yardLiveLoads.
  ///
  /// In en, this message translates to:
  /// **'Live Loads'**
  String get yardLiveLoads;

  /// No description provided for @yardLiveLoadsStatusAbandoned.
  ///
  /// In en, this message translates to:
  /// **'Abandoned'**
  String get yardLiveLoadsStatusAbandoned;

  /// No description provided for @yardLiveLoadsStatusAny.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get yardLiveLoadsStatusAny;

  /// No description provided for @yardLiveLoadsStatusBooked.
  ///
  /// In en, this message translates to:
  /// **'Booked'**
  String get yardLiveLoadsStatusBooked;

  /// No description provided for @yardLiveLoadsStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get yardLiveLoadsStatusCompleted;

  /// No description provided for @yardLiveLoadsStatusIn.
  ///
  /// In en, this message translates to:
  /// **'In'**
  String get yardLiveLoadsStatusIn;

  /// No description provided for @yardLiveLoadsStatusInBound.
  ///
  /// In en, this message translates to:
  /// **'Inbound'**
  String get yardLiveLoadsStatusInBound;

  /// No description provided for @yardLiveLoadsStatusInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get yardLiveLoadsStatusInProgress;

  /// No description provided for @yardLiveLoadsStatusOnRoute.
  ///
  /// In en, this message translates to:
  /// **'On Route'**
  String get yardLiveLoadsStatusOnRoute;

  /// No description provided for @yardLiveLoadsStatusOnSite.
  ///
  /// In en, this message translates to:
  /// **'On Site'**
  String get yardLiveLoadsStatusOnSite;

  /// No description provided for @yardLiveLoadsStatusOut.
  ///
  /// In en, this message translates to:
  /// **'Out'**
  String get yardLiveLoadsStatusOut;

  /// No description provided for @yardLiveLoadsStatusOutBound.
  ///
  /// In en, this message translates to:
  /// **'Outbound'**
  String get yardLiveLoadsStatusOutBound;

  /// No description provided for @yardLiveLoadsStatusPlanned.
  ///
  /// In en, this message translates to:
  /// **'Planned'**
  String get yardLiveLoadsStatusPlanned;

  /// No description provided for @yardLiveLoadsStatusRequested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get yardLiveLoadsStatusRequested;

  /// No description provided for @yardLiveLoadsStatusScheduled.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get yardLiveLoadsStatusScheduled;

  /// No description provided for @yardLiveLoadsViewCardFilterBtnTextView.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get yardLiveLoadsViewCardFilterBtnTextView;

  /// No description provided for @yardLiveLoadsViewCardFilterBtnTextViewing.
  ///
  /// In en, this message translates to:
  /// **'Viewing'**
  String get yardLiveLoadsViewCardFilterBtnTextViewing;

  /// No description provided for @yardLogistics.
  ///
  /// In en, this message translates to:
  /// **'Yard Logistics'**
  String get yardLogistics;

  /// No description provided for @yardMustBeSelectedFirst.
  ///
  /// In en, this message translates to:
  /// **'Yard must be selected first.'**
  String get yardMustBeSelectedFirst;

  /// No description provided for @yardPaymentsNotFounderror.
  ///
  /// In en, this message translates to:
  /// **'System can\'t find yard payment configurations'**
  String get yardPaymentsNotFounderror;

  /// No description provided for @yardPricing.
  ///
  /// In en, this message translates to:
  /// **'Yard Pricing'**
  String get yardPricing;

  /// No description provided for @yardReport.
  ///
  /// In en, this message translates to:
  /// **'Yard Report'**
  String get yardReport;

  /// No description provided for @yardRequestStatusFullyAllocated.
  ///
  /// In en, this message translates to:
  /// **'FullyAllocated'**
  String get yardRequestStatusFullyAllocated;

  /// No description provided for @yardRequestStatusOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get yardRequestStatusOpen;

  /// No description provided for @yardRequiredToLoadGroups.
  ///
  /// In en, this message translates to:
  /// **'Yard must be selected to load Groups.'**
  String get yardRequiredToLoadGroups;

  /// No description provided for @yardRequiredToLoadUoms.
  ///
  /// In en, this message translates to:
  /// **'Yard must be selected to load UOMs.'**
  String get yardRequiredToLoadUoms;

  /// No description provided for @yardSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Yard saved successfully'**
  String get yardSavedSuccessfully;

  /// No description provided for @yardSelection.
  ///
  /// In en, this message translates to:
  /// **'Yard Selection'**
  String get yardSelection;

  /// No description provided for @yardValidation.
  ///
  /// In en, this message translates to:
  /// **'Please select a Yard'**
  String get yardValidation;

  /// No description provided for @yards.
  ///
  /// In en, this message translates to:
  /// **'Yards'**
  String get yards;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @yearOfConstruction.
  ///
  /// In en, this message translates to:
  /// **'Year of Construction'**
  String get yearOfConstruction;

  /// No description provided for @yearOfManufacture.
  ///
  /// In en, this message translates to:
  /// **'Year of Manufacture'**
  String get yearOfManufacture;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @yesterdaysPlan.
  ///
  /// In en, this message translates to:
  /// **'Yesterday\'s Plan'**
  String get yesterdaysPlan;

  /// No description provided for @ylExistingBag.
  ///
  /// In en, this message translates to:
  /// **'Existing Bag'**
  String get ylExistingBag;

  /// No description provided for @ylExistingLot.
  ///
  /// In en, this message translates to:
  /// **'Existing Lot'**
  String get ylExistingLot;

  /// No description provided for @ylExistingPackinglist.
  ///
  /// In en, this message translates to:
  /// **'Existing Packing List'**
  String get ylExistingPackinglist;

  /// No description provided for @ylExistingPallet.
  ///
  /// In en, this message translates to:
  /// **'Pallet'**
  String get ylExistingPallet;

  /// No description provided for @ylNewBag.
  ///
  /// In en, this message translates to:
  /// **'Bag'**
  String get ylNewBag;

  /// No description provided for @ylNewLot.
  ///
  /// In en, this message translates to:
  /// **'New Lot'**
  String get ylNewLot;

  /// No description provided for @ylNewPackinglist.
  ///
  /// In en, this message translates to:
  /// **'Packing List'**
  String get ylNewPackinglist;

  /// No description provided for @ylNewPallet.
  ///
  /// In en, this message translates to:
  /// **'New Pallet'**
  String get ylNewPallet;

  /// No description provided for @ylSpecificAddComment.
  ///
  /// In en, this message translates to:
  /// **'Add\nComment'**
  String get ylSpecificAddComment;

  /// No description provided for @ylSpecificAddPhotos.
  ///
  /// In en, this message translates to:
  /// **'Add\nPhotos'**
  String get ylSpecificAddPhotos;

  /// No description provided for @ylSpecificEditPhotos.
  ///
  /// In en, this message translates to:
  /// **'Edit\nPhotos'**
  String get ylSpecificEditPhotos;

  /// No description provided for @ylSpecificTakeGrossWeight.
  ///
  /// In en, this message translates to:
  /// **'Take Gross\nWeight'**
  String get ylSpecificTakeGrossWeight;

  /// No description provided for @ylSpecificTakeTareWeight.
  ///
  /// In en, this message translates to:
  /// **'Take Tare\nWeight'**
  String get ylSpecificTakeTareWeight;

  /// No description provided for @ylTicketWithLots.
  ///
  /// In en, this message translates to:
  /// **'Ticket With Lots'**
  String get ylTicketWithLots;

  /// No description provided for @ylViewLots.
  ///
  /// In en, this message translates to:
  /// **'View Lots'**
  String get ylViewLots;

  /// No description provided for @youAreAllSet.
  ///
  /// In en, this message translates to:
  /// **'You’re all set!'**
  String get youAreAllSet;

  /// No description provided for @youHaveGotMail.
  ///
  /// In en, this message translates to:
  /// **'You’ve got mail!'**
  String get youHaveGotMail;

  /// No description provided for @youHaveSelected.
  ///
  /// In en, this message translates to:
  /// **'You have selected'**
  String get youHaveSelected;

  /// No description provided for @yourContractWasNotSaved.
  ///
  /// In en, this message translates to:
  /// **'Your contract was not saved'**
  String get yourContractWasNotSaved;

  /// No description provided for @yourContractWasSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your contract was saved successfully'**
  String get yourContractWasSavedSuccessfully;

  /// No description provided for @yourLocalYard.
  ///
  /// In en, this message translates to:
  /// **'Your Local Yard'**
  String get yourLocalYard;

  /// No description provided for @yourPriceListSaved.
  ///
  /// In en, this message translates to:
  /// **'Your Price List was saved successfully.'**
  String get yourPriceListSaved;

  /// No description provided for @yourPriceListWasNotCreated.
  ///
  /// In en, this message translates to:
  /// **'Your Price List was not created'**
  String get yourPriceListWasNotCreated;

  /// No description provided for @zeroRated.
  ///
  /// In en, this message translates to:
  /// **'Zero Rated'**
  String get zeroRated;

  /// No description provided for @zoneWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Zone {zoneNo}'**
  String zoneWithNumber(Object zoneNo);

  /// No description provided for @zurich.
  ///
  /// In en, this message translates to:
  /// **'Zurich'**
  String get zurich;
}

class _EmrAppsLocalisationsDelegate
    extends LocalizationsDelegate<EmrAppsLocalisations> {
  const _EmrAppsLocalisationsDelegate();

  @override
  Future<EmrAppsLocalisations> load(Locale locale) {
    return SynchronousFuture<EmrAppsLocalisations>(
      lookupEmrAppsLocalisations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'nl', 'zu'].contains(locale.languageCode);

  @override
  bool shouldReload(_EmrAppsLocalisationsDelegate old) => false;
}

EmrAppsLocalisations lookupEmrAppsLocalisations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'US':
            return EmrAppsLocalisationsEnUs();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case 'US':
            return EmrAppsLocalisationsEsUs();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return EmrAppsLocalisationsDe();
    case 'en':
      return EmrAppsLocalisationsEn();
    case 'es':
      return EmrAppsLocalisationsEs();
    case 'nl':
      return EmrAppsLocalisationsNl();
    case 'zu':
      return EmrAppsLocalisationsZu();
  }

  throw FlutterError(
    'EmrAppsLocalisations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
