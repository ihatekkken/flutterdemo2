import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('THISKKEN', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('thiskken@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://a1.qpic.cn/psb?/V13FAUmg2s5S0D/qaCjfYRKALKd.0rYETTiMyPVFYrnzGTd3ti*LkFZQic!/b/dPQAAAAAAAAA&ek=1&kp=1&pt=0&bo=OASeBXAIOwsREMg!&tl=3&vuin=970190954&tm=1571018400&sce=60-3-3&rf=viewer_311'),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1570992770823-aa2c544505c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.blueGrey.withOpacity(0.5), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
