import 'package:ecoapp/pages/productdet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/componts.dart';
import '../provider/homeprovider.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<home_provider>(context);
    p.fech();
    return Scaffold(
      appBar: AppBar(
        title: Text("##"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: p.jj?.data.length,
          itemBuilder: (context, index) {
          return GestureDetector(child: Item(image: p.jj?.data[index]["image"]),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdet(image: p.jj?.data[index]["image"], des: p.jj?.data[index]["name"], title: p.jj?.data[index]["description"])));

          },);
        },

        ),


    );
  }
}
// first edit