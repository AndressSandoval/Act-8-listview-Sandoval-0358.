import 'package:flutter/material.dart';

void main() => runApp(AppInstrumentos());

class AppInstrumentos extends StatelessWidget {
  const AppInstrumentos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instrumentos Sandoval',
      home: ClaseInstrumento(),
    );
  }
}//fin clase app instrumentos

class ClaseInstrumento extends StatelessWidget {
  const ClaseInstrumento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instrumentos Sandoval',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 111, 125, 185),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.music_note, color: Colors.black),
            onPressed: () {
              // Acción de la nota musical
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // Acción del corazón
            },
          ),
        ],
      ),
      body: ListView.builder(
  padding: const EdgeInsets.all(16.0),
  itemCount: 4, // Los 4 elementos que pediste
  itemBuilder: (context, index) {
    // Definimos los datos de los 4 elementos
    List<Map<String, dynamic>> items = [
      {'titulo': 'Perfil', 'sub': 'Editar mis datos', 'icon': '👤', 'color': Colors.indigo},
      {'titulo': 'Notificaciones', 'sub': 'Gestionar alertas', 'icon': '🔔', 'color': Colors.orange},
      {'titulo': 'Suscripción', 'sub': 'Plan Premium activo', 'icon': '⭐', 'color': Colors.amber},
      {'titulo': 'Ajustes', 'sub': 'Privacidad y red', 'icon': '⚙️', 'color': Colors.blueGrey},
    ];

    final item = items[index];

    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // Leading: Texto/Emoji dentro de un círculo con color
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: item['color'].withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(item['icon'], style: const TextStyle(fontSize: 24)),
        ),
        title: Text(
          item['titulo'],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item['sub']),
        // Trailing: Un ícono de flecha moderno
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        // Acción funcional
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Abriendo ${item['titulo']}...'),
              backgroundColor: item['color'],
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  },
)
    );
  }
}//fin clase claseinstrumento