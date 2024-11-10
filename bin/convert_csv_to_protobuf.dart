import 'dart:io';

import 'package:country_data_kit/src/generated/generated.dart';
import 'package:csv/csv.dart';

void main() async {
  print('Starting data conversion...');
  await convertCountries();
  await convertStates();
  await convertCities();
  print('Data conversion completed.');
}

Future<void> deleteIfExists(String path) async {
  final file = File(path);
  if (await file.exists()) {
    await file.delete();
    print('Deleted existing file: $path');
  }
}

Future<void> convertCountries() async {
  print('Converting countries...');
  final csvFile = File('countries.csv');

  if (!await csvFile.exists()) {
    print('Error: countries.csv not found.');
    return;
  }

  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);
  final countries = Countries();

  print('Countries length: ${csvList.length}');

  for (var row in csvList.skip(1)) {
    print('Processing country row: $row');
    final country = Country()
      ..id = int.tryParse(row[0].toString()) ?? 0
      ..name = row[1] ?? ''
      ..iso3 = row[2] ?? ''
      ..iso2 = row[3] ?? ''
      ..phonecode = row[4].toString()
      ..capital = row[5].toString()
      ..currency = row[6].toString()
      ..native = row[7] ?? ''
      ..emoji = row[8] ?? ''
      ..emojiU = row[9] ?? ''
      ..wikiDataId = row[10] ?? '';
    countries.countries.add(country);
  }

  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    print('Creating output directory: ${outputDir.path}');
    await outputDir.create(recursive: true);
  }

  final outputFilePath = '${outputDir.path}/countries.pb';
  await deleteIfExists(outputFilePath); // Delete if exists
  final output = File(outputFilePath);
  print(countries.writeToBuffer());
  await output.writeAsBytes(countries.writeToBuffer());
  print('Countries protobuf saved to ${output.path}');
}

Future<void> convertStates() async {
  print('Converting states...');
  final csvFile = File('states.csv');

  if (!await csvFile.exists()) {
    print('Error: states.csv not found.');
    return;
  }

  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  print('States length: ${csvList.length}');

  final states = States();
  for (var row in csvList.skip(1)) {
    print('Processing state row: $row');
    final state = State()
      ..id = int.tryParse(row[0].toString()) ?? 0
      ..name = row[1] ?? ''
      ..stateCode = row[3].toString()
      ..countryId = int.tryParse(row[2].toString()) ?? 0;
    states.states.add(state);
  }

  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    print('Creating output directory: ${outputDir.path}');
    await outputDir.create(recursive: true);
  }

  final outputFilePath = '${outputDir.path}/states.pb';
  await deleteIfExists(outputFilePath); // Delete if exists
  final output = File(outputFilePath);
  await output.writeAsBytes(states.writeToBuffer());
  print('States protobuf saved to ${output.path}');
}

Future<void> convertCities() async {
  print('Converting cities...');
  final csvFile = File('cities.csv');

  if (!await csvFile.exists()) {
    print('Error: cities.csv not found.');
    return;
  }

  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  print('Cities length: ${csvList.length}');

  final cities = Cities();
  for (var row in csvList.skip(1)) {
    print('Processing city row: $row');
    final city = City()
      ..id = int.parse(row[0].toString())
      ..name = row[1]
      ..stateId = int.parse(row[2].toString())
      ..countryId = int.parse(row[5].toString())
      ..latitude = row[8].toString()
      ..longitude = row[9].toString();
    cities.cities.add(city);
  }

  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    print('Creating output directory: ${outputDir.path}');
    await outputDir.create(recursive: true);
  }

  final outputFilePath = '${outputDir.path}/cities.pb';
  await deleteIfExists(outputFilePath); // Delete if exists
  final output = File(outputFilePath);
  await output.writeAsBytes(cities.writeToBuffer());
  print('Cities protobuf saved to ${output.path}');
}
