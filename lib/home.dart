import 'package:chart/model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<Item> items = [
    Item(text: 'TOTAL', text1: 'REVENUE', text2: '\$32,575'),
    Item(text: 'TOTAL', text1: 'PROFIT', text2: '\$20,590'),
    Item(text: 'TOTAL', text1: 'VIB', text2: '\$17,575')
  ];
  List<ListItem> myList = [
    ListItem(
        color: Colors.blue.shade200,
        icon: Icon(
          Icons.analytics_outlined,
          color: Colors.blue,
        ),
        text: 'Analytics',
        bordercolor: Colors.blue),
    ListItem(
        color: Colors.orange.shade200,
        icon: Icon(
          Icons.person,
          color: Colors.orange,
        ),
        text: 'Customers',
        bordercolor: Colors.orange),
    ListItem(
        color: Colors.pink.shade200,
        icon: Icon(
          Icons.paste_rounded,
          color: Colors.pink,
        ),
        text: 'Orders',
        bordercolor: Colors.pink),
    ListItem(
        color: Colors.green.shade200,
        icon: Icon(
          Icons.note_alt_outlined,
          color: Colors.green,
        ),
        text: 'Tasks',
        bordercolor: Colors.green),
    ListItem(
        color: Colors.yellow.shade200,
        icon: Icon(
          Icons.production_quantity_limits,
          color: Colors.yellow,
        ),
        text: 'sales',
        bordercolor: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              child: ListView.builder(
                itemCount: myList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Center(child: myList[index].icon),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(180),
                              border: Border.all(
                                  width: 1, color: myList[index].bordercolor),
                              color: myList[index].color),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(myList[index].text)
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(color: Colors.black54),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.black54)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LineChart(LineChartData(
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 1),
                          const FlSpot(1, 3),
                          const FlSpot(2, 10),
                          const FlSpot(3, 7),
                          const FlSpot(4, 12),
                          const FlSpot(5, 13),
                          const FlSpot(6, 17),
                          const FlSpot(7, 20),
                        ],
                        isCurved: true,
                        show: true,
                        color: Colors.blue,
                        barWidth: 1,
                        dotData: FlDotData(show: true),
                        belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.shade100.withOpacity(0.5)),
                      )
                    ],
                    titlesData: FlTitlesData(
                      topTitles: AxisTitles(
                        drawBehindEverything: false,
                      ),
                      rightTitles: AxisTitles(
                        drawBehindEverything: false,
                      ),
                      bottomTitles: AxisTitles(
                        drawBehindEverything: true,
                      ),
                    ),
                  )),
                )),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      elevation: 1,
                      child: Container(
                        height: 100,
                        width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                items[index].text,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 9.0),
                              child: Text(
                                items[index].text1,
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            Text(
                              items[index].text2,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recent Orders',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://img.freepik.com/free-photo/lifestyle-beauty-fashion-people-emotions-concept-young-asian-female-office-manager-ceo-with-pleased-expression-standing-white-background-smiling-with-arms-crossed-chest_1258-59329.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text('Daniel Wellington Classic'),
                subtitle: Text('john doe.stripe.#51202325.Aug 11'),
                trailing: Text(
                  '\$149.21',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}
