import 'package:acidentes_app/inicio/inicio_model.dart';
import 'package:acidentes_app/inicio/inicio_repository.dart';
import 'package:flutter/material.dart';

class InicioController {
  InicioRepository repository = InicioRepository();

  var lstAcidentes = <InicioModel>[];
  final numBoletimEC = TextEditingController();
  final dataHoraBoletimEC = TextEditingController();
  final noEnvolvidoEC = TextEditingController();
  final condutorEC = TextEditingController();
  final codSeveridadeEC = TextEditingController();
  final descSeveridadeEC = TextEditingController();
  final sexoEC = TextEditingController();
  final cintoSegurancaEC = TextEditingController();
  final embreaguesEC = TextEditingController();
  final idadeEC = TextEditingController();
  final nascimentoEC = TextEditingController();
  final categoriaHabilitacaoEC = TextEditingController();
  final descricaoHabilitacaoEC = TextEditingController();
  final declaracaoObitoEC = TextEditingController();
  final codSeveridadeAntigaEC = TextEditingController();
  final especieVeiculoEC = TextEditingController();
  final pedestreEC = TextEditingController();
  final passageiroEC = TextEditingController();


  bool carregando = false;

  Future<void> getAcidentesPorId() async {
    try {
      carregando = true;
      lstAcidentes = await repository.getAcidentesPorId(numBoletimEC.text);
      print(lstAcidentes);
      carregando = false;
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao buscar anuncios');
    }
  }

  Future<void> getUltimosAcidentes() async {
    try {
      carregando = true;
      lstAcidentes = await repository.getUltimosAcidentes();
      print(lstAcidentes);
      carregando = false;
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao buscar anuncios');
    }
  }

  void selecionarAcidentes(int index) {
  numBoletimEC.text = lstAcidentes[index].numBoletim.toString();
  dataHoraBoletimEC.text = lstAcidentes[index].dataHoraBoletim.toString();
  noEnvolvidoEC.text = lstAcidentes[index].noEnvolvido.toString();
  condutorEC.text = lstAcidentes[index].condutor.toString();
  codSeveridadeEC.text = lstAcidentes[index].codSeveridade.toString();
  descSeveridadeEC.text = lstAcidentes[index].descSeveridade.toString();
  sexoEC.text = lstAcidentes[index].sexo.toString();
  cintoSegurancaEC.text = lstAcidentes[index].cintoSeguranca.toString();
  embreaguesEC.text = lstAcidentes[index].embreagues.toString();
  idadeEC.text = lstAcidentes[index].idade.toString();
  nascimentoEC.text = lstAcidentes[index].nascimento.toString();
  categoriaHabilitacaoEC.text = lstAcidentes[index].categoriaHabilitacao.toString();
  descricaoHabilitacaoEC.text = lstAcidentes[index].descricaoHabilitacao.toString();
  declaracaoObitoEC.text = lstAcidentes[index].declaracaoObito.toString();
  codSeveridadeAntigaEC.text = lstAcidentes[index].codSeveridadeAntiga.toString();
  especieVeiculoEC.text = lstAcidentes[index].especieVeiculo.toString();
  pedestreEC.text = lstAcidentes[index].pedestre.toString();
  passageiroEC.text = lstAcidentes[index].passageiro.toString();
  }
}
