import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int price = 8250000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      body: Column(children: [
        const Text('Your Balance'),
        Text('Rp $price'),
        Row(
          children: [
            newIcons('transfer.png', 'Transfer'),
            newIcons('top.png', 'Top-up'),
            newIcons('bill.png', 'Bill'),
            newIcons('more.png', 'More'),
          ],
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
          child: Column(children: [
            const Text('Transactions'),
            transCard('grocery.png', 'Grocer', 'Nov 17', 326800,
                'Minimarket Anugrah'),
            transCard('entertainment.png', 'Entertainment', 'Nov 17', 326800,
                'Football Game'),
            transCard(
                'equipment.png', 'Equipments', 'Nov 17', 326800, 'DSLR Camera'),
            transCard(
                'items.png', 'Office Items', 'Nov 17', 326800, 'Stationary'),
          ]),
        )
      ]),
    );
  }

  Row transCard(
      String img, String name, String date, int price, String fullName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset('assets/trans/$img'),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name), Text(date)],
          )
        ]),
        Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [Text(price.toString()), Text(fullName)])
      ],
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
        Text(text)
      ],
    );
  }
}
