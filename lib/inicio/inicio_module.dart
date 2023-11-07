import 'package:acidentes_app/criar_registro_acidente/criar_registro_acidente_module.dart';
import 'package:acidentes_app/inicio/inicio_page.dart';
import 'package:acidentes_app/login/login_module.dart';
import 'package:acidentes_app/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'inicio_controller.dart';
import 'inicio_repository.dart';

class InicioModule extends Module {
   @override
  void binds(i) {
    i.addLazySingleton(InicioController.new);
    i.addLazySingleton(InicioRepository.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const InicioPage());
    r.child('/login', child: (context) => const LoginPage());
    r.module('/criar_registro', module: CriarRegistroAcidenteModule());
  }
}