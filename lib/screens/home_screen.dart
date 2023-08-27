import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import '../components/dates_row.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double size = 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.data_usage
          ),
          title: Row(
            children: [
              Expanded(
                child: Text('Home Screen'),
              ),
              Icon(Icons.abc)
            ],
          )
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Text("Select a day to add prompts", style: globals.displayTextBlack,),
              ),
            ),
            Container(
              height: size,
              color: Colors.amber,
              padding: EdgeInsets.fromLTRB(size, 0, size, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text('A'),
                  ),
                  Center(
                    child: Text('B'),
                  ),
                  Center(
                    child: Text('C'),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: size,
                  height: MediaQuery.of(context).size.width * 1 - size*2,
                  color: Colors.cyanAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text('A'),
                      ),
                      Center(
                        child: Text('B'),
                      ),
                      Center(
                        child: Text('C'),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1 - size*2,
                  child: Column(
                    children: [
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 0,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 1,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 2,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 3,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 4,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 5,),
                    ],
                  )
                ),
                Container(
                  width: size,
                  height: MediaQuery.of(context).size.width * 1 - size*2,
                  color: Colors.deepOrangeAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text('A'),
                      ),
                      Center(
                        child: Text('B'),
                      ),
                      Center(
                        child: Text('C'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: size,
              color: Colors.brown,
              padding: EdgeInsets.fromLTRB(size, 0, size, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text('A'),
                  ),
                  Center(
                    child: Text('B'),
                  ),
                  Center(
                    child: Text('C'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
