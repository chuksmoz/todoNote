part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}


enum Counter {
  INCREEMENT,
  DECREEMENT
}