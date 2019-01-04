import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<Login> {
  String _validateUser(String value) {
    if (value.length > 8) {
      return 'The username error.';
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 8 && value.length > 0) {
      return 'The Password must be at least 8 characters.';
    }

    return null;
  }

  void _clickBtn() {

  }

  double margin = 10.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.indigoAccent,
      ),
      resizeToAvoidBottomPadding: true,
      body: new Container(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(margin),
              child: new TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: this._validateUser,
                autovalidate: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(5),
                          right: Radius.circular(5),
                        )
                    ),
                    labelText: "Username",
                    hintText: "Insert your username"
                ),
                textDirection: TextDirection.ltr,
              ),
            ),

            new Container(
              margin: EdgeInsets.all(margin),
              child: new TextFormField(
                autovalidate: true,
                validator: this._validatePassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(5),
                          right: Radius.circular(5),
                        )
                    ),
                    labelText: "Password",
                    hintText: "Insert your password"
                ),
                textDirection: TextDirection.ltr,
              ),
            ),
            new Container(
              child: new Center(
                child: new RaisedButton(
                  onPressed: () => this._clickBtn,
                  color: Colors.purple,
                  child: new Text("Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              margin: new EdgeInsets.only(
                top: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}
