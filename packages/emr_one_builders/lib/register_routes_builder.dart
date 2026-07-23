// // Based on https://github.com/dart-lang/build/blob/master/docs/writing_an_aggregate_builder.md

// import 'dart:async';
// import 'dart:io';

// import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
// import 'package:analyzer/dart/analysis/results.dart';
// import 'package:analyzer/dart/ast/ast.dart';
// import 'package:build/build.dart';
// import 'package:file/local.dart';
// import 'package:glob/glob.dart';
// import 'package:path/path.dart' as path;
// import 'package:yaml/yaml.dart';

// Builder registerRoutesBuilder(BuilderOptions options) {
//   return RegisterRoutesBuilder();
// }

// class RegisterRoutesBuilder implements Builder {
//   @override
//   Map<String, List<String>> get buildExtensions {
//     return const {
//       r'$lib$': ['module_startup.dart'],
//     };
//   }

//   @override
//   Future<void> build(BuildStep buildStep) async {
//     final logText = StringBuffer('\n');
//     logText.writeln('--------------------------------------------------');
//     logText.writeln(
//        'RegisterRoutesBuilder on ${buildStep.inputId.package}:');

//     // Find all route registry files.
//     final routeRegistryFiles = await Glob('**/*_route_registry.dart')
//         .listFileSystem(
//           const LocalFileSystem(),
//           root: '..${_slash()}',
//         )
//         .toList();

//     // Load the root pubspec.yaml so we can determine package dependencies.
//     final rootPubspec = _loadPubspecYaml(buildStep.inputId.package);
//     final dependencies = rootPubspec['dependencies'] as YamlMap;

//     // Build a list of import and register statements so we can output these.
//     final imports = <String>['emr_one_core/emr_one_core.dart'];
//     final registers = <String>[];

//     for (final input in routeRegistryFiles) {
//       logText.writeln('- Processing ${input.path}');

//       final packageName = input.uri.pathSegments[1];

//       // Make sure the file we found is a dependency of the root package.
//       if (dependencies[packageName] == null) {
//         logText.writeln(
//           "  - SKIPPING $packageName as it's not in the pubspec.yaml",
//         );

//         continue;
//       }

//       final className = await _classNameFromFile(input as File);

//       if (className?.isEmpty ?? true) {
//         logText.writeln(
//           '  - SKIPPING $packageName as the class name could not be '
//           'determined',
//         );

//         continue;
//       }

//       // Build the import path, taking into account Windows paths should be
//       // converted to forward slashes.
//       final import =
//           "$packageName/${input.path.replaceAll(r'\', '/').replaceAll(RegExp('^.*/lib/'), '')}";

//       imports.add(import);
//       registers.add(className!);

//       logText.writeln('  - Found $className in $import');
//     }

//     imports.sort();
//     registers.sort();

//     logText.writeln('--------------------------------------------------');
//     log.info(logText.toString());

//     // Return the contents of the file.
//     return buildStep.writeAsString(
//       buildStep.allowedOutputs.first,
//       '''
// // This file is built by RegisterRoutesBuilder (in emr_one_builders) and should
// // not be edited manually.

// ${imports.map((e) => "import 'package:$e';").join('\n')}

// class ModuleStartup {
//   static Future<void> configure(
//     RouteRegistry registry, {
//     List<dynamic>? routingJson,
//   }) async {
//     registry.initRegistrationFunctions([
// ${registers.map((e) => "      $e.register,").join('\n')}
//     ]);

//     registry.build();
//   }
// }
// ''',
//     );
//   }

//   /// Load a single Dart file so we can inspect the structure and identify a
//   /// method called 'register'.
//   Future<String?> _classNameFromFile(File input) async {
//     final filePath = path.normalize(path.absolute(input.path));
//     final collection = AnalysisContextCollection(includedPaths: [filePath]);
//     final analysisSession = collection.contextFor(filePath).currentSession;
//     final result = analysisSession.getParsedUnit(filePath)
//        as ParsedUnitResult;

//     for (final declaration in result.unit.declarations) {
//       if (declaration is ClassDeclaration) {
//         for (final method in declaration.members) {
//           if (method is MethodDeclaration) {
//             if (method.name.lexeme == 'register') {
//               return declaration.name.lexeme;
//             }
//           }
//         }
//       }
//     }

//     return null;
//   }

//   /// Load and parse a pubspec.yaml file for a given package.
//   YamlMap _loadPubspecYaml(String packageName) {
//     final yamlString = File('../$packageName/pubspec.yaml').readAsStringSync();
//     final yaml = loadYaml(yamlString) as YamlMap;

//     return yaml;
//   }

//   // This specifies the path separator for different platforms.
//   String _slash({bool escapeBackslash = false}) => Platform.isWindows
//       ? escapeBackslash
//           ? r'\\'
//           : r'\'
//       : '/';
// }
