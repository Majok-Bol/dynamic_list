import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
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
    HeadingItem('Cities'),
    SubItem('Nairobi'),
    SubItem('Damascus'),
    SubItem('Copenhagen'),
    SubItem('Moscow'),
    HeadingItem('Animals'),
    SubItem('Lion'),
    SubItem('Elephant'),
    SubItem('Rhino'),
    SubItem('Zebra'),



  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic list items',style: TextStyle(color: Colors.white,fontSize: 25),),backgroundColor: Colors.purple,centerTitle: true,),
        body: ListView.builder(
          itemCount: items.length,
            itemBuilder: (context,index){
          //get list item by index
          final item=items[index];
          //if item is heading
          if(item is HeadingItem){
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              child: Text(item.title),
            );

          }else if(item is SubItem){
              return ListTile(
                title: Text(item.subItemContent),

              );
            }
            return SizedBox.shrink();
          }

          ),

      ),
    );
  }
}