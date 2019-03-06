// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializer.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$CoordSerializer implements Serializer<Coord> {
  final _doubleToNumProcessor = const DoubleToNumProcessor();
  @override
  Map<String, dynamic> toMap(Coord model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'lon', _doubleToNumProcessor.serialize(model.longitude));
    setMapValue(ret, 'lat', _doubleToNumProcessor.serialize(model.latitude));
    return ret;
  }

  @override
  Coord fromMap(Map map) {
    if (map == null) return null;
    final obj = new Coord();
    obj.longitude = _doubleToNumProcessor.deserialize(map['lon'] as num);
    obj.latitude = _doubleToNumProcessor.deserialize(map['lat'] as num);
    return obj;
  }
}

abstract class _$WindSerializer implements Serializer<Wind> {
  final _doubleToNumProcessor = const DoubleToNumProcessor();
  @override
  Map<String, dynamic> toMap(Wind model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'speed', _doubleToNumProcessor.serialize(model.speed));
    setMapValue(ret, 'deg', _doubleToNumProcessor.serialize(model.degree));
    return ret;
  }

  @override
  Wind fromMap(Map map) {
    if (map == null) return null;
    final obj = new Wind();
    obj.speed = _doubleToNumProcessor.deserialize(map['speed'] as num);
    obj.degree = _doubleToNumProcessor.deserialize(map['deg'] as num);
    return obj;
  }
}

abstract class _$SnowSerializer implements Serializer<Snow> {
  final _doubleToNumProcessor = const DoubleToNumProcessor();
  @override
  Map<String, dynamic> toMap(Snow model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, '1h', _doubleToNumProcessor.serialize(model.oneH));
    setMapValue(ret, '3h', _doubleToNumProcessor.serialize(model.threeH));
    return ret;
  }

  @override
  Snow fromMap(Map map) {
    if (map == null) return null;
    final obj = new Snow();
    obj.oneH = _doubleToNumProcessor.deserialize(map['1h'] as num);
    obj.threeH = _doubleToNumProcessor.deserialize(map['3h'] as num);
    return obj;
  }
}

abstract class _$RainSerializer implements Serializer<Rain> {
  final _doubleToNumProcessor = const DoubleToNumProcessor();
  @override
  Map<String, dynamic> toMap(Rain model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, '1h', _doubleToNumProcessor.serialize(model.oneH));
    setMapValue(ret, '3h', _doubleToNumProcessor.serialize(model.threeH));
    return ret;
  }

  @override
  Rain fromMap(Map map) {
    if (map == null) return null;
    final obj = new Rain();
    obj.oneH = _doubleToNumProcessor.deserialize(map['1h'] as num);
    obj.threeH = _doubleToNumProcessor.deserialize(map['3h'] as num);
    return obj;
  }
}

abstract class _$WeatherSerializer implements Serializer<Weather> {
  @override
  Map<String, dynamic> toMap(Weather model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'temp', model.temp);
    setMapValue(ret, 'tempMin', model.tempMin);
    setMapValue(ret, 'tempMax', model.tempMax);
    setMapValue(ret, 'pressure', model.pressure);
    setMapValue(ret, 'seaLevel', model.seaLevel);
    setMapValue(ret, 'grndLevel', model.grndLevel);
    setMapValue(ret, 'humidity', model.humidity);
    return ret;
  }

  @override
  Weather fromMap(Map map) {
    if (map == null) return null;
    final obj = new Weather();
    obj.temp = map['temp'] as double;
    obj.tempMin = map['tempMin'] as double;
    obj.tempMax = map['tempMax'] as double;
    obj.pressure = map['pressure'] as num;
    obj.seaLevel = map['seaLevel'] as num;
    obj.grndLevel = map['grndLevel'] as num;
    obj.humidity = map['humidity'] as num;
    return obj;
  }
}

abstract class _$ConditionSerializer implements Serializer<Condition> {
  @override
  Map<String, dynamic> toMap(Condition model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'main', model.main);
    setMapValue(ret, 'description', model.description);
    setMapValue(ret, 'icon', model.icon);
    return ret;
  }

  @override
  Condition fromMap(Map map) {
    if (map == null) return null;
    final obj = new Condition();
    obj.id = map['id'] as int;
    obj.main = map['main'] as String;
    obj.description = map['description'] as String;
    obj.icon = map['icon'] as String;
    return obj;
  }
}

abstract class _$CloudsSerializer implements Serializer<Clouds> {
  @override
  Map<String, dynamic> toMap(Clouds model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'all', model.all);
    return ret;
  }

  @override
  Clouds fromMap(Map map) {
    if (map == null) return null;
    final obj = new Clouds();
    obj.all = map['all'] as int;
    return obj;
  }
}

abstract class _$SysSerializer implements Serializer<Sys> {
  @override
  Map<String, dynamic> toMap(Sys model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'type', model.type);
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'message', model.message);
    setMapValue(ret, 'country', model.country);
    setMapValue(ret, 'sunrise', model.sunrise);
    setMapValue(ret, 'sunset', model.sunset);
    return ret;
  }

  @override
  Sys fromMap(Map map) {
    if (map == null) return null;
    final obj = new Sys();
    obj.type = map['type'] as int;
    obj.id = map['id'] as int;
    obj.message = map['message'] as double;
    obj.country = map['country'] as String;
    obj.sunrise = map['sunrise'] as int;
    obj.sunset = map['sunset'] as int;
    return obj;
  }
}

abstract class _$CurrentWeatherSerializer
    implements Serializer<CurrentWeather> {
  Serializer<Coord> __coordSerializer;
  Serializer<Coord> get _coordSerializer =>
      __coordSerializer ??= new CoordSerializer();
  Serializer<Sys> __sysSerializer;
  Serializer<Sys> get _sysSerializer => __sysSerializer ??= new SysSerializer();
  Serializer<Weather> __weatherSerializer;
  Serializer<Weather> get _weatherSerializer =>
      __weatherSerializer ??= new WeatherSerializer();
  Serializer<Condition> __conditionSerializer;
  Serializer<Condition> get _conditionSerializer =>
      __conditionSerializer ??= new ConditionSerializer();
  Serializer<Wind> __windSerializer;
  Serializer<Wind> get _windSerializer =>
      __windSerializer ??= new WindSerializer();
  Serializer<Clouds> __cloudsSerializer;
  Serializer<Clouds> get _cloudsSerializer =>
      __cloudsSerializer ??= new CloudsSerializer();
  Serializer<Rain> __rainSerializer;
  Serializer<Rain> get _rainSerializer =>
      __rainSerializer ??= new RainSerializer();
  Serializer<Snow> __snowSerializer;
  Serializer<Snow> get _snowSerializer =>
      __snowSerializer ??= new SnowSerializer();
  @override
  Map<String, dynamic> toMap(CurrentWeather model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'coord', _coordSerializer.toMap(model.coord));
    setMapValue(ret, 'sys', _sysSerializer.toMap(model.sys));
    setMapValue(ret, 'main', _weatherSerializer.toMap(model.weather));
    setMapValue(
        ret,
        'weather',
        codeIterable(model.condition,
            (val) => _conditionSerializer.toMap(val as Condition)));
    setMapValue(ret, 'wind', _windSerializer.toMap(model.wind));
    setMapValue(ret, 'clouds', _cloudsSerializer.toMap(model.clouds));
    setMapValue(ret, 'rain', _rainSerializer.toMap(model.rain));
    setMapValue(ret, 'snow', _snowSerializer.toMap(model.snow));
    setMapValue(ret, 'dt', model.dt);
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    return ret;
  }

  @override
  CurrentWeather fromMap(Map map) {
    if (map == null) return null;
    final obj = new CurrentWeather();
    obj.coord = _coordSerializer.fromMap(map['coord'] as Map);
    obj.sys = _sysSerializer.fromMap(map['sys'] as Map);
    obj.weather = _weatherSerializer.fromMap(map['main'] as Map);
    obj.condition = codeIterable<Condition>(map['weather'] as Iterable,
        (val) => _conditionSerializer.fromMap(val as Map));
    obj.wind = _windSerializer.fromMap(map['wind'] as Map);
    obj.clouds = _cloudsSerializer.fromMap(map['clouds'] as Map);
    obj.rain = _rainSerializer.fromMap(map['rain'] as Map);
    obj.snow = _snowSerializer.fromMap(map['snow'] as Map);
    obj.dt = map['dt'] as int;
    obj.id = map['id'] as int;
    obj.name = map['name'] as String;
    return obj;
  }
}

abstract class _$CitySerializer implements Serializer<City> {
  Serializer<Coord> __coordSerializer;
  Serializer<Coord> get _coordSerializer =>
      __coordSerializer ??= new CoordSerializer();
  @override
  Map<String, dynamic> toMap(City model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'coord', _coordSerializer.toMap(model.coord));
    setMapValue(ret, 'country', model.country);
    return ret;
  }

  @override
  City fromMap(Map map) {
    if (map == null) return null;
    final obj = new City();
    obj.id = map['id'] as int;
    obj.name = map['name'] as String;
    obj.coord = _coordSerializer.fromMap(map['coord'] as Map);
    obj.country = map['country'] as String;
    return obj;
  }
}

abstract class _$DailyTemperatureSerializer
    implements Serializer<DailyTemperature> {
  final _doubleToNumProcessor = const DoubleToNumProcessor();
  @override
  Map<String, dynamic> toMap(DailyTemperature model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'day', _doubleToNumProcessor.serialize(model.tempDay));
    setMapValue(ret, 'min', _doubleToNumProcessor.serialize(model.tempMin));
    setMapValue(ret, 'max', _doubleToNumProcessor.serialize(model.tempMax));
    setMapValue(ret, 'night', _doubleToNumProcessor.serialize(model.tempNight));
    setMapValue(ret, 'eve', _doubleToNumProcessor.serialize(model.tempEvening));
    setMapValue(
        ret, 'morn', _doubleToNumProcessor.serialize(model.tempMorning));
    return ret;
  }

  @override
  DailyTemperature fromMap(Map map) {
    if (map == null) return null;
    final obj = new DailyTemperature();
    obj.tempDay = _doubleToNumProcessor.deserialize(map['day'] as num);
    obj.tempMin = _doubleToNumProcessor.deserialize(map['min'] as num);
    obj.tempMax = _doubleToNumProcessor.deserialize(map['max'] as num);
    obj.tempNight = _doubleToNumProcessor.deserialize(map['night'] as num);
    obj.tempEvening = _doubleToNumProcessor.deserialize(map['eve'] as num);
    obj.tempMorning = _doubleToNumProcessor.deserialize(map['morn'] as num);
    return obj;
  }
}

abstract class _$DailyForecastSerializer implements Serializer<DailyForecast> {
  Serializer<DailyTemperature> __dailyTemperatureSerializer;
  Serializer<DailyTemperature> get _dailyTemperatureSerializer =>
      __dailyTemperatureSerializer ??= new DailyTemperatureSerializer();
  Serializer<Condition> __conditionSerializer;
  Serializer<Condition> get _conditionSerializer =>
      __conditionSerializer ??= new ConditionSerializer();
  @override
  Map<String, dynamic> toMap(DailyForecast model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'dt', model.dt);
    setMapValue(
        ret, 'temp', _dailyTemperatureSerializer.toMap(model.temperature));
    setMapValue(
        ret,
        'weather',
        codeIterable(model.conditions,
            (val) => _conditionSerializer.toMap(val as Condition)));
    setMapValue(ret, 'pressure', model.pressure);
    setMapValue(ret, 'humidity', model.humidity);
    setMapValue(ret, 'speed', model.speed);
    setMapValue(ret, 'deg', model.degree);
    setMapValue(ret, 'clouds', model.clouds);
    return ret;
  }

  @override
  DailyForecast fromMap(Map map) {
    if (map == null) return null;
    final obj = new DailyForecast();
    obj.dt = map['dt'] as int;
    obj.temperature = _dailyTemperatureSerializer.fromMap(map['temp'] as Map);
    obj.conditions = codeIterable<Condition>(map['weather'] as Iterable,
        (val) => _conditionSerializer.fromMap(val as Map));
    obj.pressure = map['pressure'] as double;
    obj.humidity = map['humidity'] as int;
    obj.speed = map['speed'] as double;
    obj.degree = map['deg'] as int;
    obj.clouds = map['clouds'] as int;
    return obj;
  }
}

abstract class _$DailyForecastsSerializer
    implements Serializer<DailyForecasts> {
  Serializer<City> __citySerializer;
  Serializer<City> get _citySerializer =>
      __citySerializer ??= new CitySerializer();
  Serializer<DailyForecast> __dailyForecastSerializer;
  Serializer<DailyForecast> get _dailyForecastSerializer =>
      __dailyForecastSerializer ??= new DailyForecastSerializer();
  @override
  Map<String, dynamic> toMap(DailyForecasts model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'city', _citySerializer.toMap(model.city));
    setMapValue(ret, 'cnt', model.count);
    setMapValue(
        ret,
        'list',
        codeIterable(model.forecasts,
            (val) => _dailyForecastSerializer.toMap(val as DailyForecast)));
    return ret;
  }

  @override
  DailyForecasts fromMap(Map map) {
    if (map == null) return null;
    final obj = new DailyForecasts();
    obj.city = _citySerializer.fromMap(map['city'] as Map);
    obj.count = map['cnt'] as int;
    obj.forecasts = codeIterable<DailyForecast>(map['list'] as Iterable,
        (val) => _dailyForecastSerializer.fromMap(val as Map));
    return obj;
  }
}

abstract class _$HourlyForecastSerializer
    implements Serializer<HourlyForecast> {
  Serializer<Weather> __weatherSerializer;
  Serializer<Weather> get _weatherSerializer =>
      __weatherSerializer ??= new WeatherSerializer();
  Serializer<Condition> __conditionSerializer;
  Serializer<Condition> get _conditionSerializer =>
      __conditionSerializer ??= new ConditionSerializer();
  Serializer<Snow> __snowSerializer;
  Serializer<Snow> get _snowSerializer =>
      __snowSerializer ??= new SnowSerializer();
  Serializer<Rain> __rainSerializer;
  Serializer<Rain> get _rainSerializer =>
      __rainSerializer ??= new RainSerializer();
  Serializer<Wind> __windSerializer;
  Serializer<Wind> get _windSerializer =>
      __windSerializer ??= new WindSerializer();
  Serializer<Clouds> __cloudsSerializer;
  Serializer<Clouds> get _cloudsSerializer =>
      __cloudsSerializer ??= new CloudsSerializer();
  @override
  Map<String, dynamic> toMap(HourlyForecast model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'dt', model.dt);
    setMapValue(ret, 'main', _weatherSerializer.toMap(model.weather));
    setMapValue(
        ret,
        'weather',
        codeIterable(model.conditions,
            (val) => _conditionSerializer.toMap(val as Condition)));
    setMapValue(ret, 'snow', _snowSerializer.toMap(model.snow));
    setMapValue(ret, 'rain', _rainSerializer.toMap(model.rain));
    setMapValue(ret, 'wind', _windSerializer.toMap(model.wind));
    setMapValue(ret, 'clouds', _cloudsSerializer.toMap(model.clouds));
    return ret;
  }

  @override
  HourlyForecast fromMap(Map map) {
    if (map == null) return null;
    final obj = new HourlyForecast();
    obj.dt = map['dt'] as int;
    obj.weather = _weatherSerializer.fromMap(map['main'] as Map);
    obj.conditions = codeIterable<Condition>(map['weather'] as Iterable,
        (val) => _conditionSerializer.fromMap(val as Map));
    obj.snow = _snowSerializer.fromMap(map['snow'] as Map);
    obj.rain = _rainSerializer.fromMap(map['rain'] as Map);
    obj.wind = _windSerializer.fromMap(map['wind'] as Map);
    obj.clouds = _cloudsSerializer.fromMap(map['clouds'] as Map);
    return obj;
  }
}

abstract class _$HourlyForecastsSerializer
    implements Serializer<HourlyForecasts> {
  Serializer<City> __citySerializer;
  Serializer<City> get _citySerializer =>
      __citySerializer ??= new CitySerializer();
  Serializer<HourlyForecast> __hourlyForecastSerializer;
  Serializer<HourlyForecast> get _hourlyForecastSerializer =>
      __hourlyForecastSerializer ??= new HourlyForecastSerializer();
  @override
  Map<String, dynamic> toMap(HourlyForecasts model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'city', _citySerializer.toMap(model.city));
    setMapValue(ret, 'cnt', model.count);
    setMapValue(
        ret,
        'list',
        codeIterable(model.forecasts,
            (val) => _hourlyForecastSerializer.toMap(val as HourlyForecast)));
    return ret;
  }

  @override
  HourlyForecasts fromMap(Map map) {
    if (map == null) return null;
    final obj = new HourlyForecasts();
    obj.city = _citySerializer.fromMap(map['city'] as Map);
    obj.count = map['cnt'] as int;
    obj.forecasts = codeIterable<HourlyForecast>(map['list'] as Iterable,
        (val) => _hourlyForecastSerializer.fromMap(val as Map));
    return obj;
  }
}
