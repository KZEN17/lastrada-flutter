import 'package:flutter/material.dart';
import 'package:flutterapp/pages/sign_up_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color primaryOrange = Colors.orange[700];
  Color primaryWhite = Colors.white;
  String email;
  String password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void login() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      // signin(email, password, context).then((value) {
      //   if (value != null) {
      //     Navigator.pushReplacement(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => HomeScreen(),
      //         ));
      //   }
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryOrange,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Welcome to',
                  style: TextStyle(
                    color: primaryWhite,
                    fontSize: 35.0,
                    fontFamily: 'Tangerine',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10.0),
            Center(
              child: Text(
                'La Strada',
                style: TextStyle(
                  color: primaryWhite,
                  fontSize: 80.0,
                  fontFamily: 'Tangerine',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Edna poinakva gradska prikazna...',
                  style: TextStyle(
                    color: primaryWhite,
                    fontSize: 20.0,
                    fontFamily: 'Tangerine',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage('images/1.jpg'), fit: BoxFit.cover),
                  color: primaryWhite,
                  border: Border.all(color: primaryWhite),
                  borderRadius: BorderRadius.circular(90.0)),
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 60),
              // color: primaryWhite,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Please login',
                      style: TextStyle(
                          color: primaryOrange,
                          // fontFamily: 'Tangerine',
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: primaryOrange, fontSize: 15.0),
                      cursorColor: primaryOrange,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: primaryOrange,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: primaryOrange)),
                          labelText: "Email",
                          labelStyle:
                              TextStyle(color: primaryOrange, fontSize: 15.0)),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "This Field Is Required"),
                        EmailValidator(errorText: "Invalid Email Address"),
                      ]),
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: TextFormField(
                        style: TextStyle(color: primaryOrange, fontSize: 15.0),
                        cursorColor: primaryOrange,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: primaryOrange,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(color: primaryOrange)),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: primaryOrange, fontSize: 15.0)),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Password Is Required"),
                          MinLengthValidator(6,
                              errorText: "Minimum 6 Characters Required"),
                        ]),
                        onChanged: (val) {
                          password = val;
                        },
                      ),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 0.0,
                      minWidth: 300.0,
                      height: 40.0,
                      // passing an additional context parameter to show dialog boxs
                      onPressed: login,
                      color: primaryOrange,
                      textColor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 20.0, color: primaryWhite),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20.0,
                            color: primaryWhite,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Sign Up Here",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue[400],
                          size: 30.0,
                        ),
                        Icon(
                          FontAwesomeIcons.google,
                          color: Colors.redAccent,
                          size: 30.0,
                        ),
                        Icon(
                          FontAwesomeIcons.twitterSquare,
                          // color: Colors.blue[600],
                          size: 30.0,
                        ),
                        Icon(
                          FontAwesomeIcons.phone,
                          color: Colors.green[400],
                          size: 30.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.checkCircle,
                          color: Colors.teal[800],
                          size: 10.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Designed by KZEN',
                          style:
                              TextStyle(fontSize: 10.0, color: Colors.black26),
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          FontAwesomeIcons.trademark,
                          size: 5.0,
                          color: Colors.black26,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
