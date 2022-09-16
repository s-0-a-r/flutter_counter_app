import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_counter_app/provider/counter/counter_provider.dart';

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
