import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Flut App",
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Home' : (BuildContext context) => new Home(),
      '/SignUp' : (BuildContext context) => new SignUp(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  bool value1 = true;
  bool value2 = true;
  void onChangedValue1 (bool value){
    setState(() {
      value1 = value;
    });
  }
  void onChangedValue2 (bool value){
    setState(() {
      value2 = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Center(
             child: new Text("My Profile"),
        ),
        actions: <Widget>[
          new Icon( Icons.settings),
          new Padding(
            padding: new EdgeInsets.all(5),
          ),
        ],
      ),

        body: Container(
          child: SingleChildScrollView(
            child: new Column(
                children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  ),
                  new Container (
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
                  ),
                  new Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  ),
                  new Center(
                    child: new Text(
                      "Dicky Kurniawan",  style: new TextStyle(fontSize: 20.0),  textAlign: TextAlign.center,
                    ),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(hintText: "Username",labelText: 'Username',),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(hintText: "Email", labelText: 'Email',),
                  ),
                 new CheckboxListTile(value: value1, onChanged: onChangedValue1,
                   title: new Text("Available to mentor"),
                 ),
                  new CheckboxListTile(value: value2, onChanged: onChangedValue2,
                    title: new Text("Need Mentoring"),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(hintText: "Bio", labelText: 'Bio',),
                  ),
                  new TextFormField(
                    decoration: InputDecoration(hintText: "Slack Username", labelText: 'Slack Username',),
                  ),
                  new Row (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget> [
                      new Container(
                        child: new IconButton(
                          icon: new Icon(Icons.create, color: Colors.white, size: 30,),
                          onPressed: (){
                            Navigator.pushNamed(context, '/SignUp');
                          },
                        ),
                          margin: EdgeInsets.all(20.0),
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ]
                  ),
                ],
              ),
          ),
        ),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value3 = true;
  bool value4 = true;
  bool value5 = true;
  void onChangedValue3 (bool value){
    setState(() {
      value3 = value;
    });
  }
  void onChangedValue4 (bool value){
    setState(() {
      value4 = value;
    });
  }
  void onChangedValue5 (bool value){
    setState(() {
      value5 = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Center(
          child: new Text("Register"),
        ),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.all(20.0) ),
              new Center(
                child: new Text("Sign Up", style: new TextStyle(fontSize: 25),
                ),),
              Container(
                margin: EdgeInsets.all(10),
                child: new TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: new TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: new TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
               new Container(
                margin: EdgeInsets.all(10),
                child: new TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: new Icon(Icons.visibility_off),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Password',
                  ),
                ),
               ),
              new Container(
                margin: EdgeInsets.all(10),
                child: new TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: new Icon(Icons.visibility_off),
                    border: OutlineInputBorder(),
                    labelText: 'Confirms Password',
                  ),
                ),
              ),
              new Center(
                child: new Text("Available to be a :"),
              ),
           new CheckboxListTile(value: value3, onChanged: onChangedValue3,
                                title: new Text("Mentor"),
                              ),
           new Center( child: new CheckboxListTile(value: value4, onChanged: onChangedValue4,
                title: new Text("Mentee"),
              ),
           ),
           new Container(
             child: new CheckboxListTile(value: value5, onChanged: onChangedValue5,
             title: new Text(" By my signature, I acknowledge that I have read, understand, and agree"),
             ),
           ),
          new Container(
            margin: EdgeInsets.all(20),
             child: new RaisedButton(
                child: Text('Sign Up'),
                onPressed: () => debugPrint('RaisedButton di tekan'),
               color: Colors.blue,
              ),
          ),

            ],
          ),
        )

      ) ,
    );
  }
}