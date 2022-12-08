import 'package:flutter/material.dart';
import '../services/mockapi.dart';

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}
Future<String> fetchUserOrder() => Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const FabExample(),
    );
  }
}

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 16),
                FloatingActionButton.large(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.thunderstorm_outlined),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 16),
                FloatingActionButton.large(
                  backgroundColor: Colors.yellow,
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.car_rental),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 16),
                FloatingActionButton.large(
                    backgroundColor: Colors.red,
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.directions_walk),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
