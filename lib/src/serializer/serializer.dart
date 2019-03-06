import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:open_weather_api/src/models/models.dart';

part 'serializer.jser.dart';

@GenSerializer(
  fields: {
    'longitude': EnDecode(alias: 'lon'),
    'latitude': EnDecode(alias: 'lat'),
  },
)
class CoordSerializer extends Serializer<Coord> with _$CoordSerializer {}

@GenSerializer(
  fields: {
    'degree': EnDecode(alias: 'deg'),
  },
)
class WindSerializer extends Serializer<Wind> with _$WindSerializer {}

@GenSerializer(
  fields: {
    'oneH': EnDecode(alias: '1h'),
    'threeH': EnDecode(alias: '3h'),
  },
)
class SnowSerializer extends Serializer<Snow> with _$SnowSerializer {}

@GenSerializer(
  fields: {
    'oneH': EnDecode(alias: '1h'),
    'threeH': EnDecode(alias: '3h'),
  },
)
class RainSerializer extends Serializer<Rain> with _$RainSerializer {}

@GenSerializer()
class WeatherSerializer extends Serializer<Weather> with _$WeatherSerializer {}

@GenSerializer()
class ConditionSerializer extends Serializer<Condition>
    with _$ConditionSerializer {}

@GenSerializer()
class CloudsSerializer extends Serializer<Clouds> with _$CloudsSerializer {}

@GenSerializer()
class SysSerializer extends Serializer<Sys> with _$SysSerializer {}

@GenSerializer(fields: {
  'weather': EnDecode(alias: 'main'),
  'condition': EnDecode(alias: 'weather'),
}, ignore: [
  'unit',
  'lang'
])
class CurrentWeatherSerializer extends Serializer<CurrentWeather>
    with _$CurrentWeatherSerializer {}

@GenSerializer()
class CitySerializer extends Serializer<City> with _$CitySerializer {}

@GenSerializer(
  fields: {
    "tempDay": EnDecode(alias: 'day', processor: doubleToNumProcessor),
    "tempMin": EnDecode(alias: 'min', processor: doubleToNumProcessor),
    "tempMax": EnDecode(alias: 'max', processor: doubleToNumProcessor),
    "tempNight": EnDecode(alias: 'night', processor: doubleToNumProcessor),
    "tempEvening": EnDecode(alias: 'eve', processor: doubleToNumProcessor),
    "tempMorning": EnDecode(alias: 'morn', processor: doubleToNumProcessor),
  },
)
class DailyTemperatureSerializer extends Serializer<DailyTemperature>
    with _$DailyTemperatureSerializer {}

@GenSerializer(
  fields: {
    "temperature": EnDecode(alias: 'temp'),
    "conditions": EnDecode(alias: 'weather'),
    "degree": EnDecode(alias: 'deg'),
  },
)
class DailyForecastSerializer extends Serializer<DailyForecast>
    with _$DailyForecastSerializer {}

@GenSerializer(
  fields: {
    "count": EnDecode(alias: 'cnt'),
    "forecasts": EnDecode(alias: 'list'),
  },
)
class DailyForecastsSerializer extends Serializer<DailyForecasts>
    with _$DailyForecastsSerializer {}
