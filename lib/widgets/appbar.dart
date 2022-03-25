import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(BuildContext context, String title) {
  return AppBar(
      title: Text(title),
      leading: Builder(
        builder: (context) => IconButton(
            icon: const Icon(Icons.lunch_dining),
            onPressed: () => Scaffold.of(context).openDrawer()),
      ));
}
