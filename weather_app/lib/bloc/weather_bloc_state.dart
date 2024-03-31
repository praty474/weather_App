part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocState {
  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlockLoading extends WeatherBlocState {}

final class WeatherBlockFailure extends WeatherBlocState {}

final class WeatherBlockSuccess extends WeatherBlocState {
  final Weather weather;

   WeatherBlockSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
