import 'package:flutter/material.dart';
import 'package:uniqcast_task/repository/packages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    fetchUserPackages("jerko_majcen", 6312);
    
    fetchChannels();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Sds"),
        ),
      ),
    );
  }
}