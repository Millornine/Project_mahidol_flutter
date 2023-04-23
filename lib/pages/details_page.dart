import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';


class DetailPage extends StatelessWidget {
   final String name,posterurl,description,rating;

   const DetailPage(
      {Key? key,required this.name,required this.posterurl,required this.description,required this.rating}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RVmovies"),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () { Navigator.of(context)
                    .pop(MaterialPageRoute(builder: (_) => HomePage()));}, icon: const Icon(Icons.arrow_back));
        }),
      ),
      body: Container(
        color: Color.fromARGB(255, 231, 200, 200),
        child: ListView
        (children: [
          
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            height: 250,
            child: Stack(children: [
              Positioned(child: Container(height: 250,child: Image.network(posterurl,fit: BoxFit.cover,
              ),
              ),
              ),
            ],),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: Text(name != null ? name : 'Not Loaded'),
          ),
          
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 8,bottom: 8 , left: 15, right: 15),
            child: Text(description),
          ),Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: Text('Rating⭐: ' + rating),
          ),
        ],),
      ),
    );
  }
}
