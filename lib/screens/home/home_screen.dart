import 'package:batikara/widgets/btk_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          children: [
            const Text("Welcome To Batikara"),
            BtkButton(
                label: "back login",
                onPressed: () {
                  context.go('/login');
                },
              ),
          ],
        )
      ),
    );
  }
}
