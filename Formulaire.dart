import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'HomeScreen.dart';

class formul extends StatefulWidget {
  const formul({Key? key}) : super (key:key);
  @override
  State<formul> createState() => _formulState();
}

class _formulState extends State<formul> {

  String textPresentation = "";
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordControler = TextEditingController();
  final _professionController = TextEditingController();
 bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 94, 95, 1),
        title: Center(
          child: Text(
              "AUTHENTIFICATION",
              style: TextStyle(color: Colors.white),
        )
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Form(
          key: formKey,
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: _nameController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Votre Email",
                  hintText: "Entrez votre Email"),
              validator: (value) {
                return value == null || value == ""
                    ? "Ce champ est obligatoire"
                    : null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: _passwordControler,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                icon: Icon(Icons.lock_open_outlined),
                  labelText: "Mot de passe",
                  hintText: "Entrez votre mot de passe",
              suffixIcon: IconButton(
                icon: Icon(_isPasswordVisible
                  ?Icons.visibility
                    :Icons.visibility_off
                ),
                onPressed: (){
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              ),
              validator: (value) {
                return value == null || value.isEmpty
                    ? "Ce champ est obligatoire"
                    : null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _professionController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.work),
                  labelText: "Profession",
                  hintText: "Entrez votre profession"),
              validator: (value) {
                return value == null || value == ""
                    ? "Ce champ est obligatoire"
                    : null;
              },
            ),
          ]),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen()));

              if (formKey.currentState!.validate()) {
                setState(() {
                });
              }
            },
            child: const Text(
              'Validez',
              style: TextStyle(color: Colors.blue),
            )),
      ]),
    );
  }
}
