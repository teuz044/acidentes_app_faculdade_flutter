import 'package:acidentes_app/inicio/models/registro_model.dart';
import 'package:dio/dio.dart';

class CriarRegistroRepository {
  Dio dio = Dio();

  Future<void> criarRegistro(InicioModel model) async {
    try {
      final response = await dio.post(
        'http://192.168.1.23:8000/core/acidentes/criar_acidente',
        data: {
          'num_boletim': model.numBoletim,
          'data_hora_boletim': model.dataHoraBoletim,
          'No_envolvido': model.noEnvolvido,
          'condutor': model.condutor,
          'cod_severidade': model.codSeveridade,
          'desc_severidade': model.descSeveridade,
          'sexo': model.sexo,
          'cinto_seguranca': model.cintoSeguranca,
          'Embreagues': model.embreagues,
          'Idade': model.idade,
          'nascimento': model.nascimento,
          'categoria_habilitacao': model.categoriaHabilitacao,
          'descricao_habilitacao': model.descSeveridade,
          'declaracao_obito': model.declaracaoObito,
          'cod_severidade_antiga': model.codSeveridadeAntiga,
          'especie_veiculo': model.especieVeiculo,
          'pedestre': model.pedestre,
          'passageiro': model.passageiro,
        },
      );
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao cadastrar registro');
    }
  }
}
