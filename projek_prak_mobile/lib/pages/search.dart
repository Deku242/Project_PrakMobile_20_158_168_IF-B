import 'package:flutter/material.dart';
import 'package:covid_19/datasource.dart';

class Search extends SearchDelegate {
  final List countryList;

  Search(this.countryList);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: primaryBlack,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where((element) =>
                element['country'].toString().toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.grey, // Ubah warna AppBar menjadi grey
                        leading: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        title: Text(
                          'Detail', // Teks pada AppBar
                        ),
                      ),
                      backgroundColor: Colors.grey, // Ubah warna latar belakang sesuai kebutuhan
                      body: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              suggestionList[index]['countryInfo']['flag'],
                              height: 110,
                              width: 150,
                            ),
                            Text(
                              'COUNTRY : ' + suggestionList[index]['country'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'CONFIRMED : ' + suggestionList[index]['cases'].toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              'ACTIVE : ' + suggestionList[index]['active'].toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'RECOVERED : ' + suggestionList[index]['recovered'].toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'DEATHS : ' + suggestionList[index]['deaths'].toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }));
                },
            child: Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          suggestionList[index]['country'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                          suggestionList[index]['countryInfo']['flag'],
                          height: 50,
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        'POPULATION : ' +
                            suggestionList[index]['population'].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'BENUA : ' +
                            suggestionList[index]['continent'].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ));
        });
  }
}
