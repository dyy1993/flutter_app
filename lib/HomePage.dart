import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final _datas = ['232','234423','235235'];
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget._datas.map((String data) {
           return new ListTile(
                      title: new Text(
                        data,
                      ),
                      onTap: () {
                        
                      },
                    );
        }).toList(),
      ),
    );
  }

  
}
