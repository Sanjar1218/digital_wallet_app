import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int price = 8250000;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 100),
          Text('Your Balance',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color.fromARGB((255 * 0.5).toInt(), 8, 36, 49),
                ),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              )),
          Text(
            'Rp $price',
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(color: Color.fromARGB(255, 44, 44, 99)),
                fontWeight: FontWeight.w400,
                fontSize: 36,
                fontStyle: FontStyle.normal),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                newIcons('transfer.png', 'Transfer'),
                newIcons('top.png', 'Top-up'),
                newIcons('bill.png', 'Bill'),
                newIcons('more.png', 'More'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 28, horizontal: 42),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transactions',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(8, 36, 49, 0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                ),
                transCard('grocery.png', 'Grocer', 'Nov 17', 326800,
                    'Minimarket Anugrah'),
                transCard('entertainment.png', 'Entertainment', 'Nov 17',
                    326800, 'Football Game'),
                transCard('equipment.png', 'Equipments', 'Nov 17', 326800,
                    'DSLR Camera'),
                transCard('items.png', 'Office Items', 'Nov 17', 326800,
                    'Stationary'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: 'more'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_rounded), label: 'more'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded), label: 'more'),
        ],
      ),
    );
  }

  Widget transCard(
      String img, String name, String date, int price, String fullName) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset('assets/trans/$img'),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 39, 50, 64),
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                ),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(44, 58, 75, 0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                )
              ],
            )
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              price.toString(),
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 39, 50, 64),
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
            ),
            Text(
              fullName,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(44, 58, 75, 0.5),
                      fontWeight: FontWeight.w400,
                      fontSize: 12)),
            )
          ])
        ],
      ),
    );
  }

  Widget newIcons(String img, String text) {
    return Column(
      children: [
        IconButton(
          iconSize: 48,
          onPressed: () {},
          icon: Image.asset(
            'assets/img/$img',
          ),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 129, 129, 151),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 15)),
        )
      ],
    );
  }
}
