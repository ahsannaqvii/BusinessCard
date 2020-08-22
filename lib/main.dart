import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomePage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
//      '/second': (context) => LoginScreen(),
      // When navigating to the "/third" route, build the ThirdScreen widget.
//      '/third': (context) => Signup Screen(),
      // When navigating to the "/fourth" route, build the ThirdScreen widget.
//      '/fourth': (context) => Maps(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        //ta key container app bar ya bottom mai na aye
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              //for round images
              radius: 100.0,
//                backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/assets/Ahsan.jpeg'),
            ),
            Text(
              'Ahsan Naqvi',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 220,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Card(
              //Row can be replaced with listTile widget
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.perm_phone_msg,
                  color: Colors.black,
                  size: 30.0,
                ),
                title: Text(
                  "  +92 347 1229561",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.assignment_ind,
                  color: Colors.black,
                  size: 30.0,
                ),
                title: Text(
                  "syedahsan13@hotmail.com",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(Icons.accessibility), //To add a floating button
      ),
    );
  }
}
