part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class OnCounterIncrease extends CounterEvent {
  final int newCount;

  OnCounterIncrease({this.newCount = 0});
}
