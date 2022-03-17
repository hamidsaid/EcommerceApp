import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coffee_card.dart';
import 'buttom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                color: Color(0xFF323232),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: const Icon(
                Icons.sort,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              "Hi Hamid",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "WOULD YOU LIKE TO GRAB Aa COFFEE ?",
              style: TextStyle(
                color: Colors.white,
                //fontFamily: GoogleFonts.lato(),
                fontWeight: FontWeight.w500,
                fontSize: 28.0,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              child: TextField(
                cursorColor: Colors.white.withOpacity(0.3),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    filled: true,
                    fillColor: Colors.white10,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    hintText: "Find your coffee"),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TabBar(
              indicatorColor: Colors.yellow,
              //indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white10,
              labelColor: Colors.yellow,
              isScrollable: true,
              labelStyle: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1), //For Selected tab
              unselectedLabelStyle: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Latte",
                ),
                Tab(
                  text: "Expresso",
                ),
                Tab(
                  text: "Cappuccino",
                ),
                Tab(
                  text: "Macchiato",
                ),
                Tab(
                  text: "Ristretto",
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CoffeeCard(
                        "assets/cappuccino.jpg",
                        "Latte",
                        "With Oat Milk",
                        "4.20",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/expresso.jpg",
                        " White Latte",
                        "With Almond Milk",
                        "4.50",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/latte.jpg",
                        "Long Black",
                        "Sugar",
                        "5.0",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/matri.jpg",
                        "Robusta",
                        "Fresh Milk",
                        "5.2",
                      ),
                    ],
                  ),
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CoffeeCard(
                        "assets/matri.jpg",
                        "Expresso",
                        "With Almond Milk",
                        "4.20",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/latte.jpg",
                        "Strong Expresso",
                        "With Sugar",
                        "4.50",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/cappuccino.jpg",
                        "Long Black",
                        "Sugar",
                        "5.0",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/matri.jpg",
                        "Robusta",
                        "Fresh Milk",
                        "5.2",
                      ),
                    ],
                  ),
                  ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CoffeeCard(
                        "assets/cappuccino.jpg",
                        "Latte",
                        "With Oat Milk",
                        "4.20",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/expresso.jpg",
                        " White Latte",
                        "With Almond Milk",
                        "4.50",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/latte.jpg",
                        "Long Black",
                        "Sugar",
                        "5.0",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      CoffeeCard(
                        "assets/matri.jpg",
                        "Robusta",
                        "Fresh Milk",
                        "5.2",
                      ),
                    ],
                  ),
                  const Text('Person'),
                  const Text('Person')
                ],
                controller: _tabController,
              ),
            ),
            BottomNavBar()
          ],
        ),
      ),
    );
  }
}
