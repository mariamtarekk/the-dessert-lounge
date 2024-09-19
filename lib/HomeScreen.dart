import 'package:flutter/material.dart';
import 'MenuItem.dart';
import 'Category.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  List<Category> categories = [
    Category(
      name: "Macaroons",
      menu: [
        MenuItem(
          name: 'Strawberry Macaroons',
          price: 'EGP 60.00',
          imagePath: 'images/straw.jpg',
          category: 'Macaroons',
        ),
        MenuItem(
          name: 'Chocolate Macaroons',
          price: 'EGP 60.00',
          imagePath: 'images/choco.jpg',
          category: 'Macaroons',
        ),
        MenuItem(
          name: 'Blueberry Macaroons',
          price: 'EGP 60.00',
          imagePath: 'images/blue.jpg',
          category: 'Macaroons',
        ),
        MenuItem(
          name: 'RaspBerry Macaroons',
          price: 'EGP 60.00',
          imagePath: 'images/red.JPG',
          category: 'Macaroons',
        ),
        MenuItem(
          name: 'White Chocolate Macaroons',
          price: 'EGP 60.00',
          imagePath: 'images/white.JPG',
          category: 'Macaroons',
        ),
      ],
    ),
    Category(
      name: "CheeseCakes",
      menu: [
        MenuItem(
          name: 'Classic Cheesecake',
          price: 'EGP 80.00',
          imagePath: 'images/classic.JPG',
          category: 'CheeseCakes',
        ),
        MenuItem(
          name: 'Strawberry Cheesecake',
          price: 'EGP 85.00',
          imagePath: 'images/strawberry.JPG',
          category: 'CheeseCakes',
        ),
        MenuItem(
          name: 'Blueberry Cheesecake',
          price: 'EGP 90.00',
          imagePath: 'images/blueberry.JPG',
          category: 'CheeseCakes',
        ),
      ],
    ),
    Category(
      name: "Cookies",
      menu: [
        MenuItem(
          name: 'Chocolate Chip Cookie',
          price: 'EGP 50.00',
          imagePath: 'images/chips.jpg',
          category: 'Cookies',
        ),
        MenuItem(
          name: 'Brownie Cookie',
          price: 'EGP 60.00',
          imagePath: 'images/brown.jpg',
          category: 'Cookies',
        ),
        MenuItem(
          name: 'Red Velvet Cookie',
          price: 'EGP 55.00',
          imagePath: 'images/redvelvet.jpg',
          category: 'Cookies',
        ),
      ],
    ),
    Category(
      name: "Brownies",
      menu: [
        MenuItem(
          name: 'Chocolate Fudge Brownie',
          price: 'EGP 80.00',
          imagePath: 'images/brownies.jpg',
          category: 'Brownies',
        ),
      ],
    ),
    Category(
      name: "Iced Coffee",
      menu: [
        MenuItem(
          name: 'Iced Spanish Latte',
          price: 'EGP 70.00',
          imagePath: 'images/mocha.JPG',
          category: 'Iced Coffee',
        ),
        MenuItem(
          name: 'Iced Caramel',
          price: 'EGP 60.00',
          imagePath: 'images/caramel.JPG',
          category: 'Iced Coffee',
        ),
        MenuItem(
          name: 'Iced Latte',
          price: 'EGP 80.00',
          imagePath: 'images/latte.JPG',
          category: 'Iced Coffee',
        ),
        MenuItem(
          name: 'Iced Mocha',
          price: 'EGP 75.00',
          imagePath: 'images/span.JPG',
          category: 'Iced Coffee',
        ),
      ],
    ),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final TextEditingController _searchController;

  late String _selectedCategory;
  late List<String> _categoriesOptions;
  late List<Category> _categories;


  @override
  void initState() {
    _searchController = TextEditingController();

    _selectedCategory = 'All';
    _categoriesOptions = ['All', 'Macaroons', 'CheeseCakes', 'Cookies', 'Brownies', 'Iced Coffee'];
    _categories = widget.categories;

    super.initState();
  }


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
              onPressed: () {},
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 15),
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
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25),
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
                      offset: const Offset(
                          0, 3), // The position of the shadow (x, y)
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (String query) {
                    setState(() {
                      _filterMenu(query);
                    });
                  },
                  cursorColor: Colors.red.shade200,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red.shade200,
                    ),
                    contentPadding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 10, vertical: 10),
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
                    padding: EdgeInsets.only(top: 45, left: 5, bottom: 10),
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
                  _buildCategoryBar(),
                ],
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => _buildCategory(_categories[index]),
                  itemCount: _categories.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _filterMenu(String query) {
    if (query.isNotEmpty) {
      for(int i = 0; i < _categories.length; i++){
         _categories[i].menu = widget.categories[i].menu
             .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
             .toList();
      }
    } else {
        for(int i = 0; i < _categories.length; i++){
          _categories[i].menu = widget.categories[i].menu;
        }
    }
  }
  void _filterCategory(String category) {
    if (category == 'All') {
      for(int i = 0; i < _categories.length; i++){
        _categories[i].menu = widget.categories[i].menu;
      }
    } else {
        for(int i = 0; i < _categories.length; i++){
          _categories[i].menu = widget.categories[i].menu
              .where((item) => item.category == category)
              .toList();
        }
    }
  }

  Widget _buildMenuItem(MenuItem menu) => Row(
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
                height: 20,
              ),
              Text(
                menu.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: FloatingActionButton(
                      mini: true,
                      backgroundColor: Colors.red.shade200,
                      hoverColor: Colors.red.shade300,
                      onPressed: () {
                        setState(() {
                          if (menu.counter > 1) {
                            menu.counter--;
                          }
                        });
                      },
                      child: const Icon(
                        Icons.remove,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${menu.counter}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: FloatingActionButton(
                      mini: true,
                      backgroundColor: Colors.red.shade200,
                      hoverColor: Colors.red.shade300,
                      onPressed: () {
                        setState(() {
                          menu.counter++;
                        });
                      },
                      child: const Icon(
                        Icons.add,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: FloatingActionButton(
                      mini: true,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red.shade200)),
                      backgroundColor: Colors.red.shade200,
                      hoverColor: Colors.red.shade300,
                      onPressed: () {},
                      child: const Text(
                        'Add to cart',
                      ),
                    ),
                  ),
                ],
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
  Widget _buildCategoryBar() => SizedBox(
    height: 40.0, // Fixed height for the category bar
    child: ListView.builder(
      scrollDirection:
      Axis.horizontal, // Set scroll direction to horizontal
      itemCount: _categoriesOptions.length,
      itemBuilder: (context, index) {
        String category = _categoriesOptions[index];
        bool isSelected = _selectedCategory == category;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedCategory = category;
              _filterCategory(category);
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 8.0),
            margin: const EdgeInsets.only(
                right: 10.0), // Space between categories
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.red.shade200
                  : Colors.grey
                  .shade200, // Change background color for selected category
              borderRadius:
              BorderRadius.circular(20), // Rounded edges
            ),
            child: Center(
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected
                      ? Colors.white
                      : Colors
                      .black, // Change text color for selected category
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
  Widget _buildCategory(Category category){
    if(category.menu.isNotEmpty){
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                _buildMenuItem(category.menu[index]),
            separatorBuilder: (context, index) => Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.black12,
            ),
            itemCount: category.menu.length,
          ),
        ],
      );
    }else{
      return const SizedBox();
    }
  }


}
