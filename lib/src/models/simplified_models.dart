import 'models.dart' as model;

import 'package:open_weather_api/src/serializer/simple.dart';

class Weather {
  final int id;

  final String name;

  final model.Coord coord;

  final double temp;

  final num humidity;

  final model.Wind wind;

  final double snow;

  final double rain;

  final model.Condition condition;

  Weather(
      {this.id,
      this.name,
      this.coord,
      this.temp,
      this.humidity,
      this.wind,
      this.snow,
      this.rain,
      this.condition});

  factory Weather.from(model.CurrentWeather parent) => Weather(
        id: parent.id,
        name: parent.name,
        coord: parent.coord,
        temp: parent.weather.temp,
        humidity: parent.weather.humidity,
        wind: parent.wind,
        snow: parent.snow?.threeH,
        rain: parent.rain?.threeH,
        condition: parent.condition.first,
      );

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = SimpleWeatherSerializer();
}

class HourlyForecast {
  final int dt;

  final double temp;

  final num humidity;

  final model.Wind wind;

  final double snow;

  final double rain;

  final model.Condition condition;

  HourlyForecast(
      {this.dt,
      this.temp,
      this.humidity,
      this.wind,
      this.snow,
      this.rain,
      this.condition});

  factory HourlyForecast.from(model.HourlyForecast parent) => HourlyForecast(
        dt: parent.dt,
        temp: parent.weather.temp,
        humidity: parent.weather.humidity,
        wind: parent.wind,
        snow: parent.snow?.threeH,
        rain: parent.rain?.threeH,
        condition: parent.conditions.first,
      );

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = SimpleHourlyForecastSerializer();
}

class HourlyForecasts {
  final int id;

  final String name;

  final model.Coord coord;

  final String country;

  final List<HourlyForecast> forecasts;

  HourlyForecasts(
      {this.id, this.name, this.coord, this.country, this.forecasts});

  factory HourlyForecasts.from(model.HourlyForecasts parent) => HourlyForecasts(
        id: parent.city.id,
        name: parent.city.name,
        coord: parent.city.coord,
        country: parent.city.country,
        forecasts: parent.forecasts.map((v) => HourlyForecast.from(v)).toList(),
      );

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = SimpleHourlyForecastsSerializer();
}
