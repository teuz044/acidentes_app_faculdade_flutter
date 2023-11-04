import 'package:acidentes_app/inicio/inicio_controller.dart';
import 'package:acidentes_app/inicio/inicio_module.dart';
import 'package:acidentes_app/inicio/inicio_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_page.dart';
class LoginModule extends Module {
   @override
  void binds(i) {
    i.addLazySingleton(InicioController.new);
    i.addLazySingleton(InicioRepository.new);
  }

  @override
  void routes(r) {
    // r.child('/', child: (context) => const SplashPage());
    r.child('/', child: (context) => const LoginPage());
    r.module('/inicio', module: InicioModule());
  }
}