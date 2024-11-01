# Country-State-City Database Package

[![Pub Version](https://img.shields.io/pub/v/country_state_city_v1.svg)](https://pub.dev/packages/country_state_city_v1)
[![Build Status](https://github.com/yourusername/country_state_city_v1/workflows/CI/badge.svg)](https://github.com/yourusername/country_state_city_v1/actions)

A high-performance Dart package for efficient handling of country, state, and city data.

## Data Statistics

<!-- DATA_STATS_START -->
- Last Updated: 2024-11-01
- Total Countries: 0
- Total States: 0
- Total Cities: 0
<!-- DATA_STATS_END -->



## Performance Benchmarks

<!-- BENCHMARK_RESULTS_START -->
| Metric | Value |
|--------|-------|
| Data Load Time | 1 ms |
| Memory Usage | 185.55859375 MB |
| Average Query Time | 3.672 µs |

_Last benchmark run: 2024-11-01T00:44:08.280549_
<!-- BENCHMARK_RESULTS_END -->



... (rest of the README content)
## Why Choose This Package?

Unlike other packages that use static JSON data, our Country-State-City Database Package utilizes Protocol Buffers (protobuf) for data storage and retrieval. This approach offers several advantages:

1. **Reduced Memory Footprint**: Protobuf serialization is more compact than JSON, resulting in smaller data size and lower memory usage.

2. **Faster Parsing**: Protobuf is designed for efficient serialization and deserialization, leading to quicker data loading times.

3. **Type Safety**: Protobuf provides strong typing, reducing the likelihood of runtime errors due to data inconsistencies.

4. **Backward Compatibility**: Protobuf allows for easy schema evolution, ensuring your code remains compatible with future data updates.

5. **Cross-Platform Consistency**: The use of protobuf ensures consistent data representation across different platforms and languages.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  country_state_city_v1: ^1.0.0
```

Then run:

```
dart pub get
```

## Usage

Here's a quick example of how to use the Country-State-City Database Package:

```dart
import 'package:country_state_city_v1/country_state_city_v1.dart';

void main() async {
  final provider = ServerDataProvider();
  await provider.initialize();

  // Get all countries
  final countries = provider.getAllCountries();
  print('Total countries: ${countries.length}');

  // Get states for a specific country (e.g., USA)
  final usaStates = provider.getStatesForCountry(840); // 840 is the country code for USA
  print('Total states in USA: ${usaStates.length}');

  // Get cities for a specific state (e.g., California)
  final californiaCities = provider.getCitiesForState(1439); // 1439 is the state code for California
  print('Total cities in California: ${californiaCities.length}');

  // Get a country by ISO2 code
  final usa = provider.getCountryByIso2('US');
  print('Country name: ${usa?.name}');
}
```

For more detailed usage instructions and API documentation, please refer to the [API Reference](https://pub.dev/documentation/country_state_city_v1/latest/).

## Data Updates

This package is automatically updated on the first day of each month to ensure data accuracy. The update process includes:

1. Checking for changes in the source data repository
2. Downloading and processing new CSV files if changes are detected
3. Generating updated protobuf files
4. Running benchmarks and updating this README
5. Publishing the new version to pub.dev

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.