import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final double elevation;

  const DefaultAppBar(this.title, {this.elevation = 4})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Theme.of(context).textTheme.bodyText1!.color,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
