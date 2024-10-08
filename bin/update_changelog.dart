import 'dart:io';

void main() async {
  final commitDate = Platform.environment['COMMIT_DATE']; // Get the commit date from the environment
  final version = await getVersion();  // Get the current package version

  // Generate changelog entry
  final changelogEntry = '''
## $version - ${DateTime.now().toIso8601String().split('T')[0]}
- Data updated based on the source repository (commit date: $commitDate)
- Improved performance and bug fixes
''';

  // Update the CHANGELOG.md
  final changelogFile = File('CHANGELOG.md');
  var changelogContent = await changelogFile.readAsString();

  // Prepend the new entry to the existing changelog content
  changelogContent = changelogEntry + changelogContent;

  // Write the updated changelog
  await changelogFile.writeAsString(changelogContent);

  print('CHANGELOG.md has been updated with the latest entry.');
}

// Function to get the current version from pubspec.yaml
Future<String> getVersion() async {
  final pubspecFile = File('pubspec.yaml');
  final pubspecContent = await pubspecFile.readAsString();

  final versionRegex = RegExp(r'version:\s*(\S+)');
  final match = versionRegex.firstMatch(pubspecContent);

  if (match != null) {
    return match.group(1) ?? 'unknown';
  } else {
    throw Exception('Unable to determine version from pubspec.yaml');
  }
}
