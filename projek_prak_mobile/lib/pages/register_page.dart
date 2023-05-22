import 'package:flutter/material.dart';
import 'package:covid_19/helper/hive_database.dart';
import 'package:covid_19/model/data_model.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final HiveDatabase _hive = HiveDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/images.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/logo.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.8), // Ubah ke warna dan tingkat transparansi yang diinginkan
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
                validator: (String? value) {
                  if (value!.trim().isEmpty) {
                    return 'Username is required';
                  }
                },
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.8), // Ubah ke warna dan tingkat transparansi yang diinginkan
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (String? value) {
                  if (value!.trim().isEmpty) {
                    return 'Password is required';
                  }
                },
              ),
            ),
            _buildRegisterButton(),
          ],
        ),
      ),
    );
  }


  Widget _commonSubmitButton({
    required String labelButton,
    required Function(String) submitCallback,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 150,
      child: ElevatedButton(
        child: Text(labelButton),
        onPressed: () {
          submitCallback(labelButton);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return _commonSubmitButton(
      labelButton: "Register",
      submitCallback: (value) {
        if (_usernameController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty) {
          _hive.addData(DataModel(
              username: _usernameController.text,
              password: _passwordController.text));
          _usernameController.clear();
          _passwordController.clear();
          setState(() {});
          Navigator.pop(context);
        }
      },
    );
  }
}
