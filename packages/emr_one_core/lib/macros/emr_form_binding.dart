// THIS FILE IS HERE FOR THE FUTURE WHEN WE WILL BE ABLE TO USE IT TO
// GENERATE FORM BINDINGS FOR OUR MODELS.
// THIS REQUIRES US TO UPDATE TO FLUTTER 3.24

// import 'dart:async';

// import 'package:macros/macros.dart';

// macro class EmrFormBinding implements ClassDeclarationsMacro {
//   /// Create a databinding class for use with widgets such as [EmrTextFormField]
//   /// and [EmrPickerFormField]. Simply create a named constructor, and this
//   /// macro will create an unnamed constructor together with [ValueNotifier]
//   /// fields for each parameter.
//   /// 
//   /// e.g.
//   /// ```dart
//   /// @EmrFormBinding()
//   /// class WeighbridgeProfile {
//   ///   WeighbridgeProfile.template({
//   ///     String? id,
//   ///     String? name,
//   ///     int? number,
//   ///     List<Scale>? scales,
//   ///   });
//   /// }
//   /// ```
//   /// which will generate:
//   /// ```dart
//   /// augment class WeighbridgeProfile {
//   /// 
//   /// WeighbridgeProfile({
//   /// 		String? id,
//   /// 		String? name,
//   /// 		int? number,
//   /// 		List<Scale>? scales,
//   ///   }) {
//   /// 		this.id = ValueNotifier(id);
//   /// 		this.name = ValueNotifier(name);
//   /// 		this.number = ValueNotifier(number);
//   /// 		this.scales = ValueNotifier(scales);
//   ///   }
//   /// 
//   /// 	late final ValueNotifier<String?> id;
//   /// 
//   /// 	late final ValueNotifier<String?> name;
//   /// 
//   /// 	late final ValueNotifier<int?> number;
//   /// 
//   /// 	late final ValueNotifier<List<Scale>?> scales;
//   /// }
//   /// ```
//   const EmrFormBinding();

//   @override
//   Future<void> buildDeclarationsForClass(ClassDeclaration clazz,
//     MemberDeclarationBuilder builder,) async {
//     final params = await builder.constructorsOf(clazz);
//     final onlyConstructor = params.first;
   
//     builder.declareInLibrary(DeclarationCode.fromString('''
// // GENERATED CODE BELOW. DO NOT MODIFY.

// // ignore: duplicate_import
// import 'package:flutter/foundation.dart';
// '''),);

//     builder.declareInType(DeclarationCode.fromString(
// '''

// ${clazz.identifier.name}({
// ${onlyConstructor.namedParameters.map(_parameters).join('\n')}
//   }) {
// ${onlyConstructor.namedParameters.map(_initialisers).join('\n')}
//   }

// ${onlyConstructor.namedParameters.map(_valueNotifierProperty).join('\n\n')}'''),);
//   }

//   String _parameters(FormalParameterDeclaration param) =>
//     '\t\t${param.type.code.typeString} ${param.identifier.name},';

//   String _initialisers(FormalParameterDeclaration param) =>
//     '\t\tthis.${param.identifier.name} = ValueNotifier(${param.identifier.name});';

//   String _valueNotifierProperty(FormalParameterDeclaration param) =>
//     '\tlate final ValueNotifier<${param.type.code.typeString}> ${param.identifier.name};';
// }

// extension on Code {
//   /// Convert a Code into a String.
//   String get typeString {
//     final buffer = StringBuffer();
//     _writeDebugString(buffer);
//     return buffer.toString();
//   }

//   void _writeDebugString(StringBuffer buffer) {
//     for (final part in parts) {
//       switch (part) {
//         case Code():
//           part._writeDebugString(buffer);
//         case Identifier():
//           buffer.write(part.name);
//         case OmittedTypeAnnotation():
//           buffer.write('<omitted>');
//         default:
//           buffer.write(part);
//       }
//     }
//   }
// }
