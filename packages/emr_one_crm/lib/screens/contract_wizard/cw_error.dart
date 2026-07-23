enum CWErrorType { noPublications, noOrderBooks }

class CWError extends Error {
  CWError(this.errorType);

  final CWErrorType errorType;
}
