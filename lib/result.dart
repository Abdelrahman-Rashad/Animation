
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final double hslider;
  final double wslider;
  final dynamic val;
  Result({Key?key, required this.hslider,required this.wslider,required this.val}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  bool selected=true;
  double vpadding=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: AnimatedPadding(
        duration: Duration(seconds: 2),
        padding: EdgeInsets.all(vpadding),
        curve: Curves.fastOutSlowIn,
        child: Stack(
          children: [
            AnimatedPositioned(
                  duration: Duration(seconds: 2),
                  width: selected?400.0:320.0,
                  height: selected?100.0:150.0,
                  top: selected?40.0:100.0,
                  left: selected?30.0:80.0,
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selected=!selected;
                        setState(() {
                          vpadding=vpadding==0.0?20.0:0.0;
                        });
                      });
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Height : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text(widget.hslider.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Width : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text(widget.wslider.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Text(widget.val==1?"Male":"Female",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ],
                              ),

                          ),
                        ),

                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
