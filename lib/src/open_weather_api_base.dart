import 'models/models.dart';

import 'package:jaguar_resty/jaguar_resty.dart';

class OpenWeatherApi {
  static const base = "https://api.openweathermap.org/data/2.5/";

  final String _apiKey;

  // TODO

  OpenWeatherApi(this._apiKey) {}

  final Route route = Route(base);

  Future<CurrentWeather> byId(String id,
      {Language lang = Language.english,
      TemperatureUnit unit = TemperatureUnit.kelvin}) async {
    final req = route.get.path('weather').queries({"id": id, "appid": _apiKey});

    if (unit != TemperatureUnit.kelvin) req.query("units", unit.value);

    if (lang != Language.english) req.query("lang", lang.value);

    final resp = await req.go();

    if (resp.statusCode != 200) throw resp;

    final ret = resp.decodeJson(CurrentWeather.serializer.fromMap);

    return ret;
  }

  Future<CurrentWeather> byIds(Iterable<String> id,
      {Language lang = Language.english,
      TemperatureUnit unit = TemperatureUnit.kelvin}) async {
    final req = route.get
        .path('weather')
        .queries({"id": id.join(','), "appid": _apiKey});

    if (unit != TemperatureUnit.kelvin) req.query("units", unit.value);

    if (lang != Language.english) req.query("lang", lang.value);

    final resp = await req.go();

    if (resp.statusCode != 200) throw resp;

    final ret = resp.decodeJson(CurrentWeather.serializer.fromMap);

    return ret;
  }

  Future<CurrentWeather> byName(String name,
      {Language lang = Language.english,
      TemperatureUnit unit = TemperatureUnit.kelvin}) async {
    final req =
        route.get.path('weather').queries({"q": name, "appid": _apiKey});

    if (unit != TemperatureUnit.kelvin) req.query("units", unit.value);

    if (lang != Language.english) req.query("lang", lang.value);

    final resp = await req.go();

    if (resp.statusCode != 200) throw resp;

    final ret = resp.decodeJson(CurrentWeather.serializer.fromMap);

    return ret;
  }

  Future<CurrentWeather> byCoordinate(Coord coord,
      {Language lang = Language.english,
      TemperatureUnit unit = TemperatureUnit.kelvin}) async {
    final req = route.get.path('weather').queries(
        {"lon": coord.longitude, "lat": coord.latitude, "appid": _apiKey});

    if (unit != TemperatureUnit.kelvin) req.query("units", unit.value);

    if (lang != Language.english) req.query("lang", lang.value);

    final resp = await req.go();

    if (resp.statusCode != 200) throw resp;

    final ret = resp.decodeJson(CurrentWeather.serializer.fromMap);

    return ret;
  }

  Future<CurrentWeather> byZipCode(String zipcode, Country country,
      {Language lang = Language.english,
      TemperatureUnit unit = TemperatureUnit.kelvin}) async {
    final req = route.get
        .path('weather')
        .queries({"zip": "$zipcode,$country", "appid": _apiKey});

    if (unit != TemperatureUnit.kelvin) req.query("units", unit.value);

    if (lang != Language.english) req.query("lang", lang.value);

    final resp = await req.go();

    if (resp.statusCode != 200) throw resp;

    final ret = resp.decodeJson(CurrentWeather.serializer.fromMap);

    return ret;
  }
}

class Country {
  final String name;

  final String value;

  const Country(this.name, this.value);

  static const us = Country("US", "us");
}

class Language {
  final String name;

  final String value;

  const Language(this.name, this.value);

  static const english = Language("English", "EN");

  static const russian = Language("Russian", "RU");

  static const italian = Language("Italian", "IT");

  static const spanish = Language("Spanish", "ES");

  static const spanish1 = Language("Spanish", "SP");

  static const ukrainian = Language("Ukrainian", "UK");

  static const ukrainian1 = Language("Ukrainian", "UA");

  static const german = Language("German", "DE");

  static const portuguese = Language("Portuguese", "PT");

  static const romanian = Language("Romanian", "RO");

  static const polish = Language("Polish", "PL");

  static const finnish = Language("Finnish", "FI");

  static const dutch = Language("Dutch", "NL");

  static const french = Language("French", "FR");

  static const bulgarian = Language("Bulgarian", "BG");

  static const swedish = Language("Swedish", "SV");

  static const swedish1 = Language("Swedish", "SE");

  static const turkish = Language("Turkish", "TR");

  static const Croatian = Language("croatian", "HR");

  static const catalan = Language("Catalan", "CA");

  static const chineseTraditional = Language("Chinese Traditional", "ZH_TW");

  static const chineseSimplified = Language("Chinese Simplified", "ZH");

  static const chineseSimplified1 = Language("Chinese Simplified", "ZH_CN");
}

class TemperatureUnit {
  final String name;

  final String value;

  const TemperatureUnit(this.name, this.value);

  static const celsius = TemperatureUnit("Celsius", "metric");

  static const fahrenheit = TemperatureUnit("Fahrenheit", "imperial");

  static const kelvin = TemperatureUnit("Kelvin", "kelvin");
}
