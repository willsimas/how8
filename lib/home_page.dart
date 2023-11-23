import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/beach_screen');
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
                        Navigator.of(context)
                            .pushReplacementNamed('/hotel_screen');
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
                      Navigator.of(context)
                          .pushReplacementNamed('/dinners_screen');
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
                      Navigator.of(context)
                          .pushReplacementNamed('/pharma_screen');
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
                      Navigator.of(context).pushReplacementNamed('/banks_screen');
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
                      Navigator.of(context).pushReplacementNamed('/shows_screen');
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
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/cinemas_screen');
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
                      Navigator.of(context).pushReplacementNamed('/trips_screen');
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
      // Adicionando a BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue, // Cor do ícone selecionado
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Atualiza o estado e navega para a página correspondente
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacementNamed('/home');
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed('/saved_points_screen');
              break;
            case 2:
              Navigator.of(context).pushReplacementNamed('/settings_screen');
              break;
            case 3:
              Navigator.of(context).pushReplacementNamed('/');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.saved_search_rounded),
            label: 'Saved Points',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_outlined),
            label: 'Logout',
          )
          // Adicione itens para outras seções...
        ],
      ),
    );
  }
}
