import 'package:flutter/material.dart';
import 'package:app_logueo_facebook/UI/Widgets/text_input.dart';

//CREANDO LA CLASE
class Profile extends StatelessWidget {
  //constantes
  final _controllerName = TextEditingController();
  final _controllerHobbies = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            margin: const EdgeInsets.only(top: 15.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage("assets/img/camara.png"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
            ),
          ), //CONTAINER PARA LA FOTO

          Container(
            height: 40.0,
            margin: const EdgeInsets.only(top: 15.0),
            child: const Text(
              "Perfil de Usuario",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ), //CONTAINER PARA TITULO

          Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: TextInput(
                hint: "Name",
                inputType: TextInputType.name,
                controller: _controllerName,
                maxLineas: 1),
          ), //CONTAINER PARA EL NOMBRE

          Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: TextInput(
                hint: "Hobbies e intereses",
                inputType: TextInputType.text,
                controller: _controllerHobbies,
                maxLineas: 6),
          ), //CONTAINER PARA LOS HOBBIES E INTERESES

          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: () {},
                color: Colors.lightBlue,
                child: const Text(
                  'GUARDAR',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
