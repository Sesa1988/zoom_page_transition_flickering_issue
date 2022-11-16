import 'package:flutter/material.dart';
import 'package:zoom_transition_flickering_issue/widgets/default_app_bar.dart';

class Details extends StatelessWidget {
  static const String routeName = '/details';

  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar('Details'),
      body: Center(child: Text('Hello Im Details')),
    );
  }
}
