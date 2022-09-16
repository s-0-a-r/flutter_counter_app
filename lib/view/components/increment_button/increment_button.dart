import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_counter_app/provider/counter/counter_provider.dart';

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
