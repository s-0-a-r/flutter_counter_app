import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_counter_app/model/counter/counter.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, Counter>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(const Counter(count: 0));
  void increment() => state = state.copyWith(count: state.count + 1);
}
