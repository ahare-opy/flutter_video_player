import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      floating: true,
      toolbarHeight: 24,
      leadingWidth: 180.0,
      leading: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Text(
          'Trending Videos',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
