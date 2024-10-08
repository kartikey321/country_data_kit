// bin/update_version.dart
import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

void main() async {
  final pubspecFile = File('pubspec.yaml');
  final pubspecContent = await pubspecFile.readAsString();
  final pubspec = loadYaml(pubspecContent);

  final currentVersion = pubspec['version'] as String;
  final versionParts = currentVersion.split('.');
  final newPatch = int.parse(versionParts[2]) + 1;
  final newVersion = '${versionParts[0]}.${versionParts[1]}.$newPatch';

  final yamlEditor = YamlEditor(pubspecContent);
  yamlEditor.update(['version'], newVersion);

  await pubspecFile.writeAsString(yamlEditor.toString());
  print('Updated version to $newVersion');
}