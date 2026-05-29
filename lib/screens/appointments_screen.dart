import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> appointments = [
      {
        "service": "Manicure",
        "date": "28 Mayo 2026",
        "hour": "10:00 AM",
        "status": "Confirmada",
      },
      {
        "service": "Uñas Acrílicas",
        "date": "30 Mayo 2026",
        "hour": "2:00 PM",
        "status": "Pendiente",
      },
      {
        "service": "Pedicure Spa",
        "date": "2 Junio 2026",
        "hour": "4:00 PM",
        "status": "Confirmada",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis Citas"),
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: appointments.length,
          itemBuilder: (context, index) {
            final appointment = appointments[index];

            return Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xFFE91E63),
                        child: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          appointment["service"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(
                        Icons.date_range,
                        color: Color(0xFFE91E63),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        appointment["date"],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Color(0xFFE91E63),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        appointment["hour"],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: appointment["status"] == "Confirmada"
                          ? Colors.green
                          : Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      appointment["status"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
