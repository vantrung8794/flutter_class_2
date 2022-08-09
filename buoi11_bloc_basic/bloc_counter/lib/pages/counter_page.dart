import 'package:bloc_counter/blocs/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter Example'),
        ),
        body: CounterBody(),
      ),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                '${state.count}',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              final counterBloc = context.read<CounterBloc>();
              counterBloc.add(OnCounterIncrease());
            },
            child: Text("Increase"),
          )
        ],
      ),
    );
  }
}
