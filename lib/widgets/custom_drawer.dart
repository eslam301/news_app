
import 'package:flutter/material.dart';

import '../pages/home/home_view.dart';
import '../pages/settings/settings_view.dart';

class CustomDrawer extends StatelessWidget {
  final Function onItemClick;
  const CustomDrawer({super.key, required this.onItemClick});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Container(
      width: width * 0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: width * 0.7,
            height: height * 0.15,
            color: theme.primaryColor,
            child: const Center(
              child: Text(
                'News App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              )
            )
          ),
          const SizedBox(
            height: 20
          ),
          GestureDetector(
            onTap: (){
              onItemClick();
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.menu, color:Colors.black, size: 38),
                  SizedBox(
                    width: 10
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    )
                  )
                ]
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, SettingsView.routeName);
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.settings, color:Colors.black, size: 38),
                  SizedBox(
                    width: 10
                  ),

                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    )
                  )
                ]
              ),
            ),
          ),
        ]
      )
    );
  }
}
