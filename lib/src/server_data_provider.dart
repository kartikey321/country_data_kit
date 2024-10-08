// lib/src/server_data_provider.dart
import 'dart:io';
import 'dart:isolate';

import 'package:country_data_kit/src/extensions.dart';
import 'package:country_data_kit/src/generated/generated.dart';


class ServerDataProvider {
  static final ServerDataProvider _instance = ServerDataProvider._internal();

  factory ServerDataProvider() {
    return _instance;
  }

  ServerDataProvider._internal();

  late final Countries _countries;
  late final States _states;
  late final Cities _cities;

  Future<void> initialize() async {
    await Future.wait([
      _loadData('data/countries.pb',
          (bytes) => _countries = Countries.fromBuffer(bytes)),
      _loadData(
          'data/states.pb', (bytes) => _states = States.fromBuffer(bytes)),
      _loadData(
          'data/cities.pb', (bytes) => _cities = Cities.fromBuffer(bytes)),
    ]);
  }

  Future<void> _loadData(String path, Function(List<int>) parseFunction) async {
    final bytes = await _loadFileInIsolate(path);
    parseFunction(bytes);
  }

  List<Country> getAllCountries() => _countries.countries;
  List<City> getAllCities() => _cities.cities;
  List<State> getAllStates() => _states.states;

  List<State> getStatesForCountry(int countryId) =>
      _states.states.where((state) => state.countryId == countryId).toList();

  List<City> getCitiesForState(int stateId) =>
      _cities.cities.where((city) => city.stateId == stateId).toList();

  List<City> getCitiesForCountry(int countryId) =>
      _cities.cities.where((city) => city.countryId == countryId).toList();

  Country? getCountryByIso2(String iso2) =>
      _countries.countries.containsWithCondition(
        (country) => country.iso2 == iso2,
      );

  State? getStateByCode(int countryId, String stateCode) =>
      _states.states.containsWithCondition(
        (state) => state.countryId == countryId && state.stateCode == stateCode,
      );
}

Future<List<int>> _loadFileInIsolate(String path) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(_readFile, [receivePort.sendPort, path]);
  return await receivePort.first as List<int>;
}

void _readFile(List<dynamic> args) {
  SendPort sendPort = args[0];
  String path = args[1];
  sendPort.send(File(path).readAsBytesSync());
}
