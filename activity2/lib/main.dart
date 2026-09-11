import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Magazine Infos'),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/sunguk.jpg')),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Tu as cliqué dessus')));
        },
        child: const Text('Click'),
      ),
    );
  }
}

// Affiche le titre principal et le sous-titre du magazine
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Votre magazine numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// Affiche un paragraphe descriptif présentant le magazine
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        "Magazine Infos est bien plus qu'un simple magazine d'informations. "
        "C'est votre passerelle vers le monde, une source inestimable de "
        "connaissances et d'actualités soigneusement sélectionnées pour vous "
        "éclairer sur les enjeux mondiaux, la culture, la science, l'art et "
        "même le divertissement (le jeux).",
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

// Affiche trois actions : téléphone, mail et partage
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: const [
                Icon(Icons.call, color: Colors.red),
                SizedBox(height: 5),
                Text('TEL', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: const [
                Icon(Icons.mail, color: Colors.red),
                SizedBox(height: 5),
                Text('MAIL', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: const [
                Icon(Icons.share, color: Colors.red),
                SizedBox(height: 5),
                Text('PARTAGE', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Affiche deux images côte à côte pour illustrer des rubriques du magazine
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/blairfraser.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/unsplaso.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
