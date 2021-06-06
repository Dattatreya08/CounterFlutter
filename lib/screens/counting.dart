import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Displaly();
  }
}

class _Displaly extends State<Display> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.home,
            size: 25.0,
            color: Colors.white,
          ),
          onPressed: () {

          },
        ),
        backgroundColor: Colors.blue,
        title: Text(
          "COUNTER",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200.0,
          width: 300.0,
          color: Colors.lightBlue,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "$num",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0, color: Colors.white
                  ),
                ),
              ),
              Expanded(child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 35.0),
                    child: RaisedButton(
                      onPressed: () {
                        decrement();
                      },
                      color: Colors.white, child: Text("Decrement",
                      style: TextStyle(fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    ),),


                  Padding(padding: EdgeInsets.only(left: 20.0),
                    child: RaisedButton(
                      onPressed: () {
                        increment();
                      },
                      color: Colors.white, child: Text("Increment",
                      style: TextStyle(fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    ),),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          reset();
        },
        child: Icon(Icons.undo),
        tooltip: "Reset",
      ),
      bottomNavigationBar: Container(
        height: 40.0,
        child: Center(
          child: Text(
            "Increment Decrement",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        color: Colors.blue,
      ),
    );
  }

  int increment() {
    setState(() {
      num = num + 1;
    });
    return num;
  }

  int decrement() {
    if (num > 0) {
      setState(() {
        num = num - 1;
      });
    }
    return num;
  }

  void reset() {
    setState(() {
      num = 0;
    });
  }
}