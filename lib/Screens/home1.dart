import 'package:flutter/material.dart';
import 'package:fluttertest3/Screens/home2.dart';
import 'package:fluttertest3/component/color.dart';
// import 'package:google_fonts/google_fonts.dart';
class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Create New Post',style: TextStyle(
        color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontSize: 17
        ),),
        leading: IconButton(
          icon: Icon(Icons.close,color: Colors.black45,),
          onPressed: () {
            // Add your close button functionality here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Column(
          children: [
            Divider(color: Colors.grey.shade200,height: 1,),
            SizedBox(height: 10,)
,            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/img1.png'), // Add your avatar image here
                ),
                SizedBox(width: 10),
                Text(
                  'John Deo',
                    style: TextStyle(
                color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                ) ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Have something to share with the community?',
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                    color:Colors.grey.shade200
              ),

            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  PostOption(icon: Icons.image, label: 'Media',color: media,),
                  PostOption(icon: Icons.help_outline_sharp, label: 'Question',color: question,),
                  PostOption(icon: Icons.calendar_month_outlined, label: 'Event',color: event,),
                  PostOption(icon: Icons.celebration, label: 'Celebrate',color: celebrate,),
                  PostOption(icon: Icons.work_outline, label: 'Job',color: job,),
                  PostOption(icon: Icons.poll_outlined, label: 'Poll',color: poll,),
                  PostOption(icon: Icons.person, label: 'Services',color: service,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home2(),));
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

            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class PostOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  PostOption({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, size: 30,color: color,),
        ),
        SizedBox(height: 10),
        Text(label,

        //     style: GoogleFonts.poppins(
        //     color: Colors.black54,
        //     fontWeight: FontWeight.w400,
        //     fontSize: 13
        // )
        ),
      ],
    );
  }
}
