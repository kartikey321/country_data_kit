import 'dart:io';
import 'package:country_data_kit/country_state_city_v1.dart';

void main() async {
  final provider = ServerDataProvider();
  await provider.initialize();

  // Run benchmarks
  final benchmarks = await runBenchmarks();

  // Gather statistics
  final countries = provider.getAllCountries();
  final states = provider.getAllStates();
  final cities = provider.getAllCities();

  // Read current README
  final readmeFile = File('README.md');
  var readmeContent = await readmeFile.readAsString();

  // Update Data Statistics
  final dataStats = '''
<!-- DATA_STATS_START -->
- Last Updated: ${DateTime.now().toIso8601String().split('T')[0]}
- Total Countries: ${countries.length}
- Total States: ${states.length}
- Total Cities: ${cities.length}
<!-- DATA_STATS_END -->
''';
  readmeContent = updateSection(readmeContent, 'DATA_STATS', dataStats);

  // Update Benchmark Results
  final benchmarkResults = '''
<!-- BENCHMARK_RESULTS_START -->
| Metric | Value |
|--------|-------|
| Data Load Time | ${benchmarks['loadTime']} ms |
| Memory Usage | ${benchmarks['memoryUsage']} MB |
| Average Query Time | ${benchmarks['queryTime']} µs |

_Last benchmark run: ${DateTime.now().toIso8601String()}_
<!-- BENCHMARK_RESULTS_END -->
''';
  readmeContent =
      updateSection(readmeContent, 'BENCHMARK_RESULTS', benchmarkResults);

  // Write updated README
  await readmeFile.writeAsString(readmeContent);

  print('README.md has been updated with the latest metrics and information.');
}

String updateSection(String content, String sectionName, String newContent) {
  final startMarker = '<!-- ${sectionName}_START -->';
  final endMarker = '<!-- ${sectionName}_END -->';
  final startIndex = content.indexOf(startMarker);
  final endIndex = content.indexOf(endMarker, startIndex) + endMarker.length;

  return content.substring(0, startIndex) +
      newContent +
      content.substring(endIndex);
}

Future<Map<String, num>> runBenchmarks() async {
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
  final cityCount =
      provider.getCitiesForState(1439).length; // California cities

  print(
      'Loaded $countryCount countries, $stateCount US states, and $cityCount California cities');

  final queryStopwatch = Stopwatch()..start();
  for (int i = 0; i < 1000; i++) {
    provider.getCountryByIso2('US');
    provider.getStatesForCountry(840);
    provider.getCitiesForState(1439);
  }
  queryStopwatch.stop();
  final queryTime = queryStopwatch.elapsedMicroseconds / 1000;

  print(
      'Average time for 1000 queries: ${queryTime.toStringAsFixed(2)} microseconds');
  return {
    'loadTime': loadTime,
    'memoryUsage': memoryUsage,
    'queryTime': queryTime,
  };
}
