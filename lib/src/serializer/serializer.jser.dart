// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializer.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$CoordSerializer implements Serializer<Coord> {
  @override
  Map<String, dynamic> toMap(Coord model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'lon', model.longitude);
    setMapValue(ret, 'lat', model.latitude);
    return ret;
  }

  @override
  Coord fromMap(Map map) {
    if (map == null) return null;
    final obj = new Coord();
    obj.longitude = map['lon'] as double;
    obj.latitude = map['lat'] as double;
    return obj;
  }
}

abstract class _$WindSerializer implements Serializer<Wind> {
  @override
  Map<String, dynamic> toMap(Wind model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'speed', model.speed);
    setMapValue(ret, 'deg', model.degree);
    return ret;
  }

  @override
  Wind fromMap(Map map) {
    if (map == null) return null;
    final obj = new Wind();
    obj.speed = map['speed'] as double;
    obj.degree = map['deg'] as int;
    return obj;
  }
}

abstract class _$SnowSerializer implements Serializer<Snow> {
  @override
  Map<String, dynamic> toMap(Snow model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, '1h', model.oneH);
    setMapValue(ret, '3h', model.threeH);
    return ret;
  }

  @override
  Snow fromMap(Map map) {
    if (map == null) return null;
    final obj = new Snow();
    obj.oneH = map['1h'] as int;
    obj.threeH = map['3h'] as int;
    return obj;
  }
}

abstract class _$RainSerializer implements Serializer<Rain> {
  @override
  Map<String, dynamic> toMap(Rain model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, '1h', model.oneH);
    setMapValue(ret, '3h', model.threeH);
    return ret;
  }

  @override
  Rain fromMap(Map map) {
    if (map == null) return null;
    final obj = new Rain();
    obj.oneH = map['1h'] as int;
    obj.threeH = map['3h'] as int;
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
    setMapValue(ret, 'dt', model.dt);
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'cod', model.cod);
    setMapValue(ret, 'unit', model.unit);
    setMapValue(ret, 'lang', model.lang);
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
    obj.dt = map['dt'] as int;
    obj.id = map['id'] as int;
    obj.name = map['name'] as String;
    obj.cod = map['cod'] as int;
    obj.unit = map['unit'] as String;
    obj.lang = map['lang'] as String;
    return obj;
  }
}
