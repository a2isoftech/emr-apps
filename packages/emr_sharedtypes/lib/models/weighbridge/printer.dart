import 'package:json_annotation/json_annotation.dart';

part 'printer.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Printer {
  Printer({required this.name, required this.url});

  factory Printer.fromJson(Map<String, dynamic> json) =>
      _$PrinterFromJson(json);

  Map<String, dynamic> toJson() => _$PrinterToJson(this);

  String name;
  String url;
}
