import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'color_picker_event.dart';
part 'color_picker_state.dart';

class ColorPickerBloc extends Bloc<ColorPickerEvent, ColorPickerState> {
  ColorPickerBloc()
      : super(ColorPickerState(colors: [
          "F2994A",
          "000000",
          "11BD2C",
          "BE1558",
          "4AA1F2",
          "8A23DC",
        ], selectedColor: "F2994A")) {
    on<OnChooseColor>((event, emit) {
      final newColor = event.selectedColor;
      emit(state.copyWith(selectedColor: newColor));
    });
  }
}
