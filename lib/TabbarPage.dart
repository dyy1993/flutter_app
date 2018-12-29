import 'package:flutter/material.dart';
import 'Shopping.dart';
import 'ShoppingListItem.dart';
import 'RandomWords.dart';
import 'HomePage.dart';
import 'LayoutPage.dart';
class TabbarPage extends StatefulWidget {
 TabbarPage({Key key}) : super(key: key);

 @override
 _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
 int _selectedIndex = 1;
 final _widgetOptions = [
   new LayoutPage(),
  //  new HomePage(),
   new RandomWords(),
   new ShoppingList(
        products: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips'),
          new Product(name: '苹果1'),
          
        ],
      ),
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
     ),
     bottomNavigationBar: BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        //  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('列表')),
         BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('单词列表')),
         BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('购物')),
       ],
       currentIndex: _selectedIndex,
       fixedColor: Colors.deepPurple,
       onTap: _onItemTapped,
     ),
   );
 }

 void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}