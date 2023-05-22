import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:covid_19/pages/search.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData = [];

  fetchCountryData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Search(countryData));
            },
          )
        ],
        title: const Text('Country Stats'),
      ),
      // ignore: unnecessary_null_comparison
      body: countryData == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: countryData.length,
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
                                  countryData[index]['countryInfo']['flag'],
                                  height: 110,
                                  width: 150,
                                ),
                                Text(
                                  'COUNTRY : ' + countryData[index]['country'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'CONFIRMED : ' + countryData[index]['cases'].toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  'ACTIVE : ' + countryData[index]['active'].toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  'RECOVERED : ' + countryData[index]['recovered'].toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  'DEATHS : ' + countryData[index]['deaths'].toString(),
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
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                                  countryData[index]['country'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.network(
                                  countryData[index]['countryInfo']['flag'],
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
                                    countryData[index]['population'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'BENUA : ' +
                                    countryData[index]['continent'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
