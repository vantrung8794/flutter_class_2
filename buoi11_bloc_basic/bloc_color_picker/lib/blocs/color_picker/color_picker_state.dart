part of 'color_picker_bloc.dart';

class ColorPickerState {
  final List<String>? colors;
  final String? selectedColor;

  ColorPickerState({
    this.colors,
    this.selectedColor,
  });

  ColorPickerState copyWith({
    List<String>? colors,
    String? selectedColor,
  }) {
    return ColorPickerState(
      colors: colors ?? this.colors,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }
}
