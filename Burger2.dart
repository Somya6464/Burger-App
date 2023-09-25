import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class Burger2 extends StatefulWidget {
  const Burger2({Key? key});

  @override
  State<Burger2> createState() => _Burger2State();
}

class _Burger2State extends State<Burger2> {
  int MyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'Home');
          },
          icon: Icon(Icons.arrow_back_outlined, size: 25, color: Colors.amber),
        ),
        backgroundColor: Colors.black54,
        title: Text(
          'Chart',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        elevation: 10,
        onTap: (index) {
          setState(() {
            MyIndex = index;
          });
        },
        currentIndex: MyIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
            backgroundColor: Color.fromARGB(213, 178, 173, 173),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp, color: Colors.black),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.black),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Cart',
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Event A',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 5, top: 5)),
                    Card(
                      child: Container(
                        height: 150,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: PieChartWidget(),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '100 Invite in meet',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '40 Come',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '30 stay till end',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '30 go in mid',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PieChartWidget extends StatefulWidget {
  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  
  int value1 = 40;
  int value2 = 30;
  int value3 = 30;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: value1.toDouble(),
            color: Color.fromARGB(255, 116, 179, 231),
            title: '$value1%',
            radius: 50,
            
            //showSeparator: false,
          ),
          PieChartSectionData(
            value: value2.toDouble(),
            color: Color.fromARGB(255, 133, 121, 164),
            title: '$value2%',
            radius: 50,
            //showSeparator: false,
          ),
          PieChartSectionData(
            value: value3.toDouble(),
            color: Color.fromARGB(255, 87, 164, 171),
            title: '$value3%',
            radius: 50,
            //showSeparator: false,
          ),
        ],
      ),
    );
  }
}
