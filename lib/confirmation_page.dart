import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  final String nama;
  final String phone;
  final String waktu;
  final String lapangan;

  const ConfirmationPage({super.key, 
    required this.nama,
    required this.phone,
    required this.waktu,
    required this.lapangan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konfirmasi Booking")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center, 
            children: [
              Text("Nama: $nama", style: const TextStyle(fontSize: 18)),
              Text("Nomor Telepon: $phone", style: const TextStyle(fontSize: 18)),
              Text("Waktu Booking: $waktu", style: const TextStyle(fontSize: 18)),
              Text("Lapangan: $lapangan", style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Selesai"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
