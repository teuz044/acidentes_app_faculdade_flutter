// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InicioModel {
  String? numBoletim;
  String? dataHoraBoletim;
  int? noEnvolvido;
  String? condutor;
  int? codSeveridade;
  String? descSeveridade;
  String? sexo;
  String? cintoSeguranca;
  String? embreagues;
  int? idade;
  String? nascimento;
  String? categoriaHabilitacao;
  String? descricaoHabilitacao;
  String? declaracaoObito;
  String? codSeveridadeAntiga;
  String? especieVeiculo;
  String? pedestre;
  String? passageiro;
  InicioModel({
    this.numBoletim,
    this.dataHoraBoletim,
    this.noEnvolvido,
    this.condutor,
    this.codSeveridade,
    this.descSeveridade,
    this.sexo,
    this.cintoSeguranca,
    this.embreagues,
    this.idade,
    this.nascimento,
    this.categoriaHabilitacao,
    this.descricaoHabilitacao,
    this.declaracaoObito,
    this.codSeveridadeAntiga,
    this.especieVeiculo,
    this.pedestre,
    this.passageiro,
  });

  InicioModel copyWith({
    String? numBoletim,
    String? dataHoraBoletim,
    int? noEnvolvido,
    String? condutor,
    int? codSeveridade,
    String? descSeveridade,
    String? sexo,
    String? cintoSeguranca,
    String? embreagues,
    int? idade,
    String? nascimento,
    String? categoriaHabilitacao,
    String? descricaoHabilitacao,
    String? declaracaoObito,
    String? codSeveridadeAntiga,
    String? especieVeiculo,
    String? pedestre,
    String? passageiro,
  }) {
    return InicioModel(
      numBoletim: numBoletim ?? this.numBoletim,
      dataHoraBoletim: dataHoraBoletim ?? this.dataHoraBoletim,
      noEnvolvido: noEnvolvido ?? this.noEnvolvido,
      condutor: condutor ?? this.condutor,
      codSeveridade: codSeveridade ?? this.codSeveridade,
      descSeveridade: descSeveridade ?? this.descSeveridade,
      sexo: sexo ?? this.sexo,
      cintoSeguranca: cintoSeguranca ?? this.cintoSeguranca,
      embreagues: embreagues ?? this.embreagues,
      idade: idade ?? this.idade,
      nascimento: nascimento ?? this.nascimento,
      categoriaHabilitacao: categoriaHabilitacao ?? this.categoriaHabilitacao,
      descricaoHabilitacao: descricaoHabilitacao ?? this.descricaoHabilitacao,
      declaracaoObito: declaracaoObito ?? this.declaracaoObito,
      codSeveridadeAntiga: codSeveridadeAntiga ?? this.codSeveridadeAntiga,
      especieVeiculo: especieVeiculo ?? this.especieVeiculo,
      pedestre: pedestre ?? this.pedestre,
      passageiro: passageiro ?? this.passageiro,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numBoletim': numBoletim,
      'dataHoraBoletim': dataHoraBoletim,
      'noEnvolvido': noEnvolvido,
      'condutor': condutor,
      'codSeveridade': codSeveridade,
      'descSeveridade': descSeveridade,
      'sexo': sexo,
      'cintoSeguranca': cintoSeguranca,
      'embreagues': embreagues,
      'idade': idade,
      'nascimento': nascimento,
      'categoriaHabilitacao': categoriaHabilitacao,
      'descricaoHabilitacao': descricaoHabilitacao,
      'declaracaoObito': declaracaoObito,
      'codSeveridadeAntiga': codSeveridadeAntiga,
      'especieVeiculo': especieVeiculo,
      'pedestre': pedestre,
      'passageiro': passageiro,
    };
  }

  factory InicioModel.fromMap(Map<String, dynamic> map) {
    return InicioModel(
      numBoletim: map['num_boletim'] != null ? map['num_boletim'] as String : 'null',
      dataHoraBoletim: map['data_hora_boletim'] != null ? map['data_hora_boletim'] as String : 'null',
      noEnvolvido: map['No_envolvido'] != null ? map['No_envolvido'] as int : 0,
      condutor: map['condutor'] != null ? map['condutor'] as String : 'null',
      codSeveridade: map['cod_severidade'] != null ? map['cod_severidade'] as int : 0,
      descSeveridade: map['desc_severidade'] != null ? map['desc_severidade'] as String : 'null',
      sexo: map['sexo'] != null ? map['sexo'] as String : null,
      cintoSeguranca: map['cinto_seguranca'] != null ? map['cinto_seguranca'] as String : 'null',
      embreagues: map['Embreagues'] != null ? map['Embreagues'] as String : 'null',
      idade: map['idade'] != null ? map['idade'] as int : null,
      nascimento: map['nascimento'] != null ? map['nascimento'] as String : 'null',
      categoriaHabilitacao: map['categoria_habilitacao'] != null ? map['categoria_habilitacao'] as String : 'null',
      descricaoHabilitacao: map['descricao_habilitacao'] != null ? map['descricao_habilitacao'] as String : 'null',
      declaracaoObito: map['declaracao_obito'] != null ? map['declaracao_obito'] as String : 'null',
      codSeveridadeAntiga: map['cod_severidade_antiga'] != null ? map['cod_severidade_antiga'] as String : '',
      especieVeiculo: map['especie_veiculo'] != null ? map['especie_veiculo'] as String : '',
      pedestre: map['pedestre'] != null ? map['pedestre'] as String : '',
      passageiro: map['passageiro'] != null ? map['passageiro'] as String : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory InicioModel.fromJson(String source) => InicioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'InicioModel(numBoletim: $numBoletim, dataHoraBoletim: $dataHoraBoletim, noEnvolvido: $noEnvolvido, condutor: $condutor, codSeveridade: $codSeveridade, descSeveridade: $descSeveridade, sexo: $sexo, cintoSeguranca: $cintoSeguranca, embreagues: $embreagues, idade: $idade, nascimento: $nascimento, categoriaHabilitacao: $categoriaHabilitacao, descricaoHabilitacao: $descricaoHabilitacao, declaracaoObito: $declaracaoObito, codSeveridadeAntiga: $codSeveridadeAntiga, especieVeiculo: $especieVeiculo, pedestre: $pedestre, passageiro: $passageiro)';
  }

  @override
  bool operator ==(covariant InicioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.numBoletim == numBoletim &&
      other.dataHoraBoletim == dataHoraBoletim &&
      other.noEnvolvido == noEnvolvido &&
      other.condutor == condutor &&
      other.codSeveridade == codSeveridade &&
      other.descSeveridade == descSeveridade &&
      other.sexo == sexo &&
      other.cintoSeguranca == cintoSeguranca &&
      other.embreagues == embreagues &&
      other.idade == idade &&
      other.nascimento == nascimento &&
      other.categoriaHabilitacao == categoriaHabilitacao &&
      other.descricaoHabilitacao == descricaoHabilitacao &&
      other.declaracaoObito == declaracaoObito &&
      other.codSeveridadeAntiga == codSeveridadeAntiga &&
      other.especieVeiculo == especieVeiculo &&
      other.pedestre == pedestre &&
      other.passageiro == passageiro;
  }

  @override
  int get hashCode {
    return numBoletim.hashCode ^
      dataHoraBoletim.hashCode ^
      noEnvolvido.hashCode ^
      condutor.hashCode ^
      codSeveridade.hashCode ^
      descSeveridade.hashCode ^
      sexo.hashCode ^
      cintoSeguranca.hashCode ^
      embreagues.hashCode ^
      idade.hashCode ^
      nascimento.hashCode ^
      categoriaHabilitacao.hashCode ^
      descricaoHabilitacao.hashCode ^
      declaracaoObito.hashCode ^
      codSeveridadeAntiga.hashCode ^
      especieVeiculo.hashCode ^
      pedestre.hashCode ^
      passageiro.hashCode;
  }
}
