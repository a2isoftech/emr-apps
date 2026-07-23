enum QuoteSearchFacets {
  yardCode('Yard Code'),
  status('Status'),
  acquisitionType('Price Type'),
  collectionStatus('Collection Status'),
  leadSource('Lead Source');

  const QuoteSearchFacets(this.label);

  final String label;

  static String getFacetTitle(String k) => switch (k) {
        'YardCode' => yardCode.label,
        'Status' => status.label,
        'AcquisitionType' => acquisitionType.label,
        'CollectionStatus' => collectionStatus.label,
        'LeadSource' => leadSource.label,
        _ => k,
      };
}
