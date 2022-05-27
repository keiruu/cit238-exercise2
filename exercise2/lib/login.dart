import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'LogIn App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: LogInPage(title: 'Log in Page'),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LogInPageState createState() => _LogInPageState();
}

Widget buildStudNumber() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Student Number',
        style: TextStyle(fontSize: 18, color: Color(0xFF2E4756)),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF0F5FF),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 50,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.account_circle_sharp,
              color: Color(0xFF2E4756),
            ),
          ))),
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(fontSize: 18, color: Color(0xFF2E4756)),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffF0F5FF),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 50,
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.lock,
                  color: Color(0xFF2E4756),
                ),
              ))),
    ],
  );
}

Widget buildForgetPW() {
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(top: 15),
    child: Text(
      'Forgot password?',
      style: (TextStyle(fontSize: 12)),
    ),
  );
}

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    alignment: Alignment.center,
    child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Color(0xFF2E4756),
          onSurface: Colors.grey,
          padding: EdgeInsets.all(20.0),
          minimumSize: Size(250.0, 20.0),
          textStyle: TextStyle(fontSize: 16),
        ),
        onPressed: () {},
        child: Text('Login')),
  );
}

Widget buildSignUp() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 10),
    child: Text(
      "Don't have an account? Sign up here!",
      style: (TextStyle(fontSize: 12)),
    ),
  );
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/plant.png"))),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color.fromARGB(255, 28, 44, 54)),
            ),
            SizedBox(height: 30),
            buildStudNumber(),
            SizedBox(height: 25),
            buildPassword(),
            buildForgetPW(),
            SizedBox(height: 20),
            buildLoginBtn(),
            buildSignUp(),
          ],
        ),
      ),
    ));
  }
}
