part of 'color_picker_bloc.dart';

@immutable
abstract class ColorPickerEvent {}

class OnChooseColor extends ColorPickerEvent {
  final String selectedColor;

  OnChooseColor({required this.selectedColor});
}
