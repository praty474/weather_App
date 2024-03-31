part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocEvent {
  const WeatherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherBlocEvent {}
