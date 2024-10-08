// bin/benchmark.dart
import 'dart:io';
import 'package:country_data_kit/country_state_city_v1.dart';

void main() async {
  final stopwatch = Stopwatch()..start();

  final provider = ServerDataProvider();
  await provider.initialize();

  stopwatch.stop();
  final loadTime = stopwatch.elapsedMilliseconds;

  print('Total load time: $loadTime ms');

  final memoryUsage = ProcessInfo.currentRss / 1024 / 1024; // Convert to MB

  print('Memory usage: ${memoryUsage.toStringAsFixed(2)} MB');

  final countryCount = provider.getAllCountries().length;
  final stateCount = provider.getStatesForCountry(840).length; // USA states
  final cityCount = provider.getCitiesForState(1439).length; // California cities

  print('Loaded $countryCount countries, $stateCount US states, and $cityCount California cities');

  final queryStopwatch = Stopwatch()..start();
  for (int i = 0; i < 1000; i++) {
    provider.getCountryByIso2('US');
    provider.getStatesForCountry(840);
    provider.getCitiesForState(1439);
  }
  queryStopwatch.stop();
  final queryTime = queryStopwatch.elapsedMicroseconds / 1000;

  print('Average time for 1000 queries: ${queryTime.toStringAsFixed(2)} microseconds');
}