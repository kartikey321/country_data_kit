import 'dart:io';
import 'package:country_data_kit/src/generated/generated.dart';
import 'package:csv/csv.dart';

void main() async {
  await convertCountries();
  await convertStates();
  await convertCities();
}

Future<void> convertCountries() async {
  final csvFile = File('countries.csv'); // Adjust this if the CSV file is located in a different directory
  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  final countries = Countries();
  for (var row in csvList.skip(1)) { // Skip header
    final country = Country()
      ..id = int.parse(row[0])
      ..name = row[1]
      ..iso3 = row[2]
      ..iso2 = row[3]
      ..phonecode = row[4]
      ..capital = row[5]
      ..currency = row[6]
      ..native = row[7]
      ..emoji = row[8]
      ..emojiU = row[9]
      ..wikiDataId = row[10];
    countries.countries.add(country);
  }

  // Ensure the directory exists before saving
  final outputDir = Directory('assets/protobuf');
  if (!await outputDir.exists()) {
    await outputDir.create(recursive: true); // Create directory if it doesn't exist
  }

  final output = File('${outputDir.path}/countries.pb');
  await output.writeAsBytes(countries.writeToBuffer());
}

Future<void> convertStates() async {
  final csvFile = File('states.csv'); // Adjust this if the CSV file is located in a different directory
  final csvString = await csvFile.readAsString();
  final csvList = const CsvToListConverter().convert(csvString);

  final states = States();
  for (var row in csvList.skip(1)) { // Skip header
    final state = State()
      ..id = int.parse(row[0])
      ..name = row[1]
      ..stateCode = row[2]
      ..countryId = int.parse(row[3])
      ..countryName = row[4]
      ..wikiDataId = row[5];
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
  for (var row in csvList.skip(1)) { // Skip header
    final city = City()
      ..id = int.parse(row[0])
      ..name = row[1]
      ..stateId = int.parse(row[2])
      ..stateName = row[3]
      ..countryId = int.parse(row[4])
      ..countryName = row[5]
      ..latitude = row[6]
      ..longitude = row[7]
      ..wikiDataId = row[8];
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
