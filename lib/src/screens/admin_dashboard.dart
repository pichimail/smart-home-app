import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  static String routeName = '/admin-dashboard';

  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chinna Smart Hub - Admin")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Add New Room"),
              onPressed: () => _showAddRoomDialog(context),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Add Device + GPIO"),
              onPressed: () => _showAddDeviceDialog(context),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Create Customer Account"),
              onPressed: () => _showCreateCustomerDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddRoomDialog(BuildContext context) {
    // Add your logic
  }

  void _showAddDeviceDialog(BuildContext context) {
    // Add your logic
  }

  void _showCreateCustomerDialog(BuildContext context) {
    // Add your logic
  }
}
