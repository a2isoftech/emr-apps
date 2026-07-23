import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class QuickQuotesState {
  QuickQuotesState({
    required this.loadingBatchQuote,
    required this.loadingQuote,
    required this.priceLoading,
    required this.apiFallen,
    required this.cloneSuccessful,
    required this.showAddAccountDetails,
    required this.failedLookUps,
    required this.accountDetails,
    required this.collectionOperatorAddress,
    required this.ukAllowChromeWheels,
    required this.usaAllowChromeWheels,
    required this.elvUsaTreatHybridAsNonQuotable,
    required this.elvUkAllowNonQuotable,
    required this.usaDisplayMultipleCats,
    required this.ukDisplayMultipleCats,
    this.collectionOperator,
    this.leadSources,
    this.selectedLeadSource,
    this.canSubmit = false,
    this.loadingDistance = false,
    this.yardDistanceList = const [],
  });

  factory QuickQuotesState.initial(
    List<String> elvConfigFlags,
  ) =>
      QuickQuotesState(
        loadingBatchQuote: false,
        loadingQuote: false,
        priceLoading: false,
        apiFallen: false,
        cloneSuccessful: false,
        showAddAccountDetails: true,
        failedLookUps: <String>[],
        accountDetails: AccountDetails.init(),
        collectionOperatorAddress: Address.initial(),
        ukAllowChromeWheels: elvConfigFlags.any(
          (f) => f == ElvConstants.ukAllowChromeWheels,
        ),
        usaAllowChromeWheels: elvConfigFlags.any(
          (f) => f == ElvConstants.usaAllowChromeWheels,
        ),
        elvUsaTreatHybridAsNonQuotable: elvConfigFlags.any(
          (f) => f == ElvConstants.elvUsaTreatHybridAsNonQuotable,
        ),
        elvUkAllowNonQuotable: elvConfigFlags.any(
          (f) => f == ElvConstants.elvUkAllowNonQuotable,
        ),
        usaDisplayMultipleCats: elvConfigFlags.any(
          (f) => f == ElvConstants.usaDisplayMultipleCats,
        ),
        ukDisplayMultipleCats: elvConfigFlags.any(
          (f) => f == ElvConstants.ukDisplayMultipleCats,
        ),
      );

  final bool loadingQuote;
  final bool loadingBatchQuote;
  bool priceLoading;
  bool apiFallen;
  final bool cloneSuccessful;
  bool showAddAccountDetails;
  List<String> failedLookUps;
  final AccountDetails accountDetails;
  Address collectionOperatorAddress;
  List<LeadSource>? leadSources;
  LeadSource? selectedLeadSource;
  final List<VehicleDetail> vehicleDescriptions = [];
  String? postcode;
  Yard? selectedYard;
  QuoteTypeEnum? selectedQuoteType;
  CollectionOperator? collectionOperator;
  bool canSubmit;
  String? vinSearchText;
  final List<int> vehiclesIDsWithNoCurbWeight = [];
  DateTime? collectionDateTime;
  final bool ukAllowChromeWheels;
  final bool usaAllowChromeWheels;
  final bool elvUsaTreatHybridAsNonQuotable;
  final bool elvUkAllowNonQuotable;
  final bool usaDisplayMultipleCats;
  final bool ukDisplayMultipleCats;
  bool loadingDistance;
  List<PostcodeToYardDistanceResponseModel> yardDistanceList;
}
