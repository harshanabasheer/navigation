import 'package:flutter/material.dart';
import 'package:navigation/image.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Un-Named Routes")),
        body:
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 3,
            //       itemBuilder: (BuildContext context, int index) {
            //         return ListTile(
            //             leading: const CircleAvatar(
            //               radius: 20,
            //               backgroundImage:AssetImage("images/sea1.jpg",),
            //             ),
            //             title: Text("Sea $index"));
            //       }),
            // ),
        ListView(
          children: <Widget>[
            buildContainer("Sea1","images/sea1.jpg","Ocian view for sea1"),
            buildContainer("Sea2","images/sea2.jpeg","Ocian view for sea2"),
            buildContainer("Sea3","images/sea3.jpeg","Ocian view for sea3"),

          ],
        ),

    );

  }

  Container buildContainer(String text,img,String text1) {
    return Container(
              height: 60,
              child:Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:AssetImage(img),
                      ),
                      SizedBox(width: 10,),
                      TextButton(
                        child: Text(
                          text,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black,),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagePage()));
                        },
                      ),
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 275),
                     child: Text( text1, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black,)),
                   ),

                ],
              )
          );
  }

}
