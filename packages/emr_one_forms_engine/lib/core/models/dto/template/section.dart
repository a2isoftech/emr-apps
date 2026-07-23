class TemplateSectionDTO {
  final String id;
  final String? header;
  final String? fontColor;
  final String? backgroundColor;
  List<String> componentIds = [];

  TemplateSectionDTO(this.id,
      {this.header,
      this.fontColor,
      this.backgroundColor,
      List<String>? componentIds}) {
    if (componentIds != null) {
      this.componentIds = componentIds;
    }
  }

  TemplateSectionDTO.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        header = json['header'],
        fontColor = json['fontColor'],
        backgroundColor = json['backgroundColor'],
        componentIds = (json['components'] as Iterable<dynamic>)
            .map((x) => x.toString())
            .toList();
}
