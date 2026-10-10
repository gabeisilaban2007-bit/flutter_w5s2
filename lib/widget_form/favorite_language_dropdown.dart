import 'package:flutter/material.dart';

class FavoriteLanguageDropdown extends StatefulWidget {
  const FavoriteLanguageDropdown({super.key});

  @override
  State<FavoriteLanguageDropdown> createState() => _FavoriteLanguageDropdownState();
}

class _FavoriteLanguageDropdownState extends State<FavoriteLanguageDropdown> {
  // TODO: Penjelasan selectedLanguage
  // Variabel untuk menyimpan nilai item yang sedang dipilih pengguna, diberi nilai awal 'Dart'.
  String? selectedLanguage = 'Dart'; 
  List<String> languages = ['Dart', 'Python', 'JavaScript', 'Kotlin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropdownButton Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your favorite language: '),
            const SizedBox(width: 10),
            DropdownButton<String>(
              // TODO: Penjelasan value
              // Menghubungkan variabel terdaftar sebagai item yang aktif ditampilkan pada tombol dropdown.
              value: selectedLanguage, 
              items: languages.map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}