import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:async';
import 'package:flutter_echarts/flutter_echarts.dart';

void main() => runApp(MaterialApp(
  home: firstPage(),
));

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4d4646),
      appBar: AppBar(
        title: Text(
          'Hello! Please Sign in',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Color(0xFF7fcd91),
            fontFamily: 'Oxanium',
          ),
        ),

        centerTitle: true,
        backgroundColor: Color(0xff5b5656),
        elevation: 0.0,
      ),

      body:
      Column(
        children: <Widget>[
          SizedBox(height: 200.0),
          Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/logoBrain.jpg'),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  navigateToLoginPage(context);
                },
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),

                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontFamily: 'Oxanium',
                    fontSize: 18.0,
                  ),
                ),
                color: Color(0xff7fcd91),
              ),

              RaisedButton(
                onPressed: () {
                  navigateToCreateAccountPage(context);
                },
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: Text(''
                    'Create Account',
                  style: TextStyle(
                    fontFamily: 'Oxanium',
                    fontSize: 18.0,
                  ),
                ),
                color: Color(0xff7fcd91),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future navigateToLoginPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
  Future navigateToCreateAccountPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountPage()));
  }
}

//**************************** LOGIN *****************************************************
//**************************** LOGIN *****************************************************
//**************************** LOGIN *****************************************************
//**************************** LOGIN *****************************************************
//**************************** LOGIN *****************************************************
//**************************** LOGIN *****************************************************


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool stayLogged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4d4646),
      appBar: AppBar(
        title: Text(
          'Sign in to your account!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Color(0xFF7fcd91),
            fontFamily: 'Oxanium',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5b5656),
        elevation: 0.0,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
              onPressed: () {
                backToHome(context);
              },
              icon: Icon(Icons.home),
              color: Color(0xff7fcd91),
              iconSize: 50.0,
            ),

            SizedBox(height: 50.0),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Username",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 50.0),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
            ),

            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: stayLogged,
                    onChanged: (bool value) {
                      setState(() {
                        stayLogged = value;
                      });
                    },
                  ),

                  Text(
                    'Stay signed in',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ]
            ),


            SizedBox(height: 50.0),
            RaisedButton(
              color: Color(0xff7fcd91),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Oxanium',
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                navigateToWelcomePage(context);
              },
            )
          ],
        ),
      ),
    );
  }
  Future navigateToWelcomePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }
  void backToHome(context) {
    Navigator.pop(context);
  }

}


//**************************** CREATE ACCOUNT  *****************************************************/
//**************************** CREATE ACCOUNT  *****************************************************/
//**************************** CREATE ACCOUNT  *****************************************************/
//**************************** CREATE ACCOUNT  *****************************************************/
//**************************** CREATE ACCOUNT  *****************************************************/
//**************************** CREATE ACCOUNT  *****************************************************/

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4d4646),
      appBar: AppBar(
        title: Text(
          'Create an Account!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Color(0xFF7fcd91),
            fontFamily: 'Oxanium',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5b5656),
        elevation: 0.0,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
              onPressed: () {
                backToHome(context);
              },
              icon: Icon(Icons.home),
              color: Color(0xff7fcd91),
              iconSize: 50.0,
            ),

            SizedBox(height: 50.0),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "First Name",
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 50.0),

            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Last Name",
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 50.0),

            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Username",
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 50.0),

            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Email",
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 50.0),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  border:
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),

            SizedBox(height: 50.0),
            RaisedButton(
              color: Color(0xff7fcd91),
              child: Text(''
                  'Create Account',
                style: TextStyle(
                  fontFamily: 'Oxanium',
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                navigateToWelcome(context);
              },
            )
          ],
        ),
      ),
    );
  }
  void backToHome(context) {
    Navigator.pop(context);
  }
  Future navigateToWelcome(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }
}

/************************* HOME PAGE*************************************/
/************************* HOME PAGE*************************************/
/************************* HOME PAGE*************************************/
/************************* HOME PAGE*************************************/

class WelcomePage extends StatefulWidget{
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Variable", () => 5);
    dataMap.putIfAbsent("Fixed", () => 2);
    dataMap.putIfAbsent("Intermittent", () => 3);
    dataMap.putIfAbsent("Discretionary", () => 2);
    return Scaffold(
      backgroundColor: Color(0xFFf5eaea),
      appBar: AppBar(
        backgroundColor: Color(0xFF4D4646),
        title: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Color(0xFF7fcd91),
            fontFamily: 'Oxanium',
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            IconButton(
              onPressed: () {
                backToHome(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Color(0xff7fcd91),
              iconSize: 50.0,
            ),

            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(68, 30, 30 ,30),
                child: Align(
                  alignment: AlignmentDirectional(0.5, -0.7),
                  child:Text('Budget Breakdown',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color(0xFF5b5656),
                      fontFamily: 'Oxanium',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: PieChart(dataMap: dataMap),
              ),
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0.03,0.5),
                child: RaisedButton(
                  onPressed:(){
                    navigateToEntry(context);
                  },
                  child: Text('Add Entry'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future navigateToEntry(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => EntryPage()));
  }
  void backToHome(context) {
    Navigator.pop(context);
  }
}

/************************* ENTRY PAGE*************************************/
/************************* ENTRY PAGE*************************************/
/************************* ENTRY PAGE*************************************/
/************************* ENTRY PAGE*************************************/

class EntryPage extends StatelessWidget {

  String _selectedEmotion=null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5eaea),

      appBar: new AppBar(
        backgroundColor: Color(0xFF4D4646),
        title: new Text(
          "How Are You Feeling Today?",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Color(0xFF7fcd91),
            fontFamily: 'Oxanium',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          IconButton(
            onPressed: () {
              backToHome(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xff7fcd91),
            iconSize: 50.0,
          ),

          SizedBox(height: 300),
          DropdownButton(
            value: _selectedEmotion,
            items: _dropDownItem(),
            onChanged: (value){
              _selectedEmotion=value;
              switch(value){
                case "Happy" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Sad" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Angry" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Excited" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Surprised" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Nervous" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
                case "Tired" :
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                  break;
              }
            },
            hint: new Text(
              'Select What Emotion Best Describes You Today',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontFamily: "Oxanium",
                fontSize: 12,

              ),
            ),
          ),
        ],
      ),
    );
  }


  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> emotion = ['Happy', 'Angry', 'Sad', 'Excited', 'Surprised', "Nervous", "Tired" ];
    return emotion.map(
            (value) =>
            DropdownMenuItem(
              value: value,
              child: Text(value),
            )
    ).toList();
  }
  void backToHome(context) {
    Navigator.pop(context);
  }
}


class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExpenseState();
}

class _ExpenseState extends State<SecondScreen> {

  List<String> _expenseType = ['Variable', 'Fixed', 'Intermittent', 'Discretionary']; // Option 2
  String _selectedExpenseType; // Option 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFf5eaea),

        appBar: new AppBar(
          backgroundColor: Color(0xFF4D4646),
          title: new Text(
            "Expense Sheet",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Color(0xFF7fcd91),
              fontFamily: 'Oxanium',
            ),
          ),
        ),

        body: Center(

          child: DropdownButton(
            hint: Text('Choose the category of expense:'), // Not necessary for Option 1
            value: _selectedExpenseType,
            onChanged: (newValue) {
              setState(() {
                _selectedExpenseType = newValue;
              });
            },
            items: _expenseType.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
