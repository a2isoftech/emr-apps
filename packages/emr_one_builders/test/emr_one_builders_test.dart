// import 'package:build/build.dart';
// import 'package:build_test/build_test.dart';
// import 'package:emr_one_builders/register_routes_builder.dart';
// import 'package:test/test.dart';

// void main() {
//   test('RegisterRoutesBuilder', () async {
//     final builder = RegisterRoutesBuilder();
//     final writer = InMemoryAssetWriter();

//     await testBuilder(
//       builder,
//       {
//         // We only use the package name, so the filename and file body are
//         // just placeholders.
//         'emr_one_shell_native|lib/test.dart': 'void main() {}',
//       },
//       writer: writer,
//     );

//     // Check that the builder created the expected output file.
//     final result = writer
//         .assets[AssetId('emr_one_shell_native', 'lib/module_startup.dart')];

//     final text = String.fromCharCodes(result!);

//     expect(
//       text,
//       startsWith('''
// // This file is built by RegisterRoutesBuilder (in emr_one_builders) and should
// // not be edited manually.'''),
//     );

//     expect(text, contains('class ModuleStartup {'));
//     expect(text,
//        contains('static void configure(RouteRegistry registry) {'));
//     expect(text, contains('registry.initRegistrationFunctions(['));
//     expect(text, contains('registry.build();'));
//   });
// }
