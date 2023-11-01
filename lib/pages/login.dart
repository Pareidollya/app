import 'package:app/widgets/input_large.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Just do It",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            Align(
              alignment: Alignment.centerLeft, // Alinha o texto à esquerda
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            InputLarge(labelText: "Usuário"),
            // TextField(
            //   cursorColor: Colors.yellow,
            //   style: TextStyle(color: Colors.white),
            //   decoration: InputDecoration(
            //     contentPadding:
            //         EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            //     filled: true, // Adiciona preenchimento ao campo
            //     fillColor: Color.fromARGB(255, 58, 58,
            //         58), // Define a cor de preenchimento como preta
            //     labelText: "Usuário",
            //     labelStyle: TextStyle(color: Colors.white),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide.none, // Remove a borda
            //       borderRadius: BorderRadius.circular(12.0),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.yellow, width: 2.0),
            //       borderRadius: BorderRadius.circular(12.0),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            InputLarge(
              labelText: "Senha",
              obscureText: true,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 135, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: Text(
                "Entrar",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                  text: 'Não possui cadastro? ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21), // Ajuste o fontSize conforme necessário
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Registre-se',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 21, // Ajuste o fontSize conforme necessário
                        fontWeight: FontWeight.bold,
                      ),
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
