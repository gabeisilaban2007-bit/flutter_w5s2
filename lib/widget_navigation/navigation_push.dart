import 'package:flutter/material.dart';
import 'navigation_pop.dart';

class NavigationPush extends StatefulWidget {
  const NavigationPush({super.key});

  @override
  State<NavigationPush> createState() => NavigationPushState();
}

class NavigationPushState extends State<NavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Push"),
      ),
      body: Container(
        // TODO: Penjelasan padding
        // Memberikan jarak sebesar 10 pixel di seluruh sisi bagian dalam kontainer agar konten tidak menempel di tepi layar.
        padding: const EdgeInsets.all(10.0), 
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const NavigationPop();
                  }),
                );
              },
              child: const Text('go to next Page'),
            ),
          ],
        ),
      ),
    );
  }
}