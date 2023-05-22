import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key? key, required this.countryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: <Widget>[
              Image.network(
                countryData[index]['countryInfo']['flag'],
                height: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                countryData[index]['country'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Deaths:' + countryData[index]['deaths'].toString(),
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }
}
