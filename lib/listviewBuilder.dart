import 'package:flutter/material.dart';
import 'package:navigation/image.dart';
import 'package:navigation/model/listmodel.dart';

class ListBulider extends StatefulWidget {
  const ListBulider({super.key});

  @override
  State<ListBulider> createState() => _ListBuliderState();
}

class _ListBuliderState extends State<ListBulider> {
  // List<String> imagePaths = [
  //   'images/sea1.jpg',
  //   'images/sea2.jpeg',
  //   'images/sea3.jpeg',
  // ];
  List items=[
    ListModel(name: "sea1", image: 'images/sea1.jpg', subtitle: "subtitle"),
    ListModel(name: "sea2", image: 'images/sea2.jpeg', subtitle: "subtitle1"),
    ListModel(name: "sea3", image: 'images/sea3.jpeg', subtitle: "subtitle1"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Un-Named Routes")),
    body:
       ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagePage(name:items[index].name, image: items[index].image, subtitle: items[index].subtitle)));
              },
              child: ListTile(
                  leading:  CircleAvatar(
                    radius: 20,
                    backgroundImage:AssetImage(items[index].image),
                  ),
                  title: Text(items[index].name),
                subtitle: Text(items[index].subtitle),
              ),
            );


          }),
    );
  }
}