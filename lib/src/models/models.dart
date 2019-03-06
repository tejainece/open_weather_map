import 'package:open_weather_api/src/serializer/serializer.dart';

export 'daily_forecast.dart';

/// Coordinate
class Coord {
  /// City geo location, longitude
  double longitude;

  /// City geo location, latitude
  double latitude;

  Coord({this.longitude, this.latitude});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = CoordSerializer();
}

/// Wind weather information
class Wind {
  /// Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
  double speed;

  /// Wind direction, degrees (meteorological)
  int degree;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = WindSerializer();
}

/// Snow weather information
class Snow {
  /// Snow volume for the last 1 hour, mm
  int oneH;

  /// Snow volume for the last 3 hours, mm
  int threeH;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = SnowSerializer();
}

/// Rain weather information
class Rain {
  /// Rain volume for the last 1 hour, mm
  double oneH;

  /// Rain volume for the last 3 hours, mm
  double threeH;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = RainSerializer();
}

/// Temperature, pressure, humidity, etc.
class Weather {
  /// Temperature
  double temp;

  /// Minimum temperature at the moment. This is deviation from current temp
  /// that is possible for large cities and megalopolises geographically expanded
  double tempMin;

  /// Maximum temperature at the moment. This is deviation from current temp
  /// that is possible for large cities and megalopolises geographically expanded
  double tempMax;

  /// Atmospheric pressure
  num pressure;

  /// Atmospheric pressure on the sea level, hPa
  num seaLevel;

  /// Atmospheric pressure on the ground level, hPa
  num grndLevel;

  /// Humidity, %
  num humidity;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = WeatherSerializer();
}

/// Weather condition codes
class Condition {
  /// Weather condition id
  int id;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  String main;

  /// Weather condition within the group
  String description;

  /// Weather icon id
  String icon;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = ConditionSerializer();
}

class Clouds {
  int all;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = CloudsSerializer();
}

class Sys {
  int type;

  int id;

  double message;

  String country;

  int sunrise;

  int sunset;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = SysSerializer();
}

class CurrentWeather {
  Coord coord;

  Sys sys;

  Weather weather;

  List<Condition> condition;

  Wind wind;

  Clouds clouds;

  Rain rain;

  Snow snow;

  /// Time of data calculation, unix, UTC
  int dt;

  /// City id
  int id;

  /// City name
  String name;

  String unit;

  String lang;

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => toJson().toString();

  static final serializer = CurrentWeatherSerializer();
}
