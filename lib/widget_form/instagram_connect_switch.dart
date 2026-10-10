import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() => _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  // TODO: Penjelasan isOn
  // Variabel boolean untuk menyimpan kondisi saklar (aktif/tidak aktif) dengan nilai awal false.
  bool isOn = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              // TODO: Penjelasan value
              // Menentukan posisi saklar berdasar status boolean isOn (true = ON, false = OFF).
              value: isOn, 
              onChanged: (bool val) {
                setState(() {
                  // TODO: Penjelasan isOn = val
                  // Mengubah isi status variabel isOn dengan nilai baru dari tombol geser lalu memperbarui UI.
                  isOn = val; 
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}