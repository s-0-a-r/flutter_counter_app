import 'package:flutter/material.dart';
import 'package:flutter_counter_app/view/components/counter/counter_view.dart';
import 'package:flutter_counter_app/view/components/increment_button/increment_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterView(),
          ],
        ),
      ),
      floatingActionButton: const IncrementButton(),
    );
  }
}
