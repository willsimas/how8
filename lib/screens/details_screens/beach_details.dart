import 'package:flutter/material.dart';

class BeachDetails extends StatefulWidget {
  // const BeachDetails({super.key});

  @override
  State<BeachDetails> createState() => _BeachDetailsState();
}

class _BeachDetailsState extends State<BeachDetails> {
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
                  Navigator.of(context).pushReplacementNamed('/beach_screen');
                },
                child: Row(
                  children: [
                  Icon(Icons.chevron_left, size: 35),
                  Text('Detalhes da Praia')
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
                                .pushReplacementNamed('/home_screen');
                          },
                          child: Image.asset('assets/images/logoWhite.png')),
                    ],
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/beach_image.png'))
        ),
      ),
    );
  }
}
