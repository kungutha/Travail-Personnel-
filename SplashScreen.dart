/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsap/view/HomeScreen.dart';
import 'package:whatsap/view/SplashScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  get firstNameController => null;

  get passwordController => null;

  get lastNameController => null;

  @override
  void initState(){
    _controller=AnimationController(duration: const Duration(milliseconds: 2000), vsync: this,value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut)
    ..addStatusListener((status) { //une fois fini le chargement du logo charge le Home
      if(status==AnimationStatus.completed){
       //_navigateToHome;
      }
    });
    _controller.forward();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 41, 46, 1),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
        child: Image.asset("assets/images/logowh.png", //logo de demarrage
        //color: Colors.white,
        width: 300,
        ),
        ),
      ),

    //return Scaffold(
      appBar: AppBar(
       title: Text('Authentification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                labelText: 'Prénom',
              ),
            ),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true, // Masque le texte saisi pour le mot de passe
              decoration: InputDecoration(
                labelText: 'Mot de passe',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Vérification des informations d'authentification
                if (_authenticate()) {
                  _navigateToHome(context);
                } else {
                  // Afficher un message d'erreur ou gérer l'authentification invalide ici
                }
              },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context){
    var route = MaterialPageRoute(builder: (context) => HomeScreen());
    Navigator.of(context as BuildContext).pushAndRemoveUntil(route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {

 // }

  bool _authenticate() {
    // Vous pouvez implémenter votre logique d'authentification ici
    // Comparer les informations saisies avec celles de votre système d'authentification
    // Dans cet exemple, nous supposerons que l'authentification est toujours réussie
    return true;
  }

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
}*/
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsap/view/HomeScreen.dart';
import 'package:whatsap/view/Formulaire.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState(){
    _controller=AnimationController(duration: const Duration(milliseconds: 2000), vsync: this,value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut)
      ..addStatusListener((status) { //une fois fini le chargement du logo charge le Home
        if(status==AnimationStatus.completed){
          _navigateToForm();
        }
      });
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 41, 46, 1),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset("assets/images/logowh.png", //logo de demarrage
            //color: Colors.white,
            width: 300,
          ),
        ),
      ),
    );
  }

  /*void _navigateToHome(){
    var route = MaterialPageRoute(builder: (context) => Formulaire());
    Navigator.of(context as BuildContext).pushAndRemoveUntil(route, (route) => false);
  }*/

  void _navigateToForm(){
    var route = MaterialPageRoute(builder: (context) => Formulaire());
    Navigator.of(context).pushReplacement(route);
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsap/view/Formulaire.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _navigateToForm();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 41, 46, 1),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            "assets/images/logowh.png", //logo de demarrage
            width: 300,
          ),
        ),
      ),
    );
  }
  void _navigateToForm() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const formul()),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:whatsap/view/Formulaire.dart';
import 'package:whatsap/view/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _navigateToForm();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 41, 46, 1),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            "assets/images/logowh.png", //logo de demarrage
            width: 300,
          ),
        ),
      ),
    );
  }

  void _navigateToForm() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => Formulaire()),
    );
  }
}

class Formulaire extends StatefulWidget {
  const Formulaire({Key? key}) : super(key: key);

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  final _formKey = GlobalKey<FormState>();
  final confNameController = TextEditingController();
  final speakerNameController = TextEditingController();

  @override
  void dispose() {
    confNameController.dispose();
    speakerNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // ... Vos champs de formulaire existants ...
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}*/

