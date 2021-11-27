import 'package:capstone_login/profile.dart';
import 'package:capstone_login/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'color.dart' as appColor;

class MyLogin extends StatefulWidget {
  const MyLogin({Key key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  Future<void> signin(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
    } catch (e) {
      print(e);
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: appColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appColor.background,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
              ),
              Container(
                height: screenHeight * 0.35,
                width: screenWidth * 1,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage("assets/img/lg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Login to your account to continue",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "email required";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  hintText: "adevictor98@gmail.com",
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: appColor.button,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: appColor.button,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                controller: _email,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "password required";
                                  } else if (value.trim().length < 6) {
                                    return "password is a minimum of 6 characters";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "password",
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: appColor.button,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: appColor.button,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: _password,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: screenWidth * 1,
                                height: screenHeight * 0.05,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: appColor.button,
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      {
                                        signin(context);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content:
                                                Text("validation going  on"),
                                          ),
                                        );
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MyPortfolio(),
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: screenHeight * 0.001,
                                width: screenWidth * 0.2,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("OR"),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: screenHeight * 0.001,
                                width: screenWidth * 0.2,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: screenHeight * 0.04,
                                width: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/img/gog.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: screenHeight * 0.04,
                                width: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/img/fb.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: appColor.button,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyRegister(),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
