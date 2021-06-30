import 'package:flutter/material.dart';
import 'package:list_of_json/request_json.dart';
import 'models_json.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage>{

  // ignore: deprecated_member_use
  List<Photos> _dataList = List<Photos>();

  @override
  void initState() {
    getData().then((value){
      setState(() {
        _dataList.addAll(value);
      });
    });
    super.initState();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Some text'),
         backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
          return Card(
                child: ListTile(
                  title: Text(_dataList[index].name),
                  subtitle: Text(_dataList[index].description),
                  leading: Image.network(_dataList[index].picture),
                )
          );
          },
          itemCount: _dataList.length,
      ),
    );
  }
}

