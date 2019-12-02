import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bggb'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FormColumnWidget(),
                  SizedBox(
                    height: 20.0,
                  ),
                  FormContainrtWidget2(),
                  ForgotWidget(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                              value: _rememberMe,
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value;
                                });
                              }),
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 6.0,
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            (30.0),
                          ),
                        ),
                        color: Colors.white,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotWidget extends StatelessWidget {
  const ForgotWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: FlatButton(
        onPressed: () {
          print('pressed');
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(142.0, 8.0, 0.0, 8.0),
          child: Text(
            'Forgot password',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class FormContainrtWidget2 extends StatelessWidget {
  const FormContainrtWidget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: TextField(
            obscureText: true,
            //keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              hasFloatingPlaceholder: true,
            ),
          ),
        )
      ],
    );
  }
}

class FormColumnWidget extends StatelessWidget {
  const FormColumnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
