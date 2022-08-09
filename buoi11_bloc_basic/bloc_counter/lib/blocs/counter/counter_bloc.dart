import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<OnCounterIncrease>((event, emit) {
      final newCount = state.count + 1;
      emit(CounterState(count: newCount));
    });
  }
}
