import 'package:flutter/material.dart';
import '../services/mockapi.dart';

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
      home: AsyncExample(),
    );
  }
}

class AsyncExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AsyncExampleState();

}

class _AsyncExampleState extends State<AsyncExample>{
  int ferrari=0,textferrari=0;
  int hyundai=0, texthyundai=0;
  int fisher=0, textfisher=0;
  bool selected = true;
  late double _width = 0.0,_width1 = 0.0, _width2 = 0.0;
  late double _height = 10.0,_height1 = 10.0, _height2 = 10.0;
  int _time = 0,_time1 = 0, _time2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async-Await/ Caroline Lucas, Septimo "A" '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            //primer boton//
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.large(
                  backgroundColor: Colors.green,
                  onPressed: () async {
                    setState(() {
                      _width=200.0;
                      _height=10.0;
                      _time= 1;
                    });
                    // Add your onPressed code here!
                    //datosprueba();
                    //print("$datosprueba()");
                    ferrari = await MockApi().getFerrariInteger();
                    setState(() {
                      textferrari= ferrari;
                      print("$textferrari");
                      _width= 0.0;
                      _height= 10.0;
                      _time= 0;
                    });
                  },
                  child: const Icon(Icons.flash_on_rounded),
                ),
              ],
            ),
            AnimatedContainer(
              width: _width,
              height: _height,
              color: Colors.green,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: _time),
            ),
            Text(
              "$textferrari",
              style: const TextStyle(
                  color: Colors.green,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),

            //segundo boton//
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                FloatingActionButton.large(
                  backgroundColor: Colors.yellow,
                  onPressed: () async {
                    // Add your onPressed code here!
                    setState(() {
                      _width1=400.0;
                      _height1=10.0;
                      _time1= 3;
                    });
                    hyundai = await MockApi().getFerrariInteger();
                    setState(() {
                      texthyundai= hyundai;
                      print("$texthyundai");
                      _width1= 0.0;
                      _height1= 10.0;
                      _time1= 0;
                    });
                  },
                  child: const Icon(Icons.car_repair_sharp),
                ),
              ],
            ),
            AnimatedContainer(
              width: _width1,
              height: _height1,
              color: Colors.yellow,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: _time1),
            ),
            Text(
              "$texthyundai",
              style: const TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),

            //tercer boton//
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                FloatingActionButton.large(
                  backgroundColor: Colors.red,
                  onPressed: () async {
                    setState(() {
                      _width2=1600.0;
                      _height2=10.0;
                      _time2= 5;
                    });
                    // Add your onPressed code here!
                    fisher = await MockApi().getFerrariInteger();
                    setState(() {
                      textfisher= fisher;
                      print("$textfisher");
                      _width2= 0.0;
                      _height2= 10.0;
                      _time2= 0;
                    });
                  },
                  child: const Icon(Icons.directions_walk),
                ),
              ],
            ),
            AnimatedContainer(
              width: _width2,
              height: _height2,
              color: Colors.red,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: _time2),
            ),
            Text(
              "$textfisher",
              style: const TextStyle(
                  color: Colors.red,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}



