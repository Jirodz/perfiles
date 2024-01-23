import 'package:flutter/material.dart';
import 'package:perfiles/components/button.dart';
import 'package:perfiles/components/square_tile.dart';
import 'package:perfiles/components/textfield.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  //controlador de edicion de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //metodo ingresar usuario
  void IngresarUsuario() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(        
            children: [
              const SizedBox(height: 50),
        //logo
        const Icon(
          Icons.lock,
          size: 100,
        ),
        const SizedBox(height: 50),
        //welcome back!
        Text(
          'Bienvenido de vuelta!',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 25),
        //username textfield
        MyTextField(
          controller: usernameController,
          hintText: 'Usuario',
          obscureText: false,
        ),

        const SizedBox(height: 10),
        //password textfield
        MyTextField(
          controller: passwordController,
          hintText: 'Contraseña',
          obscureText: true,
        ),

        const SizedBox(height: 10),
        // forgot password?
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '¿Olvido su contraseña?',
                style: TextStyle(color: Colors.grey[600]),
              
              )
            ],
          ),
        ),
        
        const SizedBox(height: 25),
        //sign in button
        MyButton(
          onTap: IngresarUsuario,
        ),
        const SizedBox(height: 50),
        //or continue with
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(
                child:Divider(
                  thickness: 0.5,
                  color: Colors.grey[500],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Ó continuar como',
                  style: TextStyle(color: Colors.grey[700]),
                  ),
              ),
              Expanded(
                child:Divider(
                  thickness: 0.5,
                  color: Colors.grey[500],
                ),
              ),  
            ],
          ),
        ),

        const SizedBox(height: 50),
        //google or apple buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            //boton google
            SquareTile(imagePath: 'lib/images/google.png'),
            const SizedBox(width: 25),
            //boton apple
            SquareTile(imagePath: 'lib/images/apple.png'),
          ],
        ),
        const SizedBox(height: 50),
        // not a member register
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¿No esta registrado?'),
            const SizedBox(width: 4),
            Text('Registrarse ahora',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        )

      ]
          ),
        ),
      ),
    );
  }
}

