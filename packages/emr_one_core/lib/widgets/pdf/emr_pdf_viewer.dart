import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pdfrx/pdfrx.dart';

class EmrPdfViewer extends StatelessWidget {
  /// Creates a widget that displays a PDF file.
  /// One of [assetName] or [data] must be provided, but not both.
  const EmrPdfViewer({super.key, this.assetName, this.data})
    : assert(
        ((assetName == null ? 0 : 1) + (data == null ? 0 : 1)) == 1,
        'One of assetName or data must be provided',
      );

  final String? assetName;

  final Uint8List? data;

  PdfViewerParams get _pdfViewerParams => const PdfViewerParams();

  @override
  Widget build(BuildContext context) {
    if (assetName != null) {
      return PdfViewer.asset(assetName!, params: _pdfViewerParams);
    }

    return PdfViewer.data(data!, sourceName: '', params: _pdfViewerParams);
  }
}
