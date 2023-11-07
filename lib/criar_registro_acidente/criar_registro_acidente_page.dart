import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../core/ui/class_estilos_texto.dart';

class CriarRegistroAcidentePage extends StatefulWidget {
  const CriarRegistroAcidentePage({super.key});

  @override
  State<CriarRegistroAcidentePage> createState() =>
      _CriarRegistroAcidentePageState();
}

class _CriarRegistroAcidentePageState extends State<CriarRegistroAcidentePage> {
  // final controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: Observer(builder: (context) {
        return ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.blue.shade500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Criar Registro',
                    style: ClassEstilosTextos.branccoSize24w600Montserrat,
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: MediaQuery.of(context).size.height * 0.85,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Data de nascimento',
                              suffixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Data e hora do boletim',
                              suffixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'N de envolvidos',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Condutor',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Código de severidade',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Embreagues',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Cinto de segurança',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Categoria Habilitação',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Espécie Veículo',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Envolvimento de Pedestre',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: 'Passageiro',
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {},
                      icon: const Icon(Icons.add_box_outlined),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 40),
                          backgroundColor: Colors.blue.shade500,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      label: Text(
                        'Criar Registro',
                        style: ClassEstilosTextos.branccoSize24w600Montserrat,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
