import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio4/Portfolio4/Detail_Screen.dart';

import 'package:portfolio4/Portfolio4/Moive.dart';

class MovieListView extends StatelessWidget{
  final List<Movie> movies;

  const MovieListView({required this.movies});

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context , index) {
          return MovieItemList(movie: movies[index]);
        }
    );
  }
}

class MovieItemList extends StatelessWidget{
  final Movie movie;

  const MovieItemList({required this.movie});

  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 3),
            ]
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(movie.image),
              radius: 50,
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(child: Text(movie.title, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25))),
                  FittedBox(child: Text(movie.director, style: TextStyle(fontSize: 15, color: Colors.deepOrange))),
                ],
              ),
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Icon(Icons.details,color: Colors.yellowAccent,),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(title: movie.title, plot: movie.plot, year: movie.year, writer: movie.writer)
                ));
              },
            ),
          ],
        )
    );
  }
}