import 'package:flutter/material.dart';

class WorldwidePanel extends StatelessWidget {
  final Map worldData;

  const WorldwidePanel({Key? key, required this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2),
      children: <Widget>[
        StatusPanel(
          title: 'CONFIRMED',
          panelColor: Colors.red.shade100,
          textColor: Colors.red,
          count: worldData['cases'].toString(),
        ),
        StatusPanel(
          title: 'ACTIVE',
          panelColor: Colors.blue.shade100,
          textColor: Colors.blue,
          count: worldData['active'].toString(),
        ),
        StatusPanel(
          title: 'RECOVERED',
          panelColor: Colors.green.shade100,
          textColor: Colors.green,
          count: worldData['recovered'].toString(),
        ),
        StatusPanel(
          title: 'DEATHS',
          panelColor: Colors.yellow.shade100,
          textColor: Colors.yellow,
          count: worldData['deaths'].toString(),
        ),
      ],
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key? key,
      required this.panelColor,
      required this.textColor,
      required this.title,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
          )
        ],
      ),
    );
  }
}
