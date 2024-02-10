import 'package:flutter/material.dart';

class SecondaryPage extends StatefulWidget {
  const SecondaryPage({super.key});

  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          // Conteneur pour l'image
          Container(
            height:
                MediaQuery.of(context).size.height / 2, // Hauteur de l'image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/istockphoto-869078270-1024x1024.jpg"), // Image à afficher
                fit: BoxFit.cover, // Ajustement de l'image
              ),
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(50), // Coins arrondis en bas à gauche
              ),
            ),
            child: Stack(
              children: [
                // Icône de retour en haut à gauche
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Action à effectuer lors du clic sur l'icône de retour
                    },
                  ),
                ),
                // Texte du nom du produit au milieu
                Positioned(
                  top: 50,
                  left: MediaQuery.of(context).size.width / 3,
                  child: Text(
                    "Product Name",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                // Icône du panier avec badge rouge en haut à droite
                Positioned(
                  top: 40,
                  right: 10,
                  child: Stack(
                    children: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          // Action à effectuer lors du clic sur l'icône du panier
                        },
                      ),
                      Positioned(
                        right: 10,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Text(
                            "", // Nombre d'articles dans le panier
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                OverflowBox(
                  maxWidth: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Texte "$115" en gras et en rouge
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "\$115",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 236, 85, 75),
              ),
            ),
          ),
          // Row avec "Minimal Chair" et les étoiles
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Minimal Chair",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 13),
                    Icon(Icons.star, color: Colors.yellow, size: 13),
                    Icon(Icons.star, color: Colors.yellow, size: 13),
                    Icon(Icons.star, color: Colors.yellow, size: 13),
                    Icon(Icons.star_half, color: Colors.yellow, size: 13),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Colors Options",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                            activeColor: Colors
                                .red, // Couleur de la radiobox quand sélectionnée
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
                            activeColor: Colors
                                .grey, // Couleur de la radiobox quand sélectionnée
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            hoverColor: Colors.black,
                            value: 3,
                            groupValue: 1,
                            onChanged: (value) {},
                            activeColor: Colors
                                .white, // Couleur de la radiobox quand sélectionnée
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alignement à gauche
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem ipsum aifcna aeifaei aofuna o zdnf aefoan azkcn  ozdi    aidj   oajdfn  o uievbzue ozcn  ozfnc   ozn  PIDJ QOSJCN oncv  ondf  o ",
                  style: TextStyle(color: const Color.fromARGB(160, 0, 0, 0)),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(199, 5, 13, 22)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Add to Cart", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
