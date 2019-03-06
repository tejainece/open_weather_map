import 'models.dart';
import 'package:open_weather_api/src/serializer/serializer.dart';

class City {
  int id;

  String name;

  Coord coord;

  String country;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = CitySerializer();
}

class DailyTemperature {
  double tempDay;
  double tempMin;
  double tempMax;
  double tempNight;
  double tempEvening;
  double tempMorning;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = DailyTemperatureSerializer();
}

class DailyForecast {
  int dt;

  DailyTemperature temperature;

  List<Condition> conditions;

  double pressure;

  int humidity;

  double speed;

  int degree;

  int clouds;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = DailyForecastSerializer();
}

class DailyForecasts {
  City city;

  int count;

  List<DailyForecast> forecasts;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = DailyForecastsSerializer();
}
