import 'package:flutter/material.dart';
import 'package:form_validation_app/models/credential_model.dart';
import 'package:form_validation_app/validators/credential_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter form validator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final credential = CredentialModel();
  final credentialValidator = CredentialValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
              color: Colors.lightBlue.shade50,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                onChanged: credential.setEmail,
                validator: credentialValidator.byField(credential, 'email'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 12),
              TextFormField(
                obscureText: true,
                onChanged: credential.setPassword,
                validator: credentialValidator.byField(credential, 'password'),
                decoration: const InputDecoration(labelText: "Password"),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 40),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
