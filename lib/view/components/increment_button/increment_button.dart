import 'package:flutter/material.dart';
import 'package:flutter_counter_app/view_model/counter/counter_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IncrementButton extends ConsumerWidget {
  const IncrementButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef? ref) {
    final counter = ref?.read(counterProvider.notifier);
    return FloatingActionButton(
      onPressed: counter?.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
