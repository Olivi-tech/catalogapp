import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyDrawer(),
    ));

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      backgroundColor: Colors.white,
      //  elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            //  margin:EdgeInsets.all(16.0),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text('Muhammad Shakil'),
              accountEmail: Text('info@shakilawan.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purpleAccent,
                backgroundImage: AssetImage('assets/images/my_picture.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            trailing: Icon(
              Icons.sentiment_very_satisfied,
            ),
            subtitle: Text('Goto Home Page'),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_phone_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Contact Me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            trailing: Icon(
              Icons.sentiment_very_satisfied,
            ),
            subtitle: Text('Schedule a call'),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            trailing: Icon(
              Icons.sentiment_very_satisfied,
            ),
            subtitle: Text('Email Us'),
          ),
          ListTile(
            leading: Icon(
              Icons.add_location_alt_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Location',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            trailing: Icon(
              Icons.sentiment_very_satisfied,
            ),
            subtitle: Text('Check our address'),
          ),
          ListTile(
            leading: Icon(
              Icons.add_a_photo_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Account Picture',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            trailing: Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.red,
            ),
            subtitle: Text('Update your picture'),
          ),
        ],
      ),
    );
  }
}
