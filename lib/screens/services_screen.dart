import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        "name": "Manicure",
        "price": "\$30.000",
        "icon": Icons.spa,
      },
      {
        "name": "Pedicure",
        "price": "\$40.000",
        "icon": Icons.favorite,
      },
      {
        "name": "Uñas Acrílicas",
        "price": "\$80.000",
        "icon": Icons.brush,
      },
      {
        "name": "Semipermanente",
        "price": "\$50.000",
        "icon": Icons.star,
      },
      {
        "name": "Decoración Premium",
        "price": "\$60.000",
        "icon": Icons.auto_awesome,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Servicios"),
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];

            return Container(
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFF8BBD0),
                    Color(0xFFFFE4EC),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(20),
                leading: CircleAvatar(
                  radius: 28,
                  backgroundColor: const Color(0xFFE91E63),
                  child: Icon(
                    service["icon"],
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                title: Text(
                  service["name"],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Precio: ${service["price"]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
