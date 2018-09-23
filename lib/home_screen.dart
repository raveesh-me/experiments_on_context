import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.headset_mic),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              Text('Hi! Your name is:'),
              Text(
                _name,
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(
                height: 40.0,
              ),
              IconButton(
                iconSize: 40.0,
                icon: Icon(
                  Icons.ac_unit,
                ),
                onPressed: () async {
                  _name = await showDialog(
                          context: context, builder: dialogBuilder) ??
                      '';
                  setState(() {});
                },
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dialogBuilder(BuildContext context) {
  double width = MediaQuery.of(context).size.width * 0.8;
  return Center(
    child: Card(
      child: Container(
        color: Colors.green,
        width: width,
        height: width * 9 / 16,
      ),
    ),
  );
}
