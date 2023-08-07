import 'package:counter/CounterScreen.dart';
import 'package:counter/TextScreen.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int curr_index=0;

  List<Widget>screen=[
    Counter(),
    Txt(),
  ];
@override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
       home: Scaffold(

         appBar: AppBar(
           title: Center(child: Text("سؚبحؘة",style: TextStyle(fontSize: 50),)),
         ),
         body: IndexedStack(index: curr_index,children: screen,),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: curr_index,
            onTap: (index){
              setState(() {
                curr_index=index;
              });
            },
            items:
            [
              BottomNavigationBarItem(icon: Icon(Icons.add_circle),label: "عداد التسبيح"),
              BottomNavigationBarItem(icon: Icon(Icons.book_rounded),label: "أذكار"),
            ]
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}



