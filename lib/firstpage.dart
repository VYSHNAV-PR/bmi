import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController height = TextEditingController();
  final TextEditingController weight = TextEditingController();
  double result=0.0;
  void bmicalculate(){
    double Height=double.parse(height.text)/100;
    double Weight=double.parse(weight.text);
    double Heightsquare=Height*Height;
    result=Weight/Heightsquare;
    setState(() {
      result=result;
    });
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: height,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.trending_up), labelText: "height in cm"),
          ),
          TextField(
              controller: weight,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.menu), labelText: "weight in kg")),
          ElevatedButton(
              onPressed: () {bmicalculate();},
              style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
              child: Text("Calculate")),
          Text(result.toStringAsFixed(2))
        ],
      ),
    );
  }
}
