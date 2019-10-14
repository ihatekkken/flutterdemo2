import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 15.0,
            // child: FractionallySizedBox(
            //   widthFactor: 0.5,
            //   heightFactor: 0.5,
            //   child: Container(
            //     width: 200.0,
            //     height: 200.0,
            //     color: Colors.red,
            //   ),
            // )
          ),
          // SizedBox.fromSize(
          //   child: Container(
          //     width: 200.0,
          //     height: 200.0,
          //     color: Colors.red,
          //   ),
          //   size: Size(300,300),
          // ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 18.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }
}