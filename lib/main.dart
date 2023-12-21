import 'package:flutter/material.dart';
import 'onePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/page1': (context) => RightPage("我的主页"),
        '/page2': (context) => RightPage("我的相册"),
        '/page3': (context) => RightPage("我的文件"),
        '/page4': (context) => RightPage("我的游戏"),
      },
      home: DrawerDemo(title: "侧滑菜单"),
    );
  }
}

class DrawerDemo extends StatefulWidget {
  DrawerDemo({Key? key, String this.title = 'Flutter Demo'}) : super(key: key);

  final String title;

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("侧滑菜单"),
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("whjin"),
            accountEmail: Text("123456@qq.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundImage: AssetImage("images/header.png"),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text("我的主页"),
            leading: Icon(Icons.description),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/page1");
            },
          ),
          ListTile(
            title: Text("我的相册"),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/page2");
            },
          ),
          ListTile(
            title: Text("我的文件"),
            leading: Icon(Icons.insert_drive_file),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/page3");
            },
          ),
          ListTile(
            title: Text("我的游戏"),
            leading: Icon(Icons.videogame_asset),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/page4");
            },
          ),
        ]),
      ),
      body: Center(
        child: Text(
          "主画面",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
