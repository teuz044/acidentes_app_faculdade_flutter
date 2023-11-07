import 'package:acidentes_app/login/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginRepository _loginRepository;
  LoginControllerBase(this._loginRepository);

  final usernameEC = TextEditingController();
  final senhaEC = TextEditingController();

  @readonly
  String _errorMessage = '';

  @readonly
  bool _carregando = false;

  @action
  Future<bool> login() async {
    try {
      final Map<String, dynamic>? loginData =
          await _loginRepository.login(usernameEC.text, senhaEC.text);
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? token = loginData?['access'];
      print(token);
      _carregando = true;
      if (token == null || token == '') {
        _carregando = false;
        _errorMessage = 'Login não autorizado';
        return false;
      } else {
        // await prefs.setString('token', token);
        _carregando = false;
        return true;
      }
    } catch (e) {
      print(e.toString());
      _carregando = false;
      throw Exception('Erro ao buscar anuncios');
    }
  }
}
