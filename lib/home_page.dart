import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int increment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D')),
              accountName: Text('Username'),
              accountEmail: Text('User Email'),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                }),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Container(
            width: MediaQuery.of(context).size.width,
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/logoWhite.png')
                ]
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/beach_page');
                      },
                      child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.orangeAccent[200],
                          child: const Center(
                              child: Text('Praias',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)))),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/hotel_page');
                      },
                      child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.orangeAccent[200],
                          child: const Center(
                              child: Text('Hoteis',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)))),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/dinners_page');
                      },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Restaurantes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                  GestureDetector(
                    onTap: () {
                        Navigator.of(context).pushReplacementNamed('/pharma_page');
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Farmácias',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/banks_page');
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Bancos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/shows_page');
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Atrações',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/cinemas_page');
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Cinemas',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/trips_page');
                    },
                    child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Passeios',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
