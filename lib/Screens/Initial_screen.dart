import 'package:curso_1/Screens/form_screen.dart';
import 'package:curso_1/components/Task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: Container(
        color: const Color.fromARGB(255, 208, 221, 237),
        child: ListView(
          children: const [
            Padding(
              //aula 5.4
              padding: EdgeInsets.only(top: 8),
              child: Tasks('Estudar Flutter', 'assets/images/flutter.png', 3),
            ),
            Tasks('Andar de Bike', 'assets/images/bike.webp', 2),
            Tasks('Ler 50 páginas', 'assets/images/ler.jpg', 1),
            Tasks('Meditar', 'assets/images/meditar.jpeg', 4),
            Tasks('Jogar', 'assets/images/jogar.jpg', 1),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen(),
              ),
            );
          });
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.add),
      ),
    );
  }
}
