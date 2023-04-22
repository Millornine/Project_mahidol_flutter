import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("RVmovies"),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert));
          }),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.only(top: 50 , left:20 ,right: 20),
          crossAxisCount: 1,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.black, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffE7C8C8),
              ),
            )
          ],
        ));
  }
}
