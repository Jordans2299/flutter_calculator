import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: "Jordan's Calculator"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1;
  var num2;
  var result;

  final TextEditingController controller1 = new TextEditingController(text: '0');
  final TextEditingController controller2 = new TextEditingController(text: '0');

  void _addNumbers() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result= num1+num2;
    });

  }

  void _subNumbers(){
    setState(() {
          num1 = int.parse(controller1.text);
          num2 = int.parse(controller2.text);
          result = num1-num2;
        });
  }

    void _multNumbers(){
    setState(() {
          num1 = int.parse(controller1.text);
          num2 = int.parse(controller2.text);
          result = num1*num2;
        });
  }

    void _divNumbers(){
    setState(() {
          num1 = int.parse(controller1.text);
          num2 = int.parse(controller2.text);
          result = num1/num2;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),backgroundColor: Colors.green,
      ),
      body: new Center(
        child: Container(
        //margin: const EdgeInsets.all(40.0),//width: 50.0, height: 50.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
          children: <Widget>[
          Text("Output: $result"),
          Row(mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(child: Text("+"),onPressed: _addNumbers,),
            RaisedButton(child: Text("-"),onPressed: _subNumbers,),
            RaisedButton(child: Text("x"),onPressed: _multNumbers,),
            RaisedButton(child: Text("/"),onPressed: _divNumbers,)
          ],),
            TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "Enter First Number: "),
            controller: controller1,
                ),
            TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "Enter Second Number: "),
            controller: controller2,
                ),
          ],

        ),
       ),
        
      ),
      
    );
  }
}
