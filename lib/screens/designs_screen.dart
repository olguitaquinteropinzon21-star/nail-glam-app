import 'package:flutter/material.dart';

class DesignsScreen extends StatelessWidget {
  const DesignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> designs = [
      {
        "name": "Uñas Rosadas",
        "price": "\$50.000",
        "emoji": "💅",
      },
      {
        "name": "Diseño Floral",
        "price": "\$65.000",
        "emoji": "🌸",
      },
      {
        "name": "Semipermanente",
        "price": "\$45.000",
        "emoji": "✨",
      },
      {
        "name": "Acrílicas Premium",
        "price": "\$80.000",
        "emoji": "👑",
      },
      {
        "name": "Diseño Elegante",
        "price": "\$70.000",
        "emoji": "💖",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Diseños de Uñas"),
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: designs.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final design = designs[index];

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFF8BBD0),
                    Color(0xFFFFE4EC),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    design["emoji"],
                    style: const TextStyle(
                      fontSize: 55,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    design["name"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    design["price"],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFFE91E63),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE91E63),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "${design["name"]} seleccionado 💅",
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "Seleccionar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
