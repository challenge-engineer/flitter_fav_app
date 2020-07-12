import 'package:flutter/material.dart';

import 'edit_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text('fav',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(text:'お気に入り'),
                Tab(text:'お買い物'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('ベビーオイル'),
                      subtitle: Text('Amazon'),
                      trailing: Icon(Icons.share),
                      onTap: (){

                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('げきおちくん'),
                      subtitle: Text('楽天'),
                      trailing: Icon(Icons.share),
                    ),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('シャンプー'),
                      subtitle: Text('楽天'),
                      trailing: Icon(Icons.share),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              // todo
            },
            backgroundColor: Colors.amber,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
