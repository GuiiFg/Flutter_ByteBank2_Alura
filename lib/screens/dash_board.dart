import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Byte Bank 2",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/dashboard/bytebank_logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              width: 200,
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.people_rounded, size: 32,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Contatos",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
