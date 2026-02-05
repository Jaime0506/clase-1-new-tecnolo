
import 'package:flutter/material.dart';
import '../widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: const Center(
        child: CounterWidget(),
      ),
    );
  }
}
