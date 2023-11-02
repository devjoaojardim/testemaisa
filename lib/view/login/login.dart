import 'package:flutter/material.dart';
import 'package:testemaisa/theme/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
             // Cor de fundo branca
              border: Border.all(color: Colors.red, width: 2.0), // Borda vermelha
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  elevation: 5,
                  shadowColor: Colors.black, // Define o nível de elevação
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Define o raio dos cantos
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(30), // Define o raio dos cantos
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          // Cor de fundo branca
                          border: Border.all(color: Colors.red, width: 2.0), // Borda vermelha
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            SizedBox(height: 32,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Cor de fundo cinza
                                borderRadius: BorderRadius.circular(10.0), // Bordas arredondadas
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                                  // Remove a borda padrão do TextField
                                  hintText: 'Email',
                                ),
                              ),
                            ),
                            SizedBox(height: 16,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Cor de fundo cinza
                                borderRadius: BorderRadius.circular(10.0), // Bordas arredondadas
                              ),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,

                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                                  // Remove a borda padrão do TextField
                                  hintText: 'Senha',
                                ),
                              ),
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Esqueceu a senha? ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Clique aqui',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 32,),
                            Container(
                              width: 200,
                              child: ElevatedButton(

                                  onPressed: (){

                              }, child: Text('ENTRAR')),
                            ),
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                text: 'Ainda não tem cadastro? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Cadastra-se',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
