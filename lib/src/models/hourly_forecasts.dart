import 'models.dart';
import 'package:open_weather_api/src/serializer/serializer.dart';

class HourlyForecast {
  int dt;

  Weather weather;

  List<Condition> conditions;

  Snow snow;

  Rain rain;

  Wind wind;

  Clouds clouds;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = HourlyForecastSerializer();
}

class HourlyForecasts {
  City city;

  int count;

  List<HourlyForecast> forecasts;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = HourlyForecastsSerializer();
}
