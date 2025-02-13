import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'MenuPricipal.dart';

class LoginPage extends StatelessWidget {
  Widget renderEmpresamput(){
    return Padding(
               padding: const EdgeInsets.only(top: 40),
               child: TextFormField(
                decoration: InputDecoration(hintText:'Empresa'),
            ),
             );
  }
  Widget renderEmailImput(){
    return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText:'Usuario o Correo electrobico'),
              ),
            );
  }
  Widget renderPasswordImput(){
    return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText:'Contraseña'),
                obscureText: true,
              ),
            );
  }

  Widget renderLoginbutton(BuildContext context){
    return Container(padding: const EdgeInsets.only(top:32),
    child: RaisedButton(
      textColor: Colors.white,
      child: Text('Entrar'),
      onPressed: () {
       Navigator.push(context,
                MaterialPageRoute(builder: (context) => MenuPrincipal())); 
                
      },
    ));
  }

  Widget renderCreateAccountLink(){
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Text(
         'O crea tu cuenta aqui',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  Widget renderDivisor(){
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
        children:[
        Expanded(child: Divider(height: 1)),
        Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text('0'),
        ),
        Expanded(child: Divider(height: 1)),
      ])
    );
  }

   Widget renderGmailButton(){
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: RaisedButton(
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.googlePlusSquare),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Entrar con Gmail'),
            )
          ],),

          onPressed: () {
          
        },  
        ));
   }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
            Image.asset('assets/images/Resistencia.png',
            width: 630.0,
            ),
            renderEmpresamput(),
            renderEmailImput(),
            renderPasswordImput(),
            renderLoginbutton(context),
            renderCreateAccountLink(),
            renderDivisor(),
            renderGmailButton(),
        ]),
      ),
    );
  }
}