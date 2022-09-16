import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_counter_app/model/counter/counter.dart';
import 'package:flutter_counter_app/view_model/counter/counter_notifier.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, Counter>((ref) => CounterNotifier());
