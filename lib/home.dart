import 'package:flutter/material.dart';
import 'package:task2/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double hslider=0;
  double wslider=0;
  dynamic val=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Height",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Slider(
                          value: hslider,
                          onChanged: (double val){
                            setState(() {
                              hslider=val;
                            });
                          },
                          min: 0,
                          max: 200,
                          label: hslider.round().toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text("width",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Slider(
                          value: wslider,
                          onChanged: (double val){
                            setState(() {
                              wslider=val;
                            });
                          },
                          min: 0,
                          max: 200,
                          label: wslider.round().toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                 ListTile(
                   title: Text("Male"),
                   leading: Radio(
                     value: 1,
                     groupValue: val,
                     onChanged: (state){
                       setState(() {
                         val=state;
                       });
                     },
                     activeColor:Colors.grey ,
                   ),
                 ),
                 ListTile(
                   title: Text("Female"),
                   leading: Radio(
                     value: 2,
                     groupValue: val,
                     onChanged: (state){
                       setState(() {
                         val=state;
                       });
                     },
                     activeColor:Colors.grey ,
                   ),
                 ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(hslider: hslider, wslider: wslider, val: val)));
              }, child: Text("Result")),

            ],
          ),
          
        ),
      ),
    );
  }
}
