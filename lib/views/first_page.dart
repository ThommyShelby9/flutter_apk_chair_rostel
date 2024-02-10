import 'package:compoflutter/views/secondary_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(202, 0, 0, 0),
            ),
            child: IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.black),
                      onPressed: () {},
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Explore",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 345,
                    width: 220,
                    child: Padding(
                      padding: EdgeInsets.all(
                        20,
                      ), 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(
                            20,
                          ), 
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                0.1,
                              ),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(
                                0,
                                1,
                              ),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ), 
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(
                                    20,
                                  ), 
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                    child: Image.asset(
                                      "assets/images/Screenshot_20231208-213148_1.png",
                                      height: 150,
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    5,
                                  ),
                                  padding: EdgeInsets.all(
                                    4,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 10, 
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ), 
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                        color:
                                            const Color.fromARGB(230, 0, 0, 0)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$225",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(
                                          5,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ), 
                            SizedBox(
                              height: 10,
                            ), 
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 345,
                    width: 220,
                    child: Padding(
                      padding: EdgeInsets.all(
                        20,
                      ), 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Fond blanc
                          borderRadius: BorderRadius.circular(
                            20,
                          ), 
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                0.1,
                              ),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(
                                0,
                                1,
                              ),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ), 
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(
                                    20,
                                  ), 
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                    child: Image.asset(
                                      "assets/images/Screenshot_20231208-213148_1.png",
                                      height: 150,
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    5,
                                  ),
                                  padding: EdgeInsets.all(
                                    4,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 10, // Ajout du padding horizontal
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ), // Espacement
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                        color:
                                            const Color.fromARGB(230, 0, 0, 0)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$225",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(
                                          5,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ), // Espaceme // Espacement
                            SizedBox(
                              height: 10,
                            ),
                            // Espacement
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 345,
                    width: 220,
                    child: Padding(
                      padding: EdgeInsets.all(
                        20,
                      ), // Padding de 20 à l'intérieur de la SizedBox
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Fond blanc
                          borderRadius: BorderRadius.circular(
                            20,
                          ), // Bords arrondis
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                0.1,
                              ),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(
                                0,
                                1,
                              ),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ), // Espacement
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(
                                    20,
                                  ), // Décalage de l'image vers le bas
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                    child: Image.asset(
                                      "assets/images/Screenshot_20231208-213148_1.png",
                                      height: 150,
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    5,
                                  ),
                                  padding: EdgeInsets.all(
                                    4,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 10, // Ajout du padding horizontal
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ), // Espacement
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                        color:
                                            const Color.fromARGB(230, 0, 0, 0)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$225",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(
                                          5,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ), // Espaceme // Espacement
                            SizedBox(
                              height: 10,
                            ), // Espacement
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Ajoutez d'autres éléments similaires ici
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Best Selling",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondaryPage()));

              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15), // Bord arrondi du conteneur
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black.withOpacity(0.1), // Ombre légère noire
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Colors.white, // Couleur de fond blanche
                ),
                child: Row(
                  children: [
                    // Image à gauche
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(15), // Bord arrondi de l'image
                      child: Image.asset(
                        "assets/images/istockphoto-869078270-1024x1024.jpg",
                        height: 50, // Ajustez la taille selon vos besoins
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 10), // Espacement entre l'image et le texte
                    // Texte et bouton
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Minimal Chair",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Lorem ipsum",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "\$125",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
