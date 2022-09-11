import 'package:flutter/material.dart';
import './ui/login.dart';

void main(){
  runApp(
     const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Make it Rains",
        home: LoginForm(),
      )
  );
}