// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$SimpleHourlyForecastSerializer
    implements Serializer<HourlyForecast> {
  Serializer<Wind> __windSerializer;
  Serializer<Wind> get _windSerializer =>
      __windSerializer ??= new WindSerializer();
  Serializer<Condition> __conditionSerializer;
  Serializer<Condition> get _conditionSerializer =>
      __conditionSerializer ??= new ConditionSerializer();
  @override
  Map<String, dynamic> toMap(HourlyForecast model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'dt', model.dt);
    setMapValue(ret, 'temp', model.temp);
    setMapValue(ret, 'humidity', model.humidity);
    setMapValue(ret, 'wind', _windSerializer.toMap(model.wind));
    setMapValue(ret, 'snow', model.snow);
    setMapValue(ret, 'rain', model.rain);
    setMapValue(ret, 'condition', _conditionSerializer.toMap(model.condition));
    return ret;
  }

  @override
  HourlyForecast fromMap(Map map) {
    if (map == null) return null;
    final obj = new HourlyForecast(
        dt: map['dt'] as int ?? getJserDefault('dt'),
        temp: map['temp'] as double ?? getJserDefault('temp'),
        humidity: map['humidity'] as num ?? getJserDefault('humidity'),
        wind: _windSerializer.fromMap(map['wind'] as Map) ??
            getJserDefault('wind'),
        snow: map['snow'] as double ?? getJserDefault('snow'),
        rain: map['rain'] as double ?? getJserDefault('rain'),
        condition: _conditionSerializer.fromMap(map['condition'] as Map) ??
            getJserDefault('condition'));
    return obj;
  }
}

abstract class _$SimpleHourlyForecastsSerializer
    implements Serializer<HourlyForecasts> {
  Serializer<Coord> __coordSerializer;
  Serializer<Coord> get _coordSerializer =>
      __coordSerializer ??= new CoordSerializer();
  Serializer<HourlyForecast> __simpleHourlyForecastSerializer;
  Serializer<HourlyForecast> get _simpleHourlyForecastSerializer =>
      __simpleHourlyForecastSerializer ??= new SimpleHourlyForecastSerializer();
  @override
  Map<String, dynamic> toMap(HourlyForecasts model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'coord', _coordSerializer.toMap(model.coord));
    setMapValue(ret, 'country', model.country);
    setMapValue(
        ret,
        'forecasts',
        codeIterable(
            model.forecasts,
            (val) =>
                _simpleHourlyForecastSerializer.toMap(val as HourlyForecast)));
    return ret;
  }

  @override
  HourlyForecasts fromMap(Map map) {
    if (map == null) return null;
    final obj = new HourlyForecasts(
        id: map['id'] as int ?? getJserDefault('id'),
        name: map['name'] as String ?? getJserDefault('name'),
        coord: _coordSerializer.fromMap(map['coord'] as Map) ??
            getJserDefault('coord'),
        country: map['country'] as String ?? getJserDefault('country'),
        forecasts: codeIterable<HourlyForecast>(map['forecasts'] as Iterable,
                (val) => _simpleHourlyForecastSerializer.fromMap(val as Map)) ??
            getJserDefault('forecasts'));
    return obj;
  }
}

abstract class _$SimpleWeatherSerializer implements Serializer<Weather> {
  Serializer<Coord> __coordSerializer;
  Serializer<Coord> get _coordSerializer =>
      __coordSerializer ??= new CoordSerializer();
  Serializer<Wind> __windSerializer;
  Serializer<Wind> get _windSerializer =>
      __windSerializer ??= new WindSerializer();
  Serializer<Condition> __conditionSerializer;
  Serializer<Condition> get _conditionSerializer =>
      __conditionSerializer ??= new ConditionSerializer();
  @override
  Map<String, dynamic> toMap(Weather model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'coord', _coordSerializer.toMap(model.coord));
    setMapValue(ret, 'temp', model.temp);
    setMapValue(ret, 'humidity', model.humidity);
    setMapValue(ret, 'wind', _windSerializer.toMap(model.wind));
    setMapValue(ret, 'snow', model.snow);
    setMapValue(ret, 'rain', model.rain);
    setMapValue(ret, 'condition', _conditionSerializer.toMap(model.condition));
    return ret;
  }

  @override
  Weather fromMap(Map map) {
    if (map == null) return null;
    final obj = new Weather(
        id: map['id'] as int ?? getJserDefault('id'),
        name: map['name'] as String ?? getJserDefault('name'),
        coord: _coordSerializer.fromMap(map['coord'] as Map) ??
            getJserDefault('coord'),
        temp: map['temp'] as double ?? getJserDefault('temp'),
        humidity: map['humidity'] as num ?? getJserDefault('humidity'),
        wind: _windSerializer.fromMap(map['wind'] as Map) ??
            getJserDefault('wind'),
        snow: map['snow'] as double ?? getJserDefault('snow'),
        rain: map['rain'] as double ?? getJserDefault('rain'),
        condition: _conditionSerializer.fromMap(map['condition'] as Map) ??
            getJserDefault('condition'));
    return obj;
  }
}
