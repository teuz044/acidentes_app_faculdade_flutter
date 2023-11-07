import 'package:acidentes_app/core/ui/class_estilos_texto.dart';
import 'package:acidentes_app/core/ui/custom_textfield.dart';
import 'package:acidentes_app/inicio/inicio_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/detalhes_acidente.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  void initState() {
    controller.getUltimosAcidentes();
    super.initState();
  }

  final controller = Modular.get<InicioController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: Observer(builder: (context) {
        return ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(color: Colors.blue.shade500),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              Modular.to.popAndPushNamed('/login');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black26),
                            icon: const Icon(Icons.logout),
                            label: Text(
                              'Logout',
                              style: ClassEstilosTextos
                                  .branccoSize18w600Montserrat,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.help_outline_outlined,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bem vindo',
                          style: ClassEstilosTextos.branccoSize18w400Montserrat,
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 6, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Registro de acidentes',
                          style: ClassEstilosTextos.branccoSize24w600Montserrat,
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade300
                          ),
                          child: IconButton(
                              onPressed: () {
                                Modular.to.navigate('criar_registro');
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white, size: 30,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              height: MediaQuery.of(context).size.height * 0.75,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 24, left: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: TextFormField(
                            controller: controller.numBoletimEC,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.orange)),
                                label: Text('Digite o número do boletim')),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Flexible(
                            child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade500,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                              onPressed: () async {
                                await controller.getAcidentesPorId().then(
                                  (value) {
                                    setState(() {});
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Text(
                      'ÚLTIMOS REGISTROS',
                      style: ClassEstilosTextos.pretoSize18w600Montserrat,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      child: controller.carregando == false
                          ? ListView.builder(
                              shrinkWrap: true,
                              itemCount: controller.lstAcidentes.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 4,
                                  child: ListTile(
                                    onTap: () {
                                      controller.selecionarAcidentes(index);
                                      showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return AlertDialog(
                                            title: Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Center(
                                                    child: Text('Detalhes',
                                                        style: ClassEstilosTextos
                                                            .pretoSize18w600Montserrat),
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 0.0,
                                                  child: InkWell(
                                                    hoverColor:
                                                        Colors.red.shade700,
                                                    splashColor:
                                                        Colors.red.shade800,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                    radius: 100,
                                                    onTap: () {
                                                      Navigator.pop(
                                                        dialogContext,
                                                      );
                                                    },
                                                    child: const Align(
                                                      child: CircleAvatar(
                                                        radius: 14,
                                                        backgroundColor:
                                                            Colors.red,
                                                        child: Icon(
                                                          Icons.close,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            content: SizedBox(
                                              height: 200,
                                              width: 200,
                                              child: DetalhesAcidente(
                                                controller: controller,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    title: Text(
                                        'Código Boletim: ${controller.lstAcidentes[index].numBoletim}'),
                                    subtitle: Text(
                                        'Data: ${controller.lstAcidentes[index].dataHoraBoletim}'),
                                  ),
                                );
                              },
                            )
                          : const CircularProgressIndicator(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
