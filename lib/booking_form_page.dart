import 'package:flutter/material.dart';
import 'confirmation_page.dart'; 

class BookingFormPage extends StatefulWidget {
  const BookingFormPage({super.key});

  @override
  _BookingFormPageState createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _timeController = TextEditingController();
  String? selectedLapangan;

  final List<String> lapanganList = ["Lapangan 1", "Lapangan 2", "Lapangan 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Booking Lapangan")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Nomor Telepon'),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: _timeController,
              decoration: const InputDecoration(labelText: 'Waktu'),
              keyboardType: TextInputType.datetime,
            ),
            DropdownButton<String>(
              value: selectedLapangan,
              hint: const Text("Pilih Lapangan"),
              items: lapanganList.map((String lapangan) {
                return DropdownMenuItem<String>(
                  value: lapangan,
                  child: Text(lapangan),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedLapangan = newValue;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedLapangan != null && _nameController.text.isNotEmpty && _phoneController.text.isNotEmpty && _timeController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationPage(
                        nama: _nameController.text,
                        phone: _phoneController.text,
                        waktu: _timeController.text,
                        lapangan: selectedLapangan!,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Semua data harus diisi!")));
                }
              },
              child: const Text("Konfirmasi"),
            ),
          ],
        ),
      ),
    );
  }
}
