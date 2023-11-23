import 'package:flutter/material.dart';



class User_profile extends StatefulWidget {
  // const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Row(
                  children: [
                  Icon(Icons.chevron_left, size: 35),
                  Text('Detalhes do Perfil')
                ]),
              ),
              Container(
                  height: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/home');
                          },
                          child: Image.asset('assets/images/logoWhite.png')),
                    ],
                  )),
            ],
          )
        )
      )
    );
  }
}