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
              Builder(
                builder: (context) => IconButton(
                      iconSize: 40.0,
                      icon: Icon(
                        Icons.ac_unit,
                      ),
                      onPressed: () async {
                        _name = await showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: dialogBuilder) ??
                            "";
                        setState(() {});

                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Hello $_name! You rock")));
                      },
                    ),
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
  TextEditingController nameController =
      TextEditingController(text: '@gmail.com');
  return Center(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: width,
          height: width * 9 / 16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Enter tumhaara naam'),
              TextField(
                controller: nameController,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(nameController.text);
                },
                child: Text('Done'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
