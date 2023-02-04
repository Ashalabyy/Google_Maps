import 'package:flutter/material.dart';

class DrawerHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage("assets/images/shalaby.jpg"),
          ),
          title: Text('AhmedShalaby'),
          subtitle: Text('01211225213'),
          trailing: Icon(
            Icons.settings,
          ),
        ),
      ),
    );
  }
}
