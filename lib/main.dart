import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  List<String> items = [
    'Apples',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs'
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blue,

            centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart)),
            ],
            title: Text("My Shopping List"),


          ),
          body:Scrollbar(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(items[index]),
                      leading: IconButton(onPressed: (){}, icon:Icon(Icons.shopping_basket)),
                    );
                  }
              )


          )

      ),
    );

  }

}