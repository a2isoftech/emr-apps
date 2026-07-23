// ignore_for_file: one_member_abstracts

abstract class EmrUtilSuggestionProvider<T extends Object> {
  Future<List<T>> getSuggestions(String query);
}
