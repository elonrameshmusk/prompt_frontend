import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import '../components/dates_row.dart';
import '../components/month_box.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedMonth = 'Jan';
  int selectedDate = 1;
  void changeMonth(String newMonth){
    setState((){
      selectedMonth = newMonth;
    });
  }
  void changeDate(int newDate){
    setState((){
      selectedDate = newDate;
    });
  }
  @override
  Widget build(BuildContext context) {
    double size = 60;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Expanded(
                child: Text('Home Screen'),
              ),
              Icon(Icons.settings)
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
              padding: EdgeInsets.fromLTRB(size, 0, size, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MonthBoxComponent(month: 'Jan', currentMonth: selectedMonth, changeMonth: changeMonth),
                  MonthBoxComponent(month: 'Feb', currentMonth: selectedMonth, changeMonth: changeMonth),
                  MonthBoxComponent(month: 'Mar', currentMonth: selectedMonth, changeMonth: changeMonth),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: size,
                  height: MediaQuery.of(context).size.width * 1 - size*2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MonthBoxComponent(month: 'Dec', currentMonth: selectedMonth, changeMonth: changeMonth),
                      MonthBoxComponent(month: 'Nov', currentMonth: selectedMonth, changeMonth: changeMonth),
                      MonthBoxComponent(month: 'Oct', currentMonth: selectedMonth, changeMonth: changeMonth),
                    ],
                  ),
                ),
                Container(

                  width: MediaQuery.of(context).size.width * 1 - size*2,
                  child: Column(
                    children: [
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 0, currentDate: selectedDate, changeDate: changeDate,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 1, currentDate: selectedDate, changeDate: changeDate,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 2, currentDate: selectedDate, changeDate: changeDate,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 3, currentDate: selectedDate, changeDate: changeDate,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 4, currentDate: selectedDate, changeDate: changeDate,),
                      DatesRowComponent(height: (MediaQuery.of(context).size.width * 1 - size*2)/6, width: (MediaQuery.of(context).size.width * 1 - size*2)/6, multiple: 5, currentDate: selectedDate, changeDate: changeDate,),
                    ],
                  )
                ),
                Container(
                  width: size,
                  height: MediaQuery.of(context).size.width * 1 - size*2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MonthBoxComponent(month: 'Apr', currentMonth: selectedMonth, changeMonth: changeMonth),
                      MonthBoxComponent(month: 'May', currentMonth: selectedMonth, changeMonth: changeMonth),
                      MonthBoxComponent(month: 'Jun', currentMonth: selectedMonth, changeMonth: changeMonth),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: size,
              padding: EdgeInsets.fromLTRB(size, 0, size, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MonthBoxComponent(month: 'Sep', currentMonth: selectedMonth, changeMonth: changeMonth),
                  MonthBoxComponent(month: 'Aug', currentMonth: selectedMonth, changeMonth: changeMonth),
                  MonthBoxComponent(month: 'Jul', currentMonth: selectedMonth, changeMonth: changeMonth),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
