import 'package:flutter/material.dart';

class Settings_Screen extends StatefulWidget {
  // const Settings_Screen({super.key});

  @override
  State<Settings_Screen> createState() => _Settings_ScreenState();
}

class _Settings_ScreenState extends State<Settings_Screen> {
  int _currentIndex = 2;
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
                          .pushReplacementNamed('/home');
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        color: Colors.orangeAccent[200],
                        child: const Center(
                            child: Text('Settings',
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
              Navigator.of(context).pushReplacementNamed('/home_screen');
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