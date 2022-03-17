import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirst/views/login_view.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
       MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
    ),
  );
  
}
