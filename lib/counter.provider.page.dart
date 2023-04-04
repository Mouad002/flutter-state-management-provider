import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/counterstate.dart';

class CounterProviderPage extends StatelessWidget {
  CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterState counterState =
        Provider.of<CounterState>(context, listen: false);

    print("build");
    return Scaffold(
      appBar: AppBar(title: Text('counter provider page')),
      body: Consumer<CounterState>(builder: (context, value, child) {
        return Center(
          child: Text(
            'counter value is ${value.counter}',
            style: TextStyle(
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        );
      }),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              counterState.decrement();
            }),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counterState.increment();
            }),
      ]),
    );
  }
}
