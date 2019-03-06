import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:open_weather_api/src/models/models.dart'
    show Wind, Coord, Condition;

import 'package:open_weather_api/src/models/simple.dart';

import 'serializer.dart';

part 'simple.jser.dart';

@GenSerializer()
class SimpleHourlyForecastSerializer extends Serializer<HourlyForecast>
    with _$SimpleHourlyForecastSerializer {}

@GenSerializer()
class SimpleHourlyForecastsSerializer extends Serializer<HourlyForecasts>
    with _$SimpleHourlyForecastsSerializer {}

@GenSerializer()
class SimpleWeatherSerializer extends Serializer<Weather>
    with _$SimpleWeatherSerializer {}
