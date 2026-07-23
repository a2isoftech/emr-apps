enum NonConformingPartEnum { lpgTank, rubbish }

NonConformingPartEnum nonConformingPartEnumFromJson(String value) {
  switch (value) {
    case 'LPGTANK':
      return NonConformingPartEnum.lpgTank;
    case 'RUBBISH':
      return NonConformingPartEnum.rubbish;
    default:
      return NonConformingPartEnum.lpgTank;
  }
}

String nonConformingPartEnumToJson(NonConformingPartEnum type) {
  switch (type) {
    case NonConformingPartEnum.lpgTank:
      return 'LPGTANK';
    case NonConformingPartEnum.rubbish:
      return 'RUBBISH';
  }
}
