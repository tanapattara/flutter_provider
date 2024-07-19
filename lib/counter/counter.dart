import 'package:flutter/material.dart';
import 'package:flutter_provider/counter/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
        builder: (context, counterProvider, child) {
      return Scaffold(
        body: Center(
          child: Text(counterProvider.value.toString()),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterProvider>().decrementCounter(),
              tooltip: 'Decrement',
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterProvider>().incrementCounter(),
              tooltip: 'Increment',
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      );
    });
  }
}
