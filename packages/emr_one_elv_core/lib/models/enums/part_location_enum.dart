enum PartLocationEnum { unspecified, manifold, pipe }

PartLocationEnum partLocationFromJson(String value) {
  switch (value) {
    case 'MANIFOLD':
      return PartLocationEnum.manifold;
    case 'PIPE':
      return PartLocationEnum.pipe;
    case 'UNSPECIFIED':
    default:
      return PartLocationEnum.unspecified;
  }
}

String partLocationToJson(PartLocationEnum type) {
  switch (type) {
    case PartLocationEnum.manifold:
      return 'MANIFOLD';
    case PartLocationEnum.pipe:
      return 'PIPE';
    case PartLocationEnum.unspecified:
      return 'UNSPECIFIED';
  }
}

extension PartLocationEnumLabel on PartLocationEnum {
  String get label {
    switch (this) {
      case PartLocationEnum.manifold:
        return 'Manifold';
      case PartLocationEnum.pipe:
        return 'Pipe';
      case PartLocationEnum.unspecified:
        return 'Unspecified';
    }
  }
}
