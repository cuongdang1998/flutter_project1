import 'package:flutter/material.dart';
import 'person.dart';
void main() => runApp(MaterialApp(
  home: MyHome()
));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Person> sentences=[
    Person(name:"Cường", age: 22),
    Person(name:'Quốc', age: 25),
    Person(name:'Đặng', age: 35)
  ];
  Widget myCard(Person p){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Card(
        color: Colors.greenAccent,
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(p.name,style: TextStyle(fontFamily: "DancingScript")),
                    SizedBox(width:10.0),
                    Text(p.age.toString(),style: TextStyle(fontFamily: "DancingScript")),
                  ],
                )
            )
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My english app'),
          centerTitle: true
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: sentences.map((sen)=> myCard(sen)).toList()
      )
    );
  }
}
