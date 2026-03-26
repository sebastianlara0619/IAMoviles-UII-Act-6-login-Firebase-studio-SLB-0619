import 'package:flutter/material.dart';

class Entrar extends StatelessWidget {
  const Entrar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fila 1
            const Text("Login", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            
            // Fila 2
            const Text("Inicia sesión con tu cuenta", style: TextStyle(fontSize: 16, color: Colors.white70)),
            const SizedBox(height: 40),
            
            // Fila 3
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 8),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Fila 4
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Contraseña", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            
            // Fila 5
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text("Iniciar Sesión", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 20),
            
            // Fila 6
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes cuenta? ", style: TextStyle(color: Colors.white70)),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: Text("Regístrate", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Fila 7
            Center(
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/644/644456.png",
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}