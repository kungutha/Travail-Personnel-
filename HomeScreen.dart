import 'package:flutter/material.dart';
import 'package:whatsap/view/Appels.dart';
import 'package:whatsap/view/Statuts.dart';
import 'package:whatsap/view/Discussions.dart';
import 'package:image_picker/image_picker.dart';// Import de la dépendance image_picker

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
with SingleTickerProviderStateMixin{
  late TabController _tabController;

  final List<Tab> _tabs = [
    Tab(child: Text('DISCUSSION', style: TextStyle(color: Colors.white),)),
    Tab(child: Text('STATUTS', style: TextStyle(color: Colors.white),)),
    Tab(child: Text('APPELS', style: TextStyle(color: Colors.white),)),
  ];

  @override
  void initState(){
    _tabController = TabController(vsync: this, length: _tabs.length, initialIndex: 0);
    super.initState();
  }

  Future<void> _pickImageFromCamera() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    // Vous pouvez utiliser l'image choisie pour un traitement ultérieur
    if (pickedImage != null) {
      // Faire quelque chose avec l'image sélectionnée
      print("l'image sélectionnée: ${pickedImage.path}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 94, 95, 1),
        title: Text("MANSSAH", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),),
        centerTitle: false,
        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.search, color: Colors.white)),
          //IconButton(onPressed:() {}, icon: Icon(Icons.more_vert, color: Colors.white)),
          IconButton(
              onPressed:_pickImageFromCamera, // Fonction pour ouvrir la caméra
              icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context)  => [
            PopupMenuItem<String>(
              value: 'Promouvoir',
              child: Text('Promouvoir'),
              ),
            PopupMenuItem<String>(
              value: 'Outils professionnels',
              child: Text('Outils professionnels'),
              ),
            PopupMenuItem<String>(
              value: 'Nouveau groupe',
              child: Text('Nouveau groupe'),
              ),
            PopupMenuItem<String>(
              value: 'Nouvelle diffusion',
              child: Text('Nouvelle diffusion'),
              ),
            PopupMenuItem<String>(
              value: 'Communautés',
              child: Text('Communautés'),
              ),
            PopupMenuItem<String>(
              value: 'Etiquettes',
              child: Text('Etiquettes'),
            ),
            PopupMenuItem<String>(
              value: 'Appareils connectés',
              child: Text('Appareils connectés'),
              ),
            PopupMenuItem<String>(
              value: 'Messages importants',
              child: Text('Messages importants'),
              ),
            PopupMenuItem<String>(
              value: 'Paramètres',
              child: Text('Paramètres')
            )]
              )
              ],
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [ //creation des fichiers
          Discussions(),
          Statuts(),
          Appels(),
        ],
      ),
    );
  }
}
