import 'package:acidentes_app/criar_registro_acidente/criar_registro_acidente_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CriarRegistroAcidenteModule extends Module{
  @override
  void binds(i) {
    // i.addLazySingleton(InicioController.new);
    // i.addLazySingleton(InicioRepository.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CriarRegistroAcidentePage());
  }
}
