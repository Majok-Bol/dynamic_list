import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  //sample data:list containing headings and items
  final List<ListItem>items=[
    HeadingItem('Fruits'),
    SubItem("Apple"),
    SubItem("Cherry"),
    SubItem("Pears"),
    SubItem("Pineapple"),
    SubItem("Watermelon"),
    HeadingItem('Vegetables'),
    SubItem('Cabbage'),
    SubItem('Spinach'),
    SubItem('Broccoli'),
    SubItem('Pumpkin'),
    HeadingItem('Dairy'),
    SubItem('Milk'),
    SubItem('Cheese'),


  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic list items',style: TextStyle(color: Colors.white,fontSize: 25),),backgroundColor: Colors.purple,centerTitle: true,),

      ),
    );
  }
}

//define abstract class for different  list items
abstract class ListItem{

}
//heading item
class HeadingItem extends ListItem{
  final String title;
  //constructor for heading title
  HeadingItem(this.title);
}
//sub item under a heading
class SubItem extends ListItem{
  final String subItemContent;
  //constructor for sub item content
SubItem(this.subItemContent);
}