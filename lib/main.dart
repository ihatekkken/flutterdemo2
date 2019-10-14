import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        highlightColor: Color.fromRGBO(255, 255,255, 0.5),
        splashColor: Colors.red,
        ) ,
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[20],
        appBar: AppBar(
          title: Text('KENT'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('S'),
            ),
          ],
          elevation: 0.0,   //appbar下面的阴影大小
          bottom: TabBar(
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.blue,//上导航栏标签底部指示符颜色
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight:2.0 ,//指示符的粗细
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_bar)),
              Tab(icon: Icon(Icons.local_library)),
              Tab(icon: Icon(Icons.local_play)),

            ],
          ),
        ),
        body: TabBarView(
        children: <Widget>[          //页面展示内容

          ListViewDemo(),
          Icon(Icons.local_library,size: 130.0,color: Colors.cyan[50],),
          Icon(Icons.local_play,size: 130.0,color: Colors.cyan[50],),

        ],
      ),
        drawer:DrawerDemo(),
        bottomNavigationBar:BottomNavigationBarDemo() ,
      ),
    );
  }
}
