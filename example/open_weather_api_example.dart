import 'dart:io';
import 'package:http/io_client.dart';
import 'package:open_weather_api/open_weather_api.dart';

import 'package:jaguar_resty/jaguar_resty.dart';

main() async {
  globalClient = IOClient();

  final apiKey = Platform.environment["OWM_API_KEY"];

  final api = OpenWeatherApi(apiKey);

  print((await api.byId("2172797")).simplified());

  print((await api.dailyForecastsById("2172797")));

  print((await api.hourlyForecastsById("2172797")).simplified());
}
