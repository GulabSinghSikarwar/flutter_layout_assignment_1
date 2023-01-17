import 'package:flutter/material.dart';

void main() {
  runApp(MyApp_Two());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text("i am red"),
            height: double.infinity,
            width: 80,
            color: Colors.red.shade900,
          ),
          Container(
            padding: EdgeInsets.all(10),

            child: Text("i am blue"),
            height: double.infinity,
            color: Colors.blue.shade900,
            width: 80,
          ),
          Container(
            padding: EdgeInsets.all(10),
            
            child: Text("i am green"),
            height: double.infinity,
            color: Colors.greenAccent.shade700,
            width: 80,
          )
        ],
      )),
    ));
  }
}

class MyApp_Two extends StatelessWidget {
  List<Widget> get_containerList() {
    List<Map> data = [
      {
        "date": "23/05/2022",
        "day": "monday",
        "message": "Fetch milk from market "
      },
      {
        "date": "24/05/2022",
        "day": "tuesday",
        "message": "Pay Electricity bill "
      },
      {
        "date": "24/05/2022",
        "day": "tuesday",
        "message": "Complete Flutter Assignment "
      },
    ];
    List<Widget> result = [];

    for (int i = 0; i < data.length; i++) {
      result.add(
        Container(
          margin: EdgeInsets.all(10),

          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${data[i]['date']}"),
                      Text("${data[i]['day']}"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("${data[i]['message']}")],
                  ),
                ]),
          ),
          height: 80,
          width: double.infinity,
          // color: Colors.teal.shade900,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 4,
              ),
              color: Colors.teal.shade500,
              borderRadius: BorderRadius.circular(30)),
        ),
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          body: Column(
        children: get_containerList(),
      )),
    ));
  }
}


/*
*/ 