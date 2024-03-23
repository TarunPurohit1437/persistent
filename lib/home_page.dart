import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = 'tarun';
    bool isReady = true;
    var bawa = "11111";

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to my $days Days flutter $name wo ready he $isReady $bawa"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
