import 'package:acidentes_app/criar_registro_acidente/criar_registro_acidente_page.dart';
import 'package:acidentes_app/inicio/inicio_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/criar_registro_controller.dart';
import 'repository/criar_registro_repository.dart';

class CriarRegistroAcidenteModule extends Module{
  @override
  void binds(i) {
    i.addLazySingleton(CriarRegistroController.new);
    i.addLazySingleton(CriarRegistroRepository.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CriarRegistroAcidentePage());
    r.child('/inico', child: (context) =>  const InicioPage());

  }
}
