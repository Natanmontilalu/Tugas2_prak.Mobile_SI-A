import 'package:flutter/material.dart';
import 'booking_form_page.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Booking Lapangan Futsal")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookingFormPage()),
            );
          },
          child: const Text("Booking Lapangan"),
        ),
      ),
    );
  }
}
