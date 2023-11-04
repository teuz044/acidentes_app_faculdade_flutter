import 'package:acidentes_app/core/ui/class_estilos_texto.dart';
import 'package:acidentes_app/inicio/inicio_controller.dart';
import 'package:flutter/material.dart';

class DetalhesAcidente extends StatefulWidget {
  final InicioController controller;
  const DetalhesAcidente({ super.key, required this.controller });

  @override
  State<DetalhesAcidente> createState() => _DetalhesAcidenteState();
}

class _DetalhesAcidenteState extends State<DetalhesAcidente> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: ListView(
            children: [
              Text('Número do Boletim ${widget.controller.numBoletimEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Condutor ${widget.controller.condutorEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Categoria Hab.: ${widget.controller.categoriaHabilitacaoEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Cinto segurança: ${widget.controller.cintoSegurancaEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Data do boletim: ${widget.controller.dataHoraBoletimEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Esp. Veículo: ${widget.controller.especieVeiculoEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Idade: ${widget.controller.idadeEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
              Text('Números de envolvidops: ${widget.controller.noEnvolvidoEC.text}', style: ClassEstilosTextos.pretoSize14w400Montserrat,),
              const SizedBox(height: 8,),
            ],
           ),
       );
  }
}