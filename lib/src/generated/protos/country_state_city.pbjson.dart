//
//  Generated code. Do not modify.
//  source: protos/country_state_city.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use countryDescriptor instead')
const Country$json = {
  '1': 'Country',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'iso3', '3': 3, '4': 1, '5': 9, '10': 'iso3'},
    {'1': 'iso2', '3': 4, '4': 1, '5': 9, '10': 'iso2'},
    {'1': 'phonecode', '3': 5, '4': 1, '5': 9, '10': 'phonecode'},
    {'1': 'capital', '3': 6, '4': 1, '5': 9, '10': 'capital'},
    {'1': 'currency', '3': 7, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'native', '3': 8, '4': 1, '5': 9, '10': 'native'},
    {'1': 'emoji', '3': 9, '4': 1, '5': 9, '10': 'emoji'},
    {'1': 'emojiU', '3': 10, '4': 1, '5': 9, '10': 'emojiU'},
    {'1': 'wikiDataId', '3': 11, '4': 1, '5': 9, '10': 'wikiDataId'},
  ],
};

/// Descriptor for `Country`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countryDescriptor = $convert.base64Decode(
    'CgdDb3VudHJ5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGlzbzMYAy'
    'ABKAlSBGlzbzMSEgoEaXNvMhgEIAEoCVIEaXNvMhIcCglwaG9uZWNvZGUYBSABKAlSCXBob25l'
    'Y29kZRIYCgdjYXBpdGFsGAYgASgJUgdjYXBpdGFsEhoKCGN1cnJlbmN5GAcgASgJUghjdXJyZW'
    '5jeRIWCgZuYXRpdmUYCCABKAlSBm5hdGl2ZRIUCgVlbW9qaRgJIAEoCVIFZW1vamkSFgoGZW1v'
    'amlVGAogASgJUgZlbW9qaVUSHgoKd2lraURhdGFJZBgLIAEoCVIKd2lraURhdGFJZA==');

@$core.Deprecated('Use countriesDescriptor instead')
const Countries$json = {
  '1': 'Countries',
  '2': [
    {'1': 'countries', '3': 1, '4': 3, '5': 11, '6': '.Country', '10': 'countries'},
  ],
};

/// Descriptor for `Countries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countriesDescriptor = $convert.base64Decode(
    'CglDb3VudHJpZXMSJgoJY291bnRyaWVzGAEgAygLMgguQ291bnRyeVIJY291bnRyaWVz');

@$core.Deprecated('Use stateDescriptor instead')
const State$json = {
  '1': 'State',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'state_code', '3': 3, '4': 1, '5': 9, '10': 'stateCode'},
    {'1': 'country_id', '3': 4, '4': 1, '5': 5, '10': 'countryId'},
    {'1': 'country_name', '3': 5, '4': 1, '5': 9, '10': 'countryName'},
    {'1': 'wikiDataId', '3': 6, '4': 1, '5': 9, '10': 'wikiDataId'},
  ],
};

/// Descriptor for `State`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateDescriptor = $convert.base64Decode(
    'CgVTdGF0ZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIdCgpzdGF0ZV9jb2'
    'RlGAMgASgJUglzdGF0ZUNvZGUSHQoKY291bnRyeV9pZBgEIAEoBVIJY291bnRyeUlkEiEKDGNv'
    'dW50cnlfbmFtZRgFIAEoCVILY291bnRyeU5hbWUSHgoKd2lraURhdGFJZBgGIAEoCVIKd2lraU'
    'RhdGFJZA==');

@$core.Deprecated('Use statesDescriptor instead')
const States$json = {
  '1': 'States',
  '2': [
    {'1': 'states', '3': 1, '4': 3, '5': 11, '6': '.State', '10': 'states'},
  ],
};

/// Descriptor for `States`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statesDescriptor = $convert.base64Decode(
    'CgZTdGF0ZXMSHgoGc3RhdGVzGAEgAygLMgYuU3RhdGVSBnN0YXRlcw==');

@$core.Deprecated('Use cityDescriptor instead')
const City$json = {
  '1': 'City',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'state_id', '3': 3, '4': 1, '5': 5, '10': 'stateId'},
    {'1': 'state_name', '3': 4, '4': 1, '5': 9, '10': 'stateName'},
    {'1': 'country_id', '3': 5, '4': 1, '5': 5, '10': 'countryId'},
    {'1': 'country_name', '3': 6, '4': 1, '5': 9, '10': 'countryName'},
    {'1': 'latitude', '3': 7, '4': 1, '5': 9, '10': 'latitude'},
    {'1': 'longitude', '3': 8, '4': 1, '5': 9, '10': 'longitude'},
    {'1': 'wikiDataId', '3': 9, '4': 1, '5': 9, '10': 'wikiDataId'},
  ],
};

/// Descriptor for `City`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityDescriptor = $convert.base64Decode(
    'CgRDaXR5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhkKCHN0YXRlX2lkGA'
    'MgASgFUgdzdGF0ZUlkEh0KCnN0YXRlX25hbWUYBCABKAlSCXN0YXRlTmFtZRIdCgpjb3VudHJ5'
    'X2lkGAUgASgFUgljb3VudHJ5SWQSIQoMY291bnRyeV9uYW1lGAYgASgJUgtjb3VudHJ5TmFtZR'
    'IaCghsYXRpdHVkZRgHIAEoCVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAggASgJUglsb25naXR1'
    'ZGUSHgoKd2lraURhdGFJZBgJIAEoCVIKd2lraURhdGFJZA==');

@$core.Deprecated('Use citiesDescriptor instead')
const Cities$json = {
  '1': 'Cities',
  '2': [
    {'1': 'cities', '3': 1, '4': 3, '5': 11, '6': '.City', '10': 'cities'},
  ],
};

/// Descriptor for `Cities`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List citiesDescriptor = $convert.base64Decode(
    'CgZDaXRpZXMSHQoGY2l0aWVzGAEgAygLMgUuQ2l0eVIGY2l0aWVz');

