class EditTemplate {
  EditTemplate({
    required this.title,
    required this.uuid,
    required this.components,
    required this.layout,
    // required this.dataProviders,
  });
  factory EditTemplate.fromJson(Map<String, dynamic> json) =>
      _$EditTemplateFromJson(json);
  final String title;
  final String uuid;
  final List<Component>? components;
  final List<Layout>? layout;
  // final List<DataProvider>? dataProviders;

  Map<String, dynamic> toJson() => _$EditTemplateToJson(this);
}

EditTemplate _$EditTemplateFromJson(Map<String, dynamic> json) => EditTemplate(
      title: json['title'] as String,
      uuid: json['uuid'] as String,
      components: (json['components'] as List<dynamic>?)
          ?.map(
            (e) => Component.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      layout: (json['layout'] as List<dynamic>?)
          ?.map(
            (e) => Layout.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      // dataProviders: (json['dataProviders'] as List<dynamic>?)
      //     ?.map(
      //       (e) => DataProvider.fromJson(e as Map<String, dynamic>),
      //     )
      //     .toList(),
    );

Map<String, dynamic> _$EditTemplateToJson(EditTemplate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'uuid': instance.uuid,
      'components': instance.components,
      'layout': instance.layout,
      // 'dataProviders': instance.dataProviders,
    };

class Component {
  Component({
    required this.id,
    required this.title,
    required this.type,
    this.isRequired,
    this.isSRequired,
  });
  factory Component.fromJson(Map<String, dynamic> json) =>
      _$ComponentFromJson(json);
  final String id;
  final String title;
  final String type;
  final String? isRequired;
  final String? isSRequired;

  Map<String, dynamic> toJson() => _$ComponentToJson(this);
}

Component _$ComponentFromJson(Map<String, dynamic> json) => Component(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      isRequired: json['isRequired'] as String?,
      isSRequired: json['isSRequired'] as String?,
    );

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'isRequired': instance.isRequired,
      'isSRequired': instance.isSRequired,
    };

class Layout {
  Layout({required this.id, required this.header, required this.components});

  factory Layout.fromJson(Map<String, dynamic> json) => _$LayoutFromJson(json);

  final String id;
  final String header;
  final List<Component>? components;

  Map<String, dynamic> toJson() => _$LayoutToJson(this);
}

Layout _$LayoutFromJson(Map<String, dynamic> json) => Layout(
      id: json['id'] as String,
      header: json['header'] as String,
      components: (json['components'] as List<dynamic>?)
          ?.map(
            (e) => Component.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$LayoutToJson(Layout instance) => <String, dynamic>{
      'id': instance.id,
      'header': instance.header,
      'components': instance.components,
    };

class DataProvider {}
