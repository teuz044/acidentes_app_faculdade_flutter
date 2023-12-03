import 'package:acidentes_app/inicio/models/registro_model.dart';
import 'package:dio/dio.dart';

class InicioRepository {
  final dio = Dio();

  Future<List<InicioModel>> getAcidentesPorId(String numBoletim) async {
    try {
      final response = await dio
          .get('http://192.168.1.23:8000/core/acidentes/${numBoletim}');

      return (response.data as List)
          .map((e) => InicioModel.fromMap(e))
          .toList();
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }

  Future<List<InicioModel>> getUltimosAcidentes() async {
    try {
      final response =
          await dio.get('http://192.168.1.23:8000/core/acidentes/ultimos');

      return (response.data as List)
          .map((e) => InicioModel.fromMap(e))
          .toList();
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }

  Future<Map<String, dynamic>?> login(String username, String senha) async {
    try {
      final response = await dio.post(
        'http://192.168.1.23:8000/api/auth/login',
        data: {
          'username': username,
          'password': senha,
        },
      );

      if (response.statusCode == 200) {
        // Login bem-sucedido, extrair o token e o usuárioModel da resposta.
        final Map<String, dynamic> data = response.data;
        final String? token = data['access'];
        final String? usuarioID = data['user_id'];
        final String? usuarioNome = data['user_name'];
        final String? refresh = data['refresh'];

        if (token != null &&  usuarioID != null) {
          //  final authProvider = Provider.of<AuthProvider>(context, listen: false);
          // authProvider.setUsuarioModel(usuarioModel);
          return {
            'token': token,
            'user_id': usuarioID,
            'user_name': usuarioNome,
            'refresh': refresh,
          };
        }
      } else if (response.statusCode == 400) {
        return null; // Retorne null em caso de erro
      }
    } catch (e) {
      return null; // Retorne null em caso de exceção
    }
  }


  Future<void> atualizarRegistro(InicioModel model) async {
    try {
      final response = await dio.put(
        'http://192.168.1.23:8000/core/acidentes/editar/${model.numBoletim}/',
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
      throw Exception('Erro ao atualizar registro');
    }
  }

    Future<void> excluirAcidentePorId(String numBoletim) async {
    try {
      await dio.delete('http://192.168.1.23:8000/core/acidentes/excluir/$numBoletim/');
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao excluir registro');
    }
  }

}
