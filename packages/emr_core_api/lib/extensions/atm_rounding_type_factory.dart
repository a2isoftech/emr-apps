import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/enums/rounding_type.dart';

extension RoundingTypeFactory on Enum$RoundingType {
  RoundingType toAtmRoundingType() => switch (this) {
        Enum$RoundingType.NO_ROUNDING => RoundingType.noRounding,
        Enum$RoundingType.ROUND_UP => RoundingType.roundUp,
        Enum$RoundingType.ROUND_DOWN => RoundingType.roundDown,
        Enum$RoundingType.$unknown => RoundingType.noRounding
      };
}
