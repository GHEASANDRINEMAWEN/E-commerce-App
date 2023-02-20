// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class Item {
//   final String name;
//   final String description;
//   final double price;
//   final String imageUrl;

//   Item(
//       {required this.name,
//       required this.description,
//       required this.price,
//       required this.imageUrl});
// }

// class MyApp extends StatelessWidget {
//   final List<Item> items = [
//     Item(
//       name: 'Item 1',
//       description: 'This is the description for item 1',
//       price: 19.99,
//       imageUrl: 'https://picsum.photos/id/1000/400/400',
//     ),
//     Item(
//       name: 'Item 2',
//       description: 'This is the description for item 2',
//       price: 29.99,
//       imageUrl: 'https://picsum.photos/id/1001/400/400',
//     ),
//     Item(
//       name: 'Item 3',
//       description: 'This is the description for item 3',
//       price: 39.99,
//       imageUrl: 'https://picsum.photos/id/1002/400/400',
//     ),
//     Item(
//       name: 'Item 4',
//       description: 'This is the description for item 4',
//       price: 49.99,
//       imageUrl: 'https://picsum.photos/id/1003/400/400',
//     ),
//     Item(
//       name: 'Item 5',
//       description: 'This is the description for item 5',
//       price: 59.99,
//       imageUrl: 'https://picsum.photos/id/1004/400/400',
//     ),
//     Item(
//       name: 'Item 6',
//       description: 'This is the description for item 6',
//       price: 69.99,
//       imageUrl: 'https://picsum.photos/id/1005/400/400',
//     ),
//     Item(
//       name: 'Item 7',
//       description: 'This is the description for item 7',
//       price: 79.99,
//       imageUrl: 'https://picsum.photos/id/1006/400/400',
//     ),
//     Item(
//       name: 'Item 8',
//       description: 'This is the description for item 8',
//       price: 89.99,
//       imageUrl: 'https://picsum.photos/id/1007/400/400',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ecommerce Item Display',
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('Ecommerce Item Display'),
//           ),
//           body: GridView.count(
//               crossAxisCount: 2,
//               children: List.generate(
//                 items.length,
//                 (index) {
//                   return GestureDetector(
//                       onTap: () {
//                         // TODO: Navigate to item details page
//                       },
//                       child: Card(
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.stretch,
//                               children: [
//                             Image.network(
//                               items[index].imageUrl,
//                               height: 200,
//                               fit: BoxFit.cover,
//                             ),
//                             SizedBox(height: 8),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 8),
//                               child: Text(
//                                 items[index].name,
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 8),
//                               child: Text(
//                                 items[index].description,
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             )
//                           ])));
//                 },
//               ))),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("0")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/one.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Lifestyle Sale",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: Offset(50, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
