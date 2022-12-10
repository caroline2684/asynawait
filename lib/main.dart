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
/*Future<int> datos = MockApi().getFerrariInteger();

doSomething(){
  //print("$datos");
  Future.delayed(const Duration(seconds: 2), () => print("$datos"));
}*/

/////////////ESTE ES//////////

Future<int> datosprueba() async{
  final datos = await MockApi().getFerrariInteger();
  print(datos);
  Text("$datos");
  //return Future.delayed(const Duration(seconds: 2), () => print('$datos'));
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


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: const Text('Botones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                FloatingActionButton.large(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    // Add your onPressed code here!
                    //datosprueba();
                    print("$datosprueba()");
                  },
                  child: const Icon(Icons.thunderstorm_outlined),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  onPressed: () {
                    // Add your onPressed code here!
                    Text("$datosprueba1()");
                  },
                  child: const Icon(Icons.car_rental),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                FloatingActionButton(
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
    );
  }
}

//////ESTO ES PRUEBA////
/*class BottomConst extends StatelessWidget{
  const BottomConst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<int>(
          future: datosprueba(),
          builder: (BuildContext context, snapshot){
            if(!snapshot.hasData){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else{
              final datosfinales=snapshot.data;
              return Center(
                child: Text(datosprueba().toString()),
              );
            }
          },
        ),
      ),
    );
  }
}*/



