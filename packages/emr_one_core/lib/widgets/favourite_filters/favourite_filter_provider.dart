import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/graphql/mutations/user_preferences/delete_favourite_filters.graphql.dart';
import 'package:emr_one_core/graphql/mutations/user_preferences/save_favourite_filters.graphql.dart';
import 'package:emr_one_core/graphql/queries/user_preferences/get_favourite_filters.graphql.dart';
import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_parameters.dart';
import 'package:http/http.dart';

/// This is a User preferences favourite filter provider.
/// It calls user access API to get required data.
/// This has 3 main methods.
///
/// - getFavouriteFilterParameters: This is going to fetch the favourite filter
/// parameters for the given module and for the current user.
///
/// - saveSearchParameter: This method is going to save the current applied
/// filters and store it in database as json.
///
/// - deleteSearchParameter: This method will delet the filterparameters from
/// the database based on the module name and filter name provided if the user
/// has access to the filter
class FavouriteFilterProvider {
  FavouriteFilterProvider({
    required this.httpClient,
  });

  final Client httpClient;

  Future<bool> deleteSearchParameter({
    required String filterName,
    required String moduleName,
  }) async {
    final result = await documentNodeMutationDeleteFilterParameters.execute(
      httpClient,
      Mutation$DeleteFilterParameters.fromJson,
      variables: Variables$Mutation$DeleteFilterParameters(
        input: Input$DeleteFilterParametersInput(
          moduleName: moduleName,
          filterName: filterName,
        ),
      ),
    );

    if (result.hasErrors() || result.data == null) {
      return false;
    }

    return true;
  }

  Future<List<FavouriteFilterParameters>> getFavouriteFilterParameters({
    required String module,
  }) async {
    final results = await documentNodeQueryGetFavouriteFilterParameters.execute(
      httpClient,
      Query$GetFavouriteFilterParameters.fromJson,
      variables: Variables$Query$GetFavouriteFilterParameters(
        input: Input$GetFilterParametersInput(moduleName: module),
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    if (results.data?.favouriteFilterParameters == null) return [];

    final data = results.data?.favouriteFilterParameters
        .map((e) => FavouriteFilterParameters.fromJson(e.toJson()))
        .toList();

    return data ?? [];
  }

  Future<FavouriteFilterParameters?> saveSearchParameter({
    required String name,
    required String searchParameters,
    required String module,
    String? existingName,
  }) async {
    final result =
        await documentNodeMutationSaveFavouriteFilterParameters.execute(
      httpClient,
      Mutation$SaveFavouriteFilterParameters.fromJson,
      variables: Variables$Mutation$SaveFavouriteFilterParameters(
        input: Input$SaveFilterParametersInput(
          filterName: name,
          filterParameters: searchParameters,
          moduleName: module,
          sortOptions: '',
          existingName: existingName,
        ),
      ),
    );

    if (result.hasErrors() || result.data == null) {
      return null;
    }

    return FavouriteFilterParameters.fromJson(
      result.data!.saveFilterParameters.toJson(),
    );
  }
}
