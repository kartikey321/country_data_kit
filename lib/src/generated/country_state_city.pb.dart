//
//  Generated code. Do not modify.
//  source: country_state_city.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Country extends $pb.GeneratedMessage {
  factory Country({
    $core.int? id,
    $core.String? name,
    $core.String? iso3,
    $core.String? iso2,
    $core.String? phonecode,
    $core.String? capital,
    $core.String? currency,
    $core.String? native,
    $core.String? emoji,
    $core.String? emojiU,
    $core.String? wikiDataId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (iso3 != null) {
      $result.iso3 = iso3;
    }
    if (iso2 != null) {
      $result.iso2 = iso2;
    }
    if (phonecode != null) {
      $result.phonecode = phonecode;
    }
    if (capital != null) {
      $result.capital = capital;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (native != null) {
      $result.native = native;
    }
    if (emoji != null) {
      $result.emoji = emoji;
    }
    if (emojiU != null) {
      $result.emojiU = emojiU;
    }
    if (wikiDataId != null) {
      $result.wikiDataId = wikiDataId;
    }
    return $result;
  }
  Country._() : super();
  factory Country.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Country.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Country', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'iso3')
    ..aOS(4, _omitFieldNames ? '' : 'iso2')
    ..aOS(5, _omitFieldNames ? '' : 'phonecode')
    ..aOS(6, _omitFieldNames ? '' : 'capital')
    ..aOS(7, _omitFieldNames ? '' : 'currency')
    ..aOS(8, _omitFieldNames ? '' : 'native')
    ..aOS(9, _omitFieldNames ? '' : 'emoji')
    ..aOS(10, _omitFieldNames ? '' : 'emojiU', protoName: 'emojiU')
    ..aOS(11, _omitFieldNames ? '' : 'wikiDataId', protoName: 'wikiDataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Country clone() => Country()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Country copyWith(void Function(Country) updates) => super.copyWith((message) => updates(message as Country)) as Country;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Country create() => Country._();
  Country createEmptyInstance() => create();
  static $pb.PbList<Country> createRepeated() => $pb.PbList<Country>();
  @$core.pragma('dart2js:noInline')
  static Country getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Country>(create);
  static Country? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iso3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set iso3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIso3() => $_has(2);
  @$pb.TagNumber(3)
  void clearIso3() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get iso2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set iso2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIso2() => $_has(3);
  @$pb.TagNumber(4)
  void clearIso2() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phonecode => $_getSZ(4);
  @$pb.TagNumber(5)
  set phonecode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhonecode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhonecode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get capital => $_getSZ(5);
  @$pb.TagNumber(6)
  set capital($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCapital() => $_has(5);
  @$pb.TagNumber(6)
  void clearCapital() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get currency => $_getSZ(6);
  @$pb.TagNumber(7)
  set currency($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurrency() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrency() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get native => $_getSZ(7);
  @$pb.TagNumber(8)
  set native($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNative() => $_has(7);
  @$pb.TagNumber(8)
  void clearNative() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get emoji => $_getSZ(8);
  @$pb.TagNumber(9)
  set emoji($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEmoji() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmoji() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get emojiU => $_getSZ(9);
  @$pb.TagNumber(10)
  set emojiU($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEmojiU() => $_has(9);
  @$pb.TagNumber(10)
  void clearEmojiU() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get wikiDataId => $_getSZ(10);
  @$pb.TagNumber(11)
  set wikiDataId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasWikiDataId() => $_has(10);
  @$pb.TagNumber(11)
  void clearWikiDataId() => clearField(11);
}

class Countries extends $pb.GeneratedMessage {
  factory Countries({
    $core.Iterable<Country>? countries,
  }) {
    final $result = create();
    if (countries != null) {
      $result.countries.addAll(countries);
    }
    return $result;
  }
  Countries._() : super();
  factory Countries.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Countries.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Countries', createEmptyInstance: create)
    ..pc<Country>(1, _omitFieldNames ? '' : 'countries', $pb.PbFieldType.PM, subBuilder: Country.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Countries clone() => Countries()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Countries copyWith(void Function(Countries) updates) => super.copyWith((message) => updates(message as Countries)) as Countries;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Countries create() => Countries._();
  Countries createEmptyInstance() => create();
  static $pb.PbList<Countries> createRepeated() => $pb.PbList<Countries>();
  @$core.pragma('dart2js:noInline')
  static Countries getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Countries>(create);
  static Countries? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Country> get countries => $_getList(0);
}

class State extends $pb.GeneratedMessage {
  factory State({
    $core.int? id,
    $core.String? name,
    $core.String? stateCode,
    $core.int? countryId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (stateCode != null) {
      $result.stateCode = stateCode;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    return $result;
  }
  State._() : super();
  factory State.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'State', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'stateCode')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'countryId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  State clone() => State()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  State copyWith(void Function(State) updates) => super.copyWith((message) => updates(message as State)) as State;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static State create() => State._();
  State createEmptyInstance() => create();
  static $pb.PbList<State> createRepeated() => $pb.PbList<State>();
  @$core.pragma('dart2js:noInline')
  static State getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State>(create);
  static State? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get stateCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set stateCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStateCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearStateCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get countryId => $_getIZ(3);
  @$pb.TagNumber(4)
  set countryId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountryId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryId() => clearField(4);
}

class States extends $pb.GeneratedMessage {
  factory States({
    $core.Iterable<State>? states,
  }) {
    final $result = create();
    if (states != null) {
      $result.states.addAll(states);
    }
    return $result;
  }
  States._() : super();
  factory States.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory States.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'States', createEmptyInstance: create)
    ..pc<State>(1, _omitFieldNames ? '' : 'states', $pb.PbFieldType.PM, subBuilder: State.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  States clone() => States()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  States copyWith(void Function(States) updates) => super.copyWith((message) => updates(message as States)) as States;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static States create() => States._();
  States createEmptyInstance() => create();
  static $pb.PbList<States> createRepeated() => $pb.PbList<States>();
  @$core.pragma('dart2js:noInline')
  static States getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<States>(create);
  static States? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<State> get states => $_getList(0);
}

class City extends $pb.GeneratedMessage {
  factory City({
    $core.int? id,
    $core.String? name,
    $core.int? stateId,
    $core.int? countryId,
    $core.String? latitude,
    $core.String? longitude,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (stateId != null) {
      $result.stateId = stateId;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    return $result;
  }
  City._() : super();
  factory City.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory City.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'City', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'stateId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'countryId', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'latitude')
    ..aOS(6, _omitFieldNames ? '' : 'longitude')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  City clone() => City()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  City copyWith(void Function(City) updates) => super.copyWith((message) => updates(message as City)) as City;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static City create() => City._();
  City createEmptyInstance() => create();
  static $pb.PbList<City> createRepeated() => $pb.PbList<City>();
  @$core.pragma('dart2js:noInline')
  static City getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<City>(create);
  static City? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get stateId => $_getIZ(2);
  @$pb.TagNumber(3)
  set stateId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStateId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get countryId => $_getIZ(3);
  @$pb.TagNumber(4)
  set countryId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountryId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get latitude => $_getSZ(4);
  @$pb.TagNumber(5)
  set latitude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get longitude => $_getSZ(5);
  @$pb.TagNumber(6)
  set longitude($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLongitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearLongitude() => clearField(6);
}

class Cities extends $pb.GeneratedMessage {
  factory Cities({
    $core.Iterable<City>? cities,
  }) {
    final $result = create();
    if (cities != null) {
      $result.cities.addAll(cities);
    }
    return $result;
  }
  Cities._() : super();
  factory Cities.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cities.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cities', createEmptyInstance: create)
    ..pc<City>(1, _omitFieldNames ? '' : 'cities', $pb.PbFieldType.PM, subBuilder: City.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cities clone() => Cities()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cities copyWith(void Function(Cities) updates) => super.copyWith((message) => updates(message as Cities)) as Cities;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cities create() => Cities._();
  Cities createEmptyInstance() => create();
  static $pb.PbList<Cities> createRepeated() => $pb.PbList<Cities>();
  @$core.pragma('dart2js:noInline')
  static Cities getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cities>(create);
  static Cities? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<City> get cities => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
