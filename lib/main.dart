import 'package:first_app/Pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      title: 'Drawer App',
      routes: {
        '/': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer app'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('Kanikagarg967@gmail.com'),
              accountName: Text(
                'Kanika Garg',
              ),
              currentAccountPicture: CircleAvatar(
                child: Text('K'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_upward),
              title: Text('Page one'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pages('page one'),
                  ),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_downward),
              title: Text('Page two'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pages('page two'),
                  ),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.close),
              title: Text('Close'),
              onTap: (() => Navigator.of(context).pop()),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
