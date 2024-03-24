import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = 'Tarun sir';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        child: Text("Welcome to my $days Days flutter program with $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
