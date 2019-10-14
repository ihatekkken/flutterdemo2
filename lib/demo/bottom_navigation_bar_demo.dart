import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return _BottomNavigationBarDemoState();
  }
}
class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
    
    //定义激活的标签
    int _currentIndex = 0;
    void _onTapHandler (int index){
      setState(() {
        _currentIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
  
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('history')
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('list')
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('preson')
            ),

          ]
        );
  }
}