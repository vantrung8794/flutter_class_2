import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/color_picker/color_picker_bloc.dart';

class PickerPage extends StatelessWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorPickerBloc(),
      child: Scaffold(
        body: PickerBodyWidget(),
      ),
    );
  }
}

class PickerBodyWidget extends StatelessWidget {
  const PickerBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorPickerBloc, ColorPickerState>(
      builder: (context, state) {
        return Stack(children: [
          Container(
            color: Color(int.parse('0xFF${state.selectedColor}')),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (_, index) {
                final item = state.colors?[index];
                return InkWell(
                  onTap: () {
                    final bloc = context.read<ColorPickerBloc>();
                    bloc.add(OnChooseColor(selectedColor: item ?? ''));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(int.parse('0xFF${item}')),
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                );
              },
              itemCount: state.colors?.length ?? 0,
            ),
          )
        ]);
      },
    );
  }
}
