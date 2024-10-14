import 'package:flutter/material.dart';

import '../ui/widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Column(
        children: [
          HomeHeaderWidget(),
          SizedBox(height: 100),
          Center(child: Text('Feature Widget')),
          SizedBox(height: 100),
          Center(child: Text(' Sholat Time Widget')),
          Spacer(),
          Center(child: Text('Bottom Navigation')),
        ],
      ),
    );
  }
}
