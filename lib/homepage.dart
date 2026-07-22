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
              backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: "Nombres",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Apellidos",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Documento",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.badge),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Correo Electrónico",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Teléfono",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Perfil Profesional",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Datos grabados correctamente"),
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 3),
                      action: SnackBarAction(
                        label: "Cerrar",
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Grabar datos",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
