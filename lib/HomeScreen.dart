import 'package:flutter/material.dart';
import 'package:the_dessert_lounge/CategoryBar.dart';

var _searchController = TextEditingController();

class MenuItems{
  final String name;
  final String price;
  final String imagePath;

  MenuItems({
    required this.name,
    required this.price,
    required this.imagePath,
  });
}
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<MenuItems> menu = [
    MenuItems(
      name: 'Strawberry Macarons',
      price: 'EGP 60.00',
      imagePath: 'images/straw.jpg',
    ),
    MenuItems(
      name: 'Chocolate Macarons',
      price: 'EGP 60.00',
      imagePath: 'images/choco.jpg',
    ),
    MenuItems(
      name: 'Bluberry Macarons',
      price: 'EGP 60.00',
      imagePath: 'images/blue.jpg',
    ),
    MenuItems(
      name: 'RaspBerry Macarons',
      price: 'EGP 60.00',
      imagePath: 'images/red.JPG',
    ),
    MenuItems(
      name: 'White Chocolate Macarons',
      price: 'EGP 60.00',
      imagePath: 'images/white.JPG',
    ),
  ];

  List<MenuItems> cheesecakesMenu = [
    MenuItems(
      name: 'Classic Cheesecake',
      price: 'EGP 80.00',
      imagePath: 'images/classic.JPG',
    ),
    MenuItems(
      name: 'Strawberry Cheesecake',
      price: 'EGP 85.00',
      imagePath: 'images/strawberry.JPG',
    ),
    MenuItems(
      name: 'Blueberry Cheesecake',
      price: 'EGP 90.00',
      imagePath: 'images/blueberry.JPG',
    ),
  ];

  List<MenuItems> cookiesMenu = [
    MenuItems(
      name: 'Chocolate Chip Cookie',
      price: 'EGP 50.00',
      imagePath: 'images/chips.jpg',
    ),
    MenuItems(
      name: 'Brownie Cookie',
      price: 'EGP 60.00',
      imagePath: 'images/brown.jpg',
    ),
    MenuItems(
      name: 'Red Velvet Cookie',
      price: 'EGP 55.00',
      imagePath: 'images/redvelvet.jpg',
    ),
  ];

  List<MenuItems> browniesMenu = [
    MenuItems(
      name: 'Chocolate Fudge Brownie',
      price: 'EGP 80.00',
      imagePath: 'images/brownies.jpg',
    ),
  ];

  List<MenuItems> icedCoffeeMenu = [
    MenuItems(
      name: 'Iced Spanish Latte',
      price: 'EGP 70.00',
      imagePath: 'images/mocca.JPG',
    ),
    MenuItems(
      name: 'Iced Caramel',
      price: 'EGP 60.00',
      imagePath: 'images/caramel.JPG',
    ),
    MenuItems(
      name: 'Iced Latte',
      price: 'EGP 80.00',
      imagePath: 'images/latte.JPG',
    ),
    MenuItems(
      name: 'Iced Mocha',
      price: 'EGP 75.00',
      imagePath: 'images/span.JPG',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Do something when the menu icon is pressed
                print("Menu pressed");
              },
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the search bar
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 10, // The blur effect of the shadow
                      offset: const Offset(0, 3), // The position of the shadow (x, y)
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  onSubmitted: (String){
                    print(_searchController.text);
                  },
                  cursorColor: Colors.red.shade200,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red.shade200,
                    ),
                    contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
                    hintText: 'Search',
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45,left: 5,bottom: 10),
                    child: Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryBar(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Macarons",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMenuItem(menu[index]),
                separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                itemCount: menu.length,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cheesecakes",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMenuItem(cheesecakesMenu[index]),
                separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                itemCount: cheesecakesMenu.length,
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cookies",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMenuItem(cookiesMenu[index]),
                separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                itemCount: cookiesMenu.length,
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Brownies",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMenuItem(browniesMenu[index]),
                separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                itemCount: browniesMenu.length,
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Iced Coffee",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMenuItem(icedCoffeeMenu[index]),
                separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                itemCount: icedCoffeeMenu.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItems menu) =>  Row(
    children: [
       Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            menu.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            menu.price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage(
                    menu.imagePath,
                  ),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
  void setState(Null Function() param0) {}
}
