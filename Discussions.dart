import 'package:flutter/material.dart';
import 'package:whatsap/view/DetailedDiscussion.dart';
import 'package:flutter/src/material/circle_avatar.dart';

// Modèle de données pour simuler des discussions
class DiscussionModel {
  final String image; // Chemin de l'image dans les assets
  final String name;
  final String date;
  final String message;
  final String time;

  DiscussionModel({
    required this.image,
    required this.name,
    required this.date,
    required this.message,
    required this.time,
  });
}

// Utilisation de données simulées pour la page de discussions
class Discussions extends StatefulWidget {
  const Discussions({Key? key}) : super(key: key);

  @override
  State<Discussions> createState() => _DiscussionsState();
}

class _DiscussionsState extends State<Discussions> {
  // Liste de discussions simulées
  final List<DiscussionModel> discussions = [

    DiscussionModel(
      image: 'assets/images/ado.jpg',
      name: 'SIL3',
      date: '06 Dec 2023',
      message: 'on ça va la-bas comme ça...',
      time: '10:10',
    ),
    DiscussionModel(
      image: 'assets/images/rew.png',
      name: 'Santos',
      date: '1st Dec 2024',
      message: 'como estas?',
      time: '15:00',
    ),
    DiscussionModel(
      image: 'assets/images/ima.png',
      name: 'Alice ',
      date: '1st Aout 2023',
      message: 'vous etes encore celibataire?',
      time: '00:36',
    ),
    DiscussionModel(
      image: 'assets/images/amazone.jpg',
      name: 'Lumumba',
      date: '10 oct 2023',
      message: 'Mbote ndeko. obengani mindele?',
      time: '01:45',
    ),
    DiscussionModel(
      image: 'assets/images/wow.jpg',
      name: 'Kungutha',
      date: '06 Dec 2023',
      message: 'Tu viens quand!',
      time: '06:15',
    ),
    DiscussionModel(
      image: 'assets/images/wow.jpg',
      name: 'Agbeli',
      date: '01 Dec 2023',
      message: 'Ndi, afemetowo?',
      time: '07:12',
    ),
    DiscussionModel(
      image: 'assets/images/ima.png',
      name: 'Chantal',
      date: '1st Dec 2023',
      message: 'Tu as validé le semestre?',
      time: '08:53',
    ),
    DiscussionModel(
      image: 'assets/images/wh.png',
      name: 'Lizzi',
      date: '01 Dec 2023',
      message: 'Jambo!',
      time: '03:16',
    ),
    DiscussionModel(
      image: 'assets/images/ima.png',
      name: 'Pablo',
      date: '1er Dec 2023',
      message: 'salut!',
      time: '13:12',
    ),
    DiscussionModel(
      image: 'assets/images/flm.png',
      name: 'Escobar',
      date: '1ro Dec 2023',
      message: 'Hola!',
      time: '17:15',
    ),
    // ... Ajoutez autant d'exemples de discussions que nécessaire
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: discussions.length,
        itemBuilder: (context, index) {
          final discussion = discussions[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(discussion.image),
            ),
            title: Text(discussion.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(discussion.message),
                Text(
                  discussion.date,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  discussion.time,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            onTap: () {
              // Action à effectuer lorsqu'une discussion est sélectionnée
              // Par exemple, ouvrir une nouvelle page de discussion spécifique
              // ou afficher des détails sur cette discussion particulière.
              // Ici, vous pouvez implémenter votre propre logique.
              // Navigation vers la page d'aperçu de la discussion
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailedDiscussion(
                    name: discussion.name,
                    message: discussion.message,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action lorsque le bouton d'action flottant est enfoncé
        },
        child: Icon(Icons.message),
        backgroundColor: Color(0xFF25EFFF),
      ),
    );
  }
}
/*Widget content(){
  return const ListTile(
    leading: CircleAvatar(backgroundColor: Colors.blue,),
    title: Text('nom et prenom'),
    subtitle: Text('Le message'),
    trailing: Text('Date'),
  );
}*/



/*import 'package:flutter/material.dart';
import 'package:whatsap/view/Discussions.dart';

// Modèle de données pour simuler des discussions
class DiscussionModel {
  final String image; // Chemin de l'image dans les assets
  final String name;
  final String date;
  final String message;
  final String time;

  DiscussionModel({
    required this.image,
    required this.name,
    required this.date,
    required this.message,
    required this.time,
  });
}

// Widget DiscussionsList pour afficher les discussions avec l'heure à droite
class DiscussionsList extends StatelessWidget {

  final List<DiscussionModel> discussions;

  const DiscussionsList({
    Key? key,
    required this.discussions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discussions.length,
      itemBuilder: (context, index) {
        final discussion = discussions[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(discussion.image),
          ),
          title: Text(discussion.name),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(discussion.message),
                  Text(
                    discussion.date,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Text(
                discussion.time,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          onTap: () {
            // Action à effectuer lorsqu'une discussion est sélectionnée
            // ...
          },
        );
      },
    );
  }
}*/



