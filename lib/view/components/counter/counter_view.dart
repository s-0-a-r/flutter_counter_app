import 'package:flutter/material.dart';
import 'package:flutter_counter_app/view_model/counter/counter_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterView extends ConsumerWidget {
  const CounterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef? ref) {
    final count = ref?.watch(counterProvider).count;
    return Text(
      '$count',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
