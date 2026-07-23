class LoadOutPhoto {
  LoadOutPhoto({
    required this.displayName,
    required this.fileName,
    required this.onSave,
    required this.onClear,
    required this.getRemotePath,
    this.overlaySvgPath,
  });

  final String displayName;
  final String fileName;
  final String? overlaySvgPath;
  final void Function(String path) onSave;
  final void Function() onClear;
  final String? Function() getRemotePath;

  String? localFileName;
  String? uploadedFileName;

  bool isComplete() {
    final path = getRemotePath();
    return !(path == null || getRemotePath() == '');
  }

  void clear() {
    localFileName = null;
    uploadedFileName = null;
    onClear();
  }

  void addFile(String localFile, String uploadedFile) {
    localFileName = localFile;
    uploadedFileName = uploadedFile;
    onSave(uploadedFile);
  }
}
