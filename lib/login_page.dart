import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                      width: 210,
                      height: 210,
                      child: Image.asset('assets/images/logoWhite.png')),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:180),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                                onChanged: (text) {
                                  email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder())),
                            SizedBox(height: 10),
                            TextField(
                                onChanged: (text) {
                                  password = text;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Senha',
                                    border: OutlineInputBorder())),
                            SizedBox(height: 10),
                            MaterialButton(
                                color: Colors.blue[400],
                                onPressed: () {
                                  if (email == 'admin' && password == '1234') {
                                    Navigator.of(context)
                                        .pushReplacementNamed('/home');
                                  } else {
                                    print('Falha ao realizar o login!');
                                  }
                                },
                                child: Text('LOGIN'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover)
                ),
        Container(color: Colors.black.withOpacity(0.1)),
        _body()
      ],
    ));
  }
}
