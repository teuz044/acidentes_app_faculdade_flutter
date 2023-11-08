import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../core/ui/class_estilos_texto.dart';
import 'controllers/criar_registro_controller.dart';

class CriarRegistroAcidentePage extends StatefulWidget {
  const CriarRegistroAcidentePage({super.key});

  @override
  State<CriarRegistroAcidentePage> createState() =>
      _CriarRegistroAcidentePageState();
}

class _CriarRegistroAcidentePageState extends State<CriarRegistroAcidentePage> {
  final controller = Modular.get<CriarRegistroController>();

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
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 25),
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
                    ],
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
                            controller: controller.numBoletimEC,
                            decoration: const InputDecoration(
                              labelText: 'Número do boletim',
                              suffixIcon: Icon(Icons.car_crash_outlined),
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
                            controller: controller.passageiroEC,
                            decoration: const InputDecoration(
                              labelText: 'Passageiro',
                              suffixIcon: Icon(Icons.car_crash_outlined),
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
                            controller: controller.idadeEC,
                            decoration: const InputDecoration(
                              labelText: 'Idade condutor',
                              suffixIcon: Icon(Icons.date_range_outlined),
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
                            controller: controller.descSeveridadeEC,
                            decoration: const InputDecoration(
                              labelText: 'Descrição de severidade',
                              suffixIcon: Icon(Icons.car_crash_outlined),
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
                            controller: controller.dataNascimentoCondutorEC,
                            decoration: const InputDecoration(
                              labelText: 'Data de nascimento',
                              suffixIcon: Icon(Icons.date_range_outlined),
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
                            controller: controller.dataHoraBoletimEC,
                            decoration: const InputDecoration(
                              labelText: 'Data e hora do boletim',
                              suffixIcon: Icon(Icons.date_range),
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
                            controller: controller.numEnvolvidosEC,
                            decoration: const InputDecoration(
                              labelText: 'N de envolvidos',
                              suffixIcon: Icon(Icons.group),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Condutor se feriu?',
                            style: ClassEstilosTextos.pretoSize18w400Montserrat,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Sim'),
                                  value: 'S',
                                  groupValue: controller.isCondutor,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxCondutor(value);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Não'),
                                  value: 'N',
                                  groupValue: controller.isCondutor,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxCondutor(value);
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
                            style: ClassEstilosTextos.pretoSize18w400Montserrat,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Masculino'),
                                  value: 'M',
                                  groupValue: controller.sexo,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxSexo(value);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Feminino'),
                                  value: 'F',
                                  groupValue: controller.sexo,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxSexo(value);
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
                            style: ClassEstilosTextos.pretoSize18w400Montserrat,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Sim'),
                                  value: 'SIM',
                                  groupValue: controller.isEmbreagues,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxEmbreagues(value);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Não'),
                                  value: 'NÃO',
                                  groupValue: controller.isEmbreagues,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxEmbreagues(value);
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
                            style: ClassEstilosTextos.pretoSize18w400Montserrat,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Sim'),
                                  value: 'Sim',
                                  groupValue: controller.isCintoSeguranca,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxCintoSeguranca(value);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Não'),
                                  value: 'Não',
                                  groupValue: controller.isCintoSeguranca,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxCintoSeguranca(value);
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
                            style: ClassEstilosTextos.pretoSize18w400Montserrat,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Sim'),
                                  value: 'S',
                                  groupValue: controller.isPedestre,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxPedestre(value);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  title: const Text('Não'),
                                  value: 'N',
                                  groupValue: controller.isPedestre,
                                  onChanged: (value) {
                                    setState(() {
                                      controller.checkboxPedestre(value);
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
                            controller: controller.categoriaHabilitacaoEC,
                            decoration: const InputDecoration(
                              labelText: 'Categoria Habilitação',
                              suffixIcon: Icon(Icons.car_crash_outlined),
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
                            controller: controller.especieVeiculoEC,
                            decoration: const InputDecoration(
                              labelText: 'Espécie Veículo',
                              suffixIcon: Icon(Icons.motorcycle_outlined),
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
                            controller: controller.passageiroEC,
                            decoration: const InputDecoration(
                              labelText: 'Passageiro',
                              suffixIcon: Icon(Icons.person_2_outlined),
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
                    controller.isCarregando == true
                        ? const CircularProgressIndicator()
                        : ElevatedButton.icon(
                            onPressed: () async {
                              await controller.setCriarRegistro().then(
                                    (value) {
                                      Modular.to.navigate('/inicio');
                                    },
                                  );
                            },
                            icon: const Icon(Icons.add_box_outlined),
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(300, 40),
                                backgroundColor: Colors.blue.shade500,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            label: Text(
                              'Criar Registro',
                              style: ClassEstilosTextos
                                  .branccoSize24w600Montserrat,
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
