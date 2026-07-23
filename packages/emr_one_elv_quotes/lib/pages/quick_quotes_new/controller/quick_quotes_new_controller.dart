import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';

class QuickQuotesNewController extends ChangeNotifier {
  QuickQuotesNewController({
    required this.accountService,
    required this.yardService,
    required this.activeTerritory,
    required this.elvConfigFlags,
    required this.addressService,
    required this.quoteService,
  }) : state = QuickQuotesNewState.initial() {
    init();
  }

  final ELVAccountService accountService;
  final YardService yardService;
  final ElvTerritory activeTerritory;
  final List<String> elvConfigFlags;
  final AddressService addressService;
  final QuoteService quoteService;

  final QuickQuotesNewState state;

  Future<void> init() async {
    await _loadElvYards(_getInitialYards());
    await _getLeadSource();
  }

  List<Yard> _getInitialYards() {
    final usersYards = UserInfoService.instance?.userInfo.yards ?? [];
    final userTerritories =
        UserInfoService.instance?.userInfo.territories ?? [];

    final current = userTerritories
        .where((element) => element.code == activeTerritory.territoryCode())
        .toList()
        .first
        .depots;

    final elvDepots = current!.where((element) => element.code.contains('AUT'));

    final yards = <Yard>[];

    for (final depot in elvDepots) {
      yards.add(
        usersYards.firstWhere((element) => element.yardCode == depot.yardCode),
      );
    }
    return yards;
  }

  Future<List<AccountModel>> accountSearch({
    required String searchText,
    String? endCursor,
    int? first,
  }) async {
    if (searchText.length < 3) {
      state.existingAccountState
        ..isBusy = false
        ..hasSearched = true
        ..accounts = null
        ..existingSearchText = searchText;
      return [];
    }

    state.existingAccountState
      ..isBusy = true
      ..hasSearched = false;

    final isAccountNumber = isAccountNo(searchText);

    if ((!isAccountNumber && searchText.length < 3) ||
        (isAccountNumber && searchText.length <= 5)) {
      state.existingAccountState
        ..isBusy = false
        ..hasSearched = true
        ..existingSearchText = searchText;
    } else {
      final accountResponse = await accountService.accountSearchThroughCam(
        searchText,
        endCursor: endCursor,
        first: first,
      );

      state.existingAccountState
        ..isBusy = false
        ..hasSearched = true
        ..pageInfo = accountResponse.response?.pageInfo
        ..existingSearchText = searchText;

      if (endCursor == null) {
        state.existingAccountState.accounts =
            accountResponse.response?.accounts;
      } else {
        final existingAccounts = state.existingAccountState.accounts ?? [];
        final newAccounts = accountResponse.response?.accounts ?? [];
        state.existingAccountState.accounts = [
          ...existingAccounts,
          ...newAccounts,
        ];
      }

      final lAccounts = <AccountModel>[];
      final nAccounts = <AccountModel>[];
      if (state.existingAccountState.accounts != null) {
        for (final account in state.existingAccountState.accounts!) {
          if (account.code?.startsWith('L') ?? false) {
            lAccounts.add(account);
          } else if (account.code?.startsWith('N') ?? false) {
            nAccounts.add(account);
          }
        }

        state.existingAccountState.accounts!.clear();
        state.existingAccountState.accounts!
          ..addAll(lAccounts)
          ..addAll(nAccounts);
      }
    }

    //TODO: Values are static here. Will change in next PR
    return [
      ...state.existingAccountState.accounts ?? [],
      AccountModel(
        code: '',
        name: 'Add new account',
        address: Address(line1: '', postCode: ''),
        email: '',
        mobilePhone: '',
        landline: '',
        accountType: AccountTypeEnum.none,
        locations: [],
        contact: [],
      ),
    ];
  }

  bool isAccountNo(String searchText) {
    if (searchText.isEmpty) return false;

    final leading = searchText[0].toLowerCase();

    if ((leading == 'n' || leading == 'l') &&
        searchText.length > 1 &&
        int.tryParse(searchText.substring(1)) != null) {
      return true;
    }

    return false;
  }

  Future<bool> isValidPostcode(String postcode) async {
    try {
      if (!postcode.isValidPostcodeFormat()) {
        return false;
      }
      final result = await yardService.isValidPostcode(postcode);
      return result;
    } catch (e) {
      EmrLogger.error(e.toString());
      return true;
    }
  }

  Future<void> _loadElvYards(List<Yard> yards) async {
    final activeYards = await yardService.getElvYardsFromUserYards(yards);
    state.otherYards = activeYards;
    state.otherYards.sortBy((element) => element.yardCode);

    if (!activeTerritory.startWithNoSelectedYard()) {
      await getDefaultYardCode();
    }
  }

  /// When launching Quick Quotes the Selected Yard should be the last used yard
  Future<void> getDefaultYardCode() async {
    final prefs = await SharedPreferences.getInstance();
    final yardCode = prefs.getString('quickQuotesYardCode') ?? 'YSAL';
    state.selectedYard = state.otherYards.firstWhere(
      (element) => element.yardCode == yardCode,
      orElse: () => state.otherYards.first,
    );
  }

  Future<void> _getLeadSource() async {
    final sources = await quoteService.loadLeadSources();
    final result = <int, String>{};

    if (sources != null) {
      for (final item in sources) {
        result[item.id] = item.name;
      }
    }

    state.leadSources = result;
  }
}
