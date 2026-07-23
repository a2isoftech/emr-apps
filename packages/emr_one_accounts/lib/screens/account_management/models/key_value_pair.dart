import 'package:emr_core_api/graphql/schema.graphql.dart';

typedef KeyValuePair<TKey, TValue> = ({TKey key, TValue value});

typedef CountrySelection = KeyValuePair<Enum$CountryId, String>;
