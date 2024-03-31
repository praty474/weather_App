import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<WeatherBlocEvent>((event, emit) async {
      try {
        WeatherFactory wf =
            WeatherFactory("apikey", language: Language.ENGLISH);
        Position position = await Geolocator.getCurrentPosition();
        Weather weather = await wf.currentWeatherByLocation(
            position.latitude, position.longitude);
        emit(WeatherBlockSuccess(weather));
      } catch (e) {
        emit(WeatherBlockFailure());
      }
    });
  }
}
