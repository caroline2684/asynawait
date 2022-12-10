import 'package:flutter/material.dart';
import '../services/mockapi.dart';
import 'package:getwidget/getwidget.dart';

/*Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}
Future<String> fetchUserOrder() => Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);*/
Future<int> datos = MockApi().getFerrariInteger();

doSomething(){
  //print("$datos");
  Future.delayed(const Duration(seconds: 2), () => print("$datos"));
}

Future<int> datosprueba() async{
  final datos = await MockApi().getFerrariInteger();
  print(datos);
  return datos;
}

Future<int> datosprueba1() async{
  final datos1 = await MockApi().getHyundaiInteger();
  print(datos1);
  return datos1;
}

Future<int> datosprueba2() async{
  final datos1 = await MockApi().getFisherPriceInteger();
  print(datos1);
  return datos1;
}


void main() async {
  //print('Fetching user order...');
 //print(await createOrderMessage());
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
                  onPressed: () async {
                    // Add your onPressed code here!
                    datosprueba();

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
                    datosprueba1();
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
                    datosprueba2();
                  },
                  child: const Icon(Icons.directions_walk),
                ),
              ],
            ),
          ],
        ),
      ),
      /*body: FutureBuilder<int>(
        future: datosprueba(),
        builder: (BuildContext context,  snapshot){
          if (!snapshot.hasData){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final datosprueba1 = snapshot.data;
            return GFButton(
              onPressed: () {
                Text('$datosprueba1');
              },
              icon: Icon(Icons.home),
            );
          }
          },
      ),*/
    );
  }
}
