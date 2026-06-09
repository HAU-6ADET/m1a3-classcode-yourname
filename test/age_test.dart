import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

Future<String> _run(List<String> inputs) async {
  final process = await Process.start('dart', ['run', 'bin/age.dart']);
  for (final line in inputs) {
    process.stdin.writeln(line);
  }
  await process.stdin.flush();
  await process.stdin.close();
  final out = await process.stdout.transform(utf8.decoder).join();
  await process.exitCode;
  return out;
}

/// Each test below is worth one point. student.json must be filled in (6
/// fields) and the program must compute 100 - age for two different ages
/// (so the answer can't be hardcoded).
void main() {
  group('Student info (student.json)', () {
    late Map<String, dynamic> info;

    setUpAll(() {
      info = jsonDecode(File('student.json').readAsStringSync())
          as Map<String, dynamic>;
    });

    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      test('$field is filled in', () {
        expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
      });
    }
  });

  group('Years until 100', () {
    test('age 25 gives 75 years remaining', () async {
      expect(await _run(['Buboy', '25']), contains('75'),
          reason: 'age 25 should give 75 years remaining');
    });
    test('age 40 gives 60 years remaining', () async {
      expect(await _run(['Ana', '40']), contains('60'),
          reason: 'age 40 should give 60 years remaining');
    });
  }, timeout: const Timeout(Duration(seconds: 60)));
}
