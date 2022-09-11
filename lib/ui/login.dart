import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  String _welcomeString="";
  void _erase(){
    setState(() {
      _userController.clear();
      _passWordController.clear();
    });
  }
  void _showWelcome(){
    setState(() {
      if(_userController.text.isNotEmpty && _passWordController.text.isNotEmpty){
        _welcomeString=_userController.text;
      }else{
        _welcomeString=_userController.text;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text(
          "Login form",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Image.asset(
              'assets/images/avatar.png',
              width: 90.0,
              height: 90.0,
              //color: Colors.blueGrey,
            ),
            Container(
              height: 180.0,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: _userController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      icon: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _passWordController,
                    obscureText : true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        size: 35,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10.5)),
                  Center(
                    child: Row(
                      children: [
                        Container(
                          margin:const  EdgeInsets.only(left: 65.0),
                          child:  ElevatedButton(
                            onPressed: _showWelcome,
                            //color:Colors.deepOrange,
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 125.0),
                          child:  ElevatedButton(
                            onPressed: _erase,
                          // color: Colors.deepOrange,
                            child: const Text(
                              "Clear",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding:  EdgeInsets.all(14.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Welcome, Moussa",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
