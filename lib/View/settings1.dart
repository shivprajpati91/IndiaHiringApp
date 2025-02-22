import 'package:flutter/material.dart';

// void main() {
//   runApp(AccountSettingsApp());
// }

// class AccountSettingsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: AccountSettingsScreen(),
//     );
//   }
// }

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool geolocation = true;
  bool safeMode = false;
  bool hdImageQuality = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white38,
      appBar: AppBar(title: Text("Account ")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildProfileSection(),
          Divider(),
          Text(" Account Settings "),
          _buildListTile(Icons.location_on, "My Addresses", "Set shopping delivery address"),
          _buildListTile(Icons.shopping_cart, "My Cart", "Add, remove products and checkout"),
          _buildListTile(Icons.receipt, "My Orders", "In-progress and completed orders"),
          _buildListTile(Icons.account_balance, "Bank Account", "Withdraw balance to bank"),
          _buildListTile(Icons.discount, "My Coupons", "List of all discounted coupons"),
          _buildListTile(Icons.notifications, "Notifications", "Manage notification preferences"),
          _buildListTile(Icons.lock, "Account Privacy", "Manage data usage & connected accounts"),
          Divider(),
          Text(" App Settings "),

          _buildSwitchTile("Geolocation", geolocation, (val) => setState(() => geolocation = val)),
          _buildSwitchTile("Safe Mode", safeMode, (val) => setState(() => safeMode = val)),
          _buildSwitchTile("HD Image Quality", hdImageQuality, (val) => setState(() => hdImageQuality = val)),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade400),
            onPressed: () {},
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/flower2.png'),
      ),
      title: Text("India Hiring"),
      subtitle: Text("saksham@coding.com"),
      trailing: Icon(Icons.edit, color: Colors.white),
    );
  }

  Widget _buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
      // trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
    );
  }

  Widget _buildSwitchTile(String title, bool value, Function(bool) onChanged) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.blue,
    );
  }
}

