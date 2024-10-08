// bin/check_hash.dart
import 'dart:io';
import 'dart:convert';
import 'package:crypto/crypto.dart';

const filesToCheck = ['countries.csv', 'states.csv', 'cities.csv'];
const hashFile = '.file_hashes.json';

Future<void> main() async {
  Map<String, String> currentHashes = await computeHashes();
  Map<String, String> storedHashes = await loadStoredHashes();

  bool hasChanges = false;
  for (var file in filesToCheck) {
    if (currentHashes[file] != storedHashes[file]) {
      print('File $file has changed.');
      hasChanges = true;
    }
  }

  if (hasChanges) {
    await saveHashes(currentHashes);
    print('Changes detected. Hashes updated.');
    exit(0); // Indicates changes
  } else {
    print('No changes detected.');
    exit(1); // Indicates no changes
  }
}

Future<Map<String, String>> computeHashes() async {
  Map<String, String> hashes = {};
  for (var file in filesToCheck) {
    final contents = await File(file).readAsBytes();
    final hash = sha256.convert(contents);
    hashes[file] = hash.toString();
  }
  return hashes;
}

Future<Map<String, String>> loadStoredHashes() async {
  final file = File(hashFile);
  if (await file.exists()) {
    final contents = await file.readAsString();
    return Map<String, String>.from(json.decode(contents));
  }
  return {};
}

Future<void> saveHashes(Map<String, String> hashes) async {
  final file = File(hashFile);
  await file.writeAsString(json.encode(hashes));
}