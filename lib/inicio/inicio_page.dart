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
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 6, right: 24),
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
                              color: Colors.blue.shade300),
                          child: IconButton(
                              onPressed: () {
                                Modular.to.navigate('criar_registro');
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
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
                                    trailing: IconButton(
                                      onPressed: () {
                                        controller.selecionarAcidentes(index);
                                        showModalBottomSheet<void>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return StatefulBuilder(
                                              builder: (BuildContext context, StateSetter setState) {
                                                return Container(
                                                  height: 600,
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16.0,
                                                              right: 16),
                                                      child: Column(
                                                        children: [
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Flexible(
                                                                child: IconButton(
                                                                  onPressed: () {},
                                                                  icon: const Icon(Icons
                                                                      .arrow_back_ios_new_outlined),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                flex: 2,
                                                                child: Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          ElevatedButton
                                                                              .icon(
                                                                        onPressed:
                                                                            () async {
                                                                              await controller.excluirAcidentePorId();
                                                                              await controller.getUltimosAcidentes();
                                                                              Navigator.pop(context);
                                                                            },
                                                                        icon: const Icon(
                                                                            Icons
                                                                                .delete_outline_outlined),
                                                                        label: const Text(
                                                                            'Excluir'),
                                                                        style: ElevatedButton.styleFrom(
                                                                            backgroundColor:
                                                                                Colors.red),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 16,
                                                                    ),
                                                                    Flexible(
                                                                      child: controller.carregando == false ? ElevatedButton.icon(
                                                                              onPressed:
                                                                                  () async {
                                                                                await controller.putAtualizarRegistro();
                                                                                
                                                                                await controller.getUltimosAcidentes();
                                                                              },
                                                                              icon: const Icon(Icons
                                                                                  .check_box_outlined),
                                                                              label:
                                                                                  const Text('Salvar')): const CircularProgressIndicator(),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(),
                                                          Flexible(
                                                            child: ListView(
                                                              shrinkWrap: true,
                                                              children: <Widget>[
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  enabled: false,
                                                                  controller: controller
                                                                      .numBoletimEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Número do boletim',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .car_crash_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .passageiroEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Passageiro',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .car_crash_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller:
                                                                      controller
                                                                          .idadeEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Idade condutor',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .date_range_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .descSeveridadeEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Descrição de severidade',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .car_crash_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .dataNascimentoCondutorEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Data de nascimento',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .date_range_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .dataHoraBoletimEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Data e hora do boletim',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .date_range),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .noEnvolvidoEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'N de envolvidos',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .group),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Text(
                                                                  'Condutor se feriu?',
                                                                  style: ClassEstilosTextos
                                                                      .pretoSize18w400Montserrat,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Sim'),
                                                                        value: 'S',
                                                                        groupValue:
                                                                            controller
                                                                                .isCondutor,
                                                                        onChanged:
                                                                            (value) {
                                                                              setState(() => controller.checkboxCondutor(value));
                                                                          setState(
                                                                              () {
                                                                            controller.checkboxCondutor(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Não'),
                                                                        value: 'N',
                                                                        groupValue:
                                                                            controller
                                                                                .isCondutor,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxCondutor(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Text(
                                                                  'Sexo do condutor',
                                                                  style: ClassEstilosTextos
                                                                      .pretoSize18w400Montserrat,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Masculino'),
                                                                        value: 'M',
                                                                        groupValue:
                                                                            controller
                                                                                .sexo,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxSexo(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Feminino'),
                                                                        value: 'F',
                                                                        groupValue:
                                                                            controller
                                                                                .sexo,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxSexo(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Text(
                                                                  'Condutor embreagado?',
                                                                  style: ClassEstilosTextos
                                                                      .pretoSize18w400Montserrat,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Sim'),
                                                                        value:
                                                                            'SIM',
                                                                        groupValue:
                                                                            controller
                                                                                .isEmbreagues,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxEmbreagues(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Não'),
                                                                        value:
                                                                            'NÃO',
                                                                        groupValue:
                                                                            controller
                                                                                .isEmbreagues,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxEmbreagues(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Text(
                                                                  'Utilização do cinto de segurança',
                                                                  style: ClassEstilosTextos
                                                                      .pretoSize18w400Montserrat,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Sim'),
                                                                        value:
                                                                            'Sim',
                                                                        groupValue:
                                                                            controller
                                                                                .isCintoSeguranca,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxCintoSeguranca(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Não'),
                                                                        value:
                                                                            'Não',
                                                                        groupValue:
                                                                            controller
                                                                                .isCintoSeguranca,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxCintoSeguranca(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Text(
                                                                  'Envolvimento de pedestres',
                                                                  style: ClassEstilosTextos
                                                                      .pretoSize18w400Montserrat,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Sim'),
                                                                        value: 'S',
                                                                        groupValue:
                                                                            controller
                                                                                .isPedestre,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxPedestre(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          RadioListTile(
                                                                        title: const Text(
                                                                            'Não'),
                                                                        value: 'N',
                                                                        groupValue:
                                                                            controller
                                                                                .isPedestre,
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            controller
                                                                                .checkboxPedestre(value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .categoriaHabilitacaoEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Categoria Habilitação',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .car_crash_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .especieVeiculoEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Espécie Veículo',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .motorcycle_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                TextField(
                                                                  controller: controller
                                                                      .passageiroEC,
                                                                  decoration:
                                                                      const InputDecoration(
                                                                    labelText:
                                                                        'Passageiro',
                                                                    suffixIcon:
                                                                        Icon(Icons
                                                                            .person_2_outlined),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(
                                                                                  20)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.edit),
                                    ),
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
