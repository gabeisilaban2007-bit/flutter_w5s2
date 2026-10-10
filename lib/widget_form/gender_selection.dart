import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  // TODO: Penjelasan sex
  // Variabel penampung nilai opsi radio yang terpilih dalam satu grup, default bernilai 'male'.
  String? sex = 'male'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender Selection Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gender: '),
            const SizedBox(width: 8),
            Radio<String>(
              value: 'male',
              groupValue: sex,
              onChanged: (String? val) {
                setState(() {
                  // TODO: Penjelasan sex = val
                  // Memperbarui variabel sex dengan opsi yang ditekan ('male') untuk merubah centang radio.
                  sex = val; 
                });
              },
            ),
            const Text('Male'),
            const SizedBox(width: 16),
            Radio<String>(
              value: 'female',
              groupValue: sex,
              onChanged: (String? val) {
                setState(() {
                  // TODO: Penjelasan sex = val
                  // Memperbarui variabel sex dengan opsi yang ditekan ('female') untuk merubah centang radio.
                  sex = val; 
                });
              },
            ),
            const Text('Female'),
          ],
        ),
      ),
    );
  }
}