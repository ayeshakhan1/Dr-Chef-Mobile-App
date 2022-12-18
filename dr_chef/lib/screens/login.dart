// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login_img.jpeg'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            )
          ),
        ),
        Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 90),
              child: Image.asset(
                'assets/images/logo.png',
              ),
              ),
            ],
          ),         
        ),    
        // ),
        
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 415),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Padding(
           padding: EdgeInsets.fromLTRB(27, 0, 27, 5),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Center(
                    child: Text('Login to your Account',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Container(
                    color: Color(0xfff5f5f5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto'
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person_outline),
                        labelStyle: TextStyle(
                          fontSize: 15
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xfff5f5f5),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto'
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      labelStyle: TextStyle(
                          fontSize: 15
                        )
                    ),
                  ),
                ),
                 Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Expanded(
                    // ignore: sort_child_properties_last
                    child: Text("Remember Me",
                     style: TextStyle(
                       color: Color(0xff646464),
                       fontSize: 12,
                       fontFamily: 'Roboto',
                       ),
                     ),
                    ),
                    Expanded(
                      child: Text('Forgot your password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                    ),
                  ],
                ),           
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: (){},//since this is only a UI app
                    // ignore: sort_child_properties_last
                    child: Text('LOGIN',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    color: Color(0xFF3D251E),
                    elevation: 0,
                    minWidth: 400,
                    height: 50,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    onPressed: (){},//since this is only a UI app
                    // ignore: sort_child_properties_last
                    child: Text('SIGN UP',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    color: Colors.transparent,
                    elevation: 0,
                    minWidth: 400,
                    height: 50,
                    textColor: Color(0xFF3D251E),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF3D251E),
                        ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            text: "Continue without login",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF3D251E),
                              fontSize: 15,
                            )
                          )
                        ]
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}