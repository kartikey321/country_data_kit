import 'dart:io';
import 'package:country_data_kit/src/generated/generated.dart';
import 'package:csv/csv.dart';

void main() async {
  await convertCountries();
  await convertStates();
  await convertCities();
}

Future<void> convertCountries() async {
  final csvFile = File('countries.csv'); // Adjusted file path
  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  final countries = Countries();
  for (var row in csvList.skip(1)) {
    // Skip header
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

  // Ensure the directory exists before saving
  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    await outputDir.create(recursive: true);
  }

  final output = File('${outputDir.path}/countries.pb');
  await output.writeAsBytes(countries.writeToBuffer());
}

Future<void> convertStates() async {
  final csvFile = File('states.csv'); // Adjusted file path
  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  final states = States();
  for (var row in csvList.skip(1)) {
    // Skip header
    final state = State()
      ..id = int.tryParse(row[0].toString()) ?? 0
      ..name = row[1] ?? ''
      ..stateCode = row[3].toString() // Adjusted index for stateCode
      ..countryId = int.tryParse(row[2].toString()) ?? 0
;
    states.states.add(state);
  }

  // Ensure the directory exists before saving
  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    await outputDir.create(recursive: true);
  }

  final output = File('${outputDir.path}/states.pb');
  await output.writeAsBytes(states.writeToBuffer());
}

Future<void> convertCities() async {
  final csvFile = File('cities.csv'); // Adjust this if the CSV file is located in a different directory
  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  final cities = Cities();
  for (var row in csvList.skip(1)) {
    // Skip header
    final city = City()
      ..id = int.parse(row[0].toString())
      ..name = row[1]
      ..stateId = int.parse(row[2].toString()) // Correctly mapped
      // ..stateCode = row[3].toString() // Use state code instead of state name
      ..countryId = int.parse(row[5].toString()) // Parse countryId correctly
      // ..countryCode = row[5].toString() // Use country code instead of country name
      ..latitude = row[8].toString() // Correct index for latitude
      ..longitude = row[9].toString() // Correct index for longitude
; // Correct index for wikiDataId
    cities.cities.add(city);
  }

  // Ensure the directory exists before saving
  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    await outputDir.create(recursive: true);
  }

  final output = File('${outputDir.path}/cities.pb');
  await output.writeAsBytes(cities.writeToBuffer());
}
