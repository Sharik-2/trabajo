import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hoja de Vida"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/se.png"),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.badge),
                labelText: "Nombre",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.work),
                labelText: "Profesión",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Datos grabados correctamente"),
                    ),
                  );
                },
                child: const Text("Grabar datos"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
