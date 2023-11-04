import 'package:acidentes_app/inicio/inicio_model.dart';
import 'package:dio/dio.dart';

class InicioRepository {
  final dio = Dio();

  Future<List<InicioModel>> getAcidentesPorId(String numBoletim) async {
    try {
      final response = await dio.get('http://192.168.1.23:8000/core/acidentes/${numBoletim}');

      return (response.data as List)
          .map((e) => InicioModel.fromMap(e))
          .toList();
    } catch (e) {print(e.toString());
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }

   Future<List<InicioModel>> getUltimosAcidentes() async {
    try {
      final response = await dio.get('http://192.168.1.23:8000/core/acidentes/ultimos');

      return (response.data as List)
          .map((e) => InicioModel.fromMap(e))
          .toList();
    } catch (e) {print(e.toString());
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }
}
