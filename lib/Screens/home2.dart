




import 'package:flutter/material.dart';
import 'package:fluttertest3/Screens/home3.dart';
import 'package:fluttertest3/component/color.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String _eventType = 'Online';
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay(hour: 13, minute: 0);
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return
     DefaultTabController(
        length: 2,
     child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Ask a Question',style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            fontSize: 17
        ),),
        leading: IconButton(
          icon: Icon(Icons.close,color: Colors.black45,),
          onPressed: () {
            Navigator.pop(context);
            // Add your close button functionality here
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Divider(color: Colors.grey.shade200,height: 1,),
              SizedBox(height: 10,),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: AssetImage('assets/clip.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 18,
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Colors.black87,size: 18,),
                        onPressed: () {
                          // Handle edit image action
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TabBar(
                dividerHeight: 0,
                indicatorColor: primaryColor,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,

                tabs: [
                  Tab(text: 'Online',),
                  Tab(text: 'In Person'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.calendar_today,color: Colors.grey.shade400,size: 20,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Day",style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),),
                            Text("24 March, 2024",style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.normal,
                                fontSize: 11
                            ),)
                          ],),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.keyboard_arrow_up,color: Colors.grey,size: 20),
                            Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,size: 20,),
                          ],)
                        ],
                      ),
                    )
                  ),
                  SizedBox(width: 5),
                  Expanded(
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.alarm_sharp,color: Colors.grey.shade400,size: 20,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Time",style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),),
                                Text("13:00 - 14:00",style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11
                                ),)
                              ],),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.keyboard_arrow_up,color: Colors.grey,size: 20),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,size: 20,),
                              ],)
                          ],
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Give your event a name',
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Add description...',
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home3(),));
                },
                child: Text('Post',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                )),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    ));}
}