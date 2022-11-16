import 'package:flutter/material.dart';
import 'package:zoom_transition_flickering_issue/details.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Details.routeName);
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}
