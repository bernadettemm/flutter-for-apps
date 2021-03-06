import 'package:flutter/material.dart';

class LoginView extends StatefulWidget { // ctrl + . convert to statefull
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
   late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

 @override
  void dispose() {
    _email.dispose();
    _password.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter your email'
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
             decoration: const InputDecoration(
              hintText: 'Password'
            ),
          ),
          TextButton(
            onPressed: () async {
              //await Firebase.initializeApp(
                //options: DefaultFirebaseOptions.currentPlatform
    
            
              final email = _email.text;
              final password = _password.text;
              // final userCredential =
              // await FirebaseAuth.instance.createUserWithEmailAndPassword(
                //email: email, 
               // password: password,
                //);
            },
            child: const Text('Login'),
            ),
        ],
      )
      
      );
  }
   
  }
 

 



