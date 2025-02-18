import 'package:cursor_driven_flutter_sample/ui/foos_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MaterialApp(home: const MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Foo 一覧ページへ'),
            onTap: () => Navigator.push<void>(
              context,
              MaterialPageRoute(
                builder: (context) => const FoosPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
