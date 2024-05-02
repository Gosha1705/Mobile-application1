import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  final String title;
  final String plot;
  final String year;
  final String writer;

  const DetailScreen({required this.title ,required this.plot , required this.year , required this.writer});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
                padding: EdgeInsets.all(40),
                child: Text("Writer : $writer", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange
                ),)),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.all(40),
                child: Text("Year : $year" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.all(40),
                child: Text("Plot : $plot" , style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)),
          ],
        ),
      )
    );
  }
}