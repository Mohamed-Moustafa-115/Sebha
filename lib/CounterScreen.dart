import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
class Counter extends StatefulWidget
{
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void createDB()async
  {
    dataBase=await openDatabase(
      "Conter.db",
      version: 1,
      onCreate: (Database dataBase,int version)async
      {
        print("Database created");
        try
        {
          await dataBase.execute("CREATE TABLE Counter (count INTEGER)");
          await dataBase.transaction((txn)async
          {
            await txn.rawInsert("INSERT INTO Counter(count) VALUES(0)");
          }
          );
          print("Table created");
        }
        catch(error)
        {
          print("Error");
        }
      },
      onOpen: (dataBase)
      {
        getNum(dataBase).then((value)
        {
          numb=  value;
          setState(() {
            count= int.parse(value.toString().replaceAll(RegExp(r'[^0-9]'),''));
          });
        }
        );
        print("Database opend");
      },
    );
  }
  @override
  void initState() {
    super.initState();
    createDB();
  }
  int curr_index=0;
  int count=0;
  List<Map>numb=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$count",style: TextStyle(fontSize: 100),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*(20/100),
                    width: MediaQuery.sizeOf(context).height*(20/100),
                    child: ElevatedButton(
                      onPressed: ()async{
                        setState(() {
                        ++count;
                      });
                        updateDB(count);
                        },
                      child: Icon(Icons.add)
                      ,style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*(20/100)),
                    )),
                    ),
                  ),
                  SizedBox(width: 16.0,),
                  Container(
                    width: MediaQuery.sizeOf(context).height*(10/100),
                    height: MediaQuery.sizeOf(context).height*(10/100),
                    child: ElevatedButton(
                      onPressed: ()async{
                        setState(() {
                          count=0;
                        });
                        updateDB(count);
                        },
                      child: Icon(Icons.restart_alt),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*(10/100)),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void updateDB(int num)async
  {
    await dataBase.transaction((txn)async
    {
        await txn.rawUpdate("UPDATE 'Counter' SET count=$num");
        print("Updated successfully");
        return null;
    });
  }

}
Future<List<Map>> getNum(dataBase)async
{
  return await dataBase.rawQuery('SELECT * FROM Counter');
}