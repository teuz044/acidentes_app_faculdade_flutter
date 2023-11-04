import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/ui/class_estilos_texto.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            color: Colors.blue.shade500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Logo',
                  style: ClassEstilosTextos.branccoSize24w600Montserrat,
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            height: MediaQuery.of(context).size.height * 0.60,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Login',
                    style: ClassEstilosTextos.pretoSize24w600Montserrat,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  InkWell(
                    child: Text(
                      'Cadastre-se aqui!',
                      style: ClassEstilosTextos.pretoSize14w400Montserrat,
                    ),
                    onTap: () {
                      Modular.to.pushNamed('/cadastro');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Usuário/Email',
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      suffixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: const Text('Esqueceu a senha?'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Modular.to.pushNamed('/inicio');
                      },
                      icon: const Icon(Icons.login),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(50),
                          backgroundColor: Colors.blue.shade500,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      label: Text(
                        'Login',
                        style: ClassEstilosTextos.branccoSize24w600Montserrat,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
