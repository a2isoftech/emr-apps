import 'dart:convert';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/networking/networking.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import 'graphql/mutation/upload.graphql.dart';
import 'graphql/queries/test.graphql.dart';

void main() {
  Response buildMultipartResponse(String requestBody, String expectedBody) {
    /// We need to remove line breaks when comparing the request body and
    /// expected string because they use different line break charaters, and
    /// it's really only the text that we're interested in.
    String removeLineBreaks(String s) =>
        s.replaceAll('\r', '').replaceAll('\n', '');

    return Response(
      json.encode({
        'data': {
          'upload':
              removeLineBreaks(requestBody) == removeLineBreaks(expectedBody)
                  ? 'ok'
                  : 'request.body does not match expectedBody',
          '__typename': 'String',
        },
      }),
      200,
      headers: {'content-type': 'application/json'},
    );
  }

  test('Test GraphQL query', () async {
    final mockClient = MockClient(
      (request) async => Response(
        json.encode({
          'data': {
            'get': 'ok',
            '__typename': 'String',
          },
        }),
        200,
        headers: {'content-type': 'application/json'},
      ),
    );

    final result = await documentNodeQueryTest.execute(
      mockClient,
      Query$Test.fromJson,
    );

    expect(result.data?.$get, 'ok');
  });

  test('Test GraphQL single file upload', () async {
    final mockClient = MockClient(
      (request) async {
        // Get the multipart boundary value so we can check the request body
        // matches what we're expecting.
        final boundary =
            '--${request.headers['content-type']?.split('boundary=').last}';

        final expectedBody = '''
$boundary
content-disposition: form-data; name="operations"

{"operationName":"Upload","query":"mutation Upload(\$file: Upload, \$files: [Upload!]) {\\n  upload(file: \$file, files: \$files)\\n  __typename\\n}","variables":{"file":""}}
$boundary
content-disposition: form-data; name="map"

{"0": ["variables.file"]}
$boundary
content-type: text/plain
content-disposition: form-data; name="0"; filename="test1.txt"

TEST1
$boundary--''';

        return buildMultipartResponse(request.body, expectedBody);
      },
    );

    final file = Uint8List.fromList(utf8.encode('TEST1'));

    final result = await documentNodeMutationUpload.execute(
      mockClient,
      Mutation$Upload.fromJson,
      variables: Variables$Mutation$Upload(file: ''),
      files: {
        'file': XFile.fromData(file, mimeType: 'text/plain', path: 'test1.txt'),
      },
    );

    expect(result.data?.upload, 'ok');
  });

  test('Test GraphQL multiple files upload', () async {
    final mockClient = MockClient(
      (request) async {
        // Get the multipart boundary value so we can check the request body
        // matches what we're expecting.
        final boundary =
            '--${request.headers['content-type']?.split('boundary=').last}';

        final expectedBody = '''
$boundary
content-disposition: form-data; name="operations"

{"operationName":"Upload","query":"mutation Upload(\$file: Upload, \$files: [Upload!]) {\\n  upload(file: \$file, files: \$files)\\n  __typename\\n}","variables":{"files":["","",""]}}
$boundary
content-disposition: form-data; name="map"

{"0": ["variables.files.0"], "1": ["variables.files.1"], "2": ["variables.files.2"]}
$boundary
content-type: text/plain
content-disposition: form-data; name="0"; filename="test1.txt"

TEST1
$boundary
content-type: text/plain
content-disposition: form-data; name="1"; filename="test2.txt"

TEST2
$boundary
content-type: text/plain
content-disposition: form-data; name="2"; filename="test3.txt"

TEST3
$boundary--
''';

        return buildMultipartResponse(request.body, expectedBody);
      },
    );

    final file1 = Uint8List.fromList(utf8.encode('TEST1'));
    final file2 = Uint8List.fromList(utf8.encode('TEST2'));
    final file3 = Uint8List.fromList(utf8.encode('TEST3'));

    final result = await documentNodeMutationUpload.execute(
      mockClient,
      Mutation$Upload.fromJson,
      variables: Variables$Mutation$Upload(files: ['', '', '']),
      files: {
        'files': [
          XFile.fromData(file1, mimeType: 'text/plain', path: 'test1.txt'),
          XFile.fromData(file2, mimeType: 'text/plain', path: 'test2.txt'),
          XFile.fromData(file3, mimeType: 'text/plain', path: 'test3.txt'),
        ],
      },
    );

    expect(result.data?.upload, 'ok');
  });
}
