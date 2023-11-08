import 'package:acidentes_app/criar_registro_acidente/repository/criar_registro_repository.dart';
import 'package:acidentes_app/inicio/models/registro_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'criar_registro_controller.g.dart';

class CriarRegistroController = CriarRegistroControllerBase
    with _$CriarRegistroController;

abstract class CriarRegistroControllerBase with Store {
  final CriarRegistroRepository repository;
  CriarRegistroControllerBase(this.repository);

  @readonly
  String _isCintoSeguranca = '';
  @readonly
  String _isPedestre = '';
  @readonly
  String _isCondutor = '';
  @readonly
  String _isEmbreagues = '';
  @readonly
  String _sexo = '';

  @readonly
  bool _isCarregando = false;

  final dataNascimentoCondutorEC = TextEditingController();
  final dataHoraBoletimEC = TextEditingController();
  final numEnvolvidosEC = TextEditingController();
  final categoriaHabilitacaoEC = TextEditingController();
  final especieVeiculoEC = TextEditingController();
  final passageiroEC = TextEditingController();
  final idadeEC = TextEditingController();
  final numBoletimEC = TextEditingController();
  final descSeveridadeEC = TextEditingController();

  @action
  Future<void> setCriarRegistro() async {
    try {
      _isCarregando = true;
      await repository.criarRegistro(InicioModel(
        categoriaHabilitacao: categoriaHabilitacaoEC.text,
        cintoSeguranca: _isCintoSeguranca,
        codSeveridade: 0,
        codSeveridadeAntiga: '0',
        condutor: _isCondutor,
        dataHoraBoletim: dataHoraBoletimEC.text,
        declaracaoObito: '0',
        descSeveridade: descSeveridadeEC.text,
        descricaoHabilitacao: 'n',
        embreagues: _isEmbreagues,
        especieVeiculo: especieVeiculoEC.text,
        idade: int.tryParse(idadeEC.text) ?? 0,
        nascimento: dataNascimentoCondutorEC.text,
        noEnvolvido: int.tryParse(numEnvolvidosEC.text) ?? 0,
        numBoletim: numBoletimEC.text,
        passageiro: passageiroEC.text,
        pedestre: _isPedestre,
        sexo: _sexo,
      ));
      _isCarregando = false;
    } catch (e) {
      print(e.toString());
      _isCarregando = false;
      throw Exception('Erro ao cadastrar registro');
    }
  }

  @action
  void checkboxCondutor(value) {
    _isCondutor = value;
  }

  @action
  void checkboxCintoSeguranca(value) {
    _isCintoSeguranca = value;
  }

  @action
  void checkboxPedestre(value) {
    _isPedestre = value;
  }

  @action
  void checkboxEmbreagues(value) {
    _isEmbreagues = value;
  }

  @action
  void checkboxSexo(value) {
    _sexo = value;
  }
}
