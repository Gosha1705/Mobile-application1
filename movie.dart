class Movie{
  final String title;
  final String director;

  final String image;
  final String writer;
  final String year;
  final String plot;


  Movie({required this.title , required this.director ,
    required this.image,required this.writer , required this.year, required this.plot});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'],
      director: json['Director'],
      image: json['Images'][0],
      writer: json['Writer'],
      year: json['Year'],
      plot: json['Plot'],
    );

  }

  Map<String, dynamic> toJson() => {
    'Title': title,
    'Director': director,
    'Images' : image,
    'Writer' : writer,
    'Year' : year,
    'Plot' : plot,
  };

}