import 'package:flutter/material.dart';

class GPA extends StatefulWidget {
  GPA({super.key});

  @override
  State<GPA> createState() => _GPAState();
}

class _GPAState extends State<GPA> {
  final controller = TextEditingController();

  String gradestring = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title:Text("GPA Calculator")),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(fillColor: Colors.blueAccent.withOpacity(0.5),filled: true,
               border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(11.0)),
              borderSide: BorderSide(color: Colors.blue)),

                  hintText: 'Please Type your Score',
                  prefixIcon: Icon(Icons.percent),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                   onPrimary: Colors.white,
                 primary: Colors.blue,
                ),
                child: Text('Calculate'),
                onPressed: () {
                  setState(() {
                    int? grade = int.tryParse(controller.text);
                    if (grade == null) {
                     String gradestring ;
                      return;
                    }

                    if (grade >= 90) {
                      gradestring = "A";
                    } else if (grade >= 80) {
                      gradestring = "B";
                    } else if (grade >= 70) {
                      gradestring = "C";
                    } else if (grade >= 60) {
                      gradestring = "D";
                    } else {
                      gradestring = "F";
                    }
                    controller.clear();
                  });
                },
              ),
            ),
            Expanded(
              child: Center( 
                child: Text(
                  gradestring,
                  style: TextStyle(fontSize: 150, color: Colors.red),
                
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}