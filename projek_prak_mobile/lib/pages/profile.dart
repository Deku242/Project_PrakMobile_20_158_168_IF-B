import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:covid_19/pages/login_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences userdata;
  late String username;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    userdata = await SharedPreferences.getInstance();
    setState(() {
      username = userdata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Page"), actions:[
          IconButton(
            onPressed: () {
              userdata.setBool('status', true);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
      ]),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15.0),
            ),
            const SizedBox(height: 20),
            Text(
              "Hai, $username\nSelamat Datang",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     userdata.setBool('status', true);
            //     Navigator.pushReplacement(
            //       context,
            //       MaterialPageRoute(builder: (context) => const LoginPage()),
            //     );
            //   },
            //   child: const Text('Logout'),
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SaranKesanPage()),
                );
              },
              child: const Text('Saran dan Kesan'),
            ),
          ],
        ),
      ),
    );
  }
}

class SaranKesanPage extends StatelessWidget {
  const SaranKesanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Saran dan Kesan'),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Text(
        'Bagikan Saran dan Kesan Anda',
        style: TextStyle(fontSize: 24),
      ),
      const SizedBox(height: 20),
      ListTile(
        leading: const Icon(Icons.star),
        title: const Text('Beberapa materi bisa dijelaskan dengan lebih mendalam'),
      ),
      const SizedBox(height: 10),
      ListTile(
        leading: const Icon(Icons.star),
        title: const Text('mata kuliah yang sangat WAW'),
      ),
      const SizedBox(height: 10),
    ],
    ),
    ),
    );
  }
}
