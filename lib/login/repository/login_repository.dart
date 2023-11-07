import 'package:dio/dio.dart';

class LoginRepository {
  final dio = Dio();

  Future<Map<String, dynamic>?> login(String username, String senha) async {
    try {
      final response = await dio.post(
        'http://192.168.1.23:8000/api/auth/login/',
        data: {
          'username': username,
          'password': senha,
        },
      );

      if (response.statusCode == 200) {
        // Login bem-sucedido, extrair o token e o usuárioModel da resposta.
        final Map<String, dynamic> data = response.data;
        final String? token = data['access'];
        final String? usuarioID = data['user_id'].toString();
        final String? usuarioNome = data['user_name'];
        final String? refresh = data['refresh'];

        if (token != null && usuarioID != null) {
          //  final authProvider = Provider.of<AuthProvider>(context, listen: false);
          // authProvider.setUsuarioModel(usuarioModel);
          return {
            'user_id': usuarioID,
            'user_name': usuarioNome,
            'refresh': refresh,
            'access': token,
          };
        }
      } else if (response.statusCode == 400) {
        return null; // Retorne null em caso de erro
      }
    } catch (e) {
        print(e.toString());
      return null; // Retorne null em caso de exceção
    }
  }
}
