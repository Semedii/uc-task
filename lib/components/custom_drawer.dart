import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/controllers/log_out_controller.dart';
import 'package:uniqcast_task/user_data_storage.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LogoutController logoutController = LogoutController(ref);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: FutureBuilder<String?>(
              future: UserDataStorage.getUsername(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  final String userName = snapshot.data ?? 'Guest';
                  return Text(
                    'Welcome, $userName',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  );
                }
              },
            ),
          ),
          ListTile(
              title: const Text('Logout'),
              onTap: () => logoutController.handleLogout()),
        ],
      ),
    );
  }
}
