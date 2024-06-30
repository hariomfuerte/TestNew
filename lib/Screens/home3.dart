import 'package:flutter/material.dart';
import 'package:fluttertest3/component/color.dart';



class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Choose Your Intrest',style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            fontSize: 17
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: primaryColor,size: 28,),
          onPressed: () {
            Navigator.pop(context);
            // Add your close button functionality here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: Colors.grey.shade200,height: 1,),
            SizedBox(height: 10,),
            Text(
              'Choose your Interest',
              style: TextStyle(
                fontSize: 38,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 26),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildInterestItem(Icons.gavel, 'Criminal', criminal,BorderSide(color: primaryColor, width: 2.0)),
                  buildInterestItem(Icons.business, 'Corporate', corporate,BorderSide(color: primaryColor, width: 2.0)),
                  buildInterestItem(Icons.balance, 'Civil Rights', civil,BorderSide(color: Colors.transparent, width: 2.0)),
                  buildInterestItem(Icons.family_restroom, 'Family', family,BorderSide(color: Colors.transparent, width: 2.0)),
                  buildInterestItem(Icons.attach_money, 'Tax Law', tax,BorderSide(color: Colors.transparent, width: 2.0)),
                  buildInterestItem(Icons.person, 'Solicitor', solicitor,BorderSide(color: primaryColor, width: 2.0)),
                  buildInterestItem(Icons.medical_services, 'Medical', medical,BorderSide(color: Colors.transparent, width: 2.0)),
                  buildInterestItem(Icons.eco, 'Environment', environment,BorderSide(color: Colors.transparent, width: 2.0)),
                  buildInterestItem(Icons.anchor, 'Admiralty', admirality,BorderSide(color: primaryColor, width: 2.0)),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home3(),));
              },
              child: Text('Continue',style: TextStyle(
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
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget buildInterestItem(IconData icon, String label, Color? color,BorderSide customBorderSide) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          top: customBorderSide,
            right: customBorderSide,
           left:  customBorderSide,
            bottom: customBorderSide
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.grey[500]),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
