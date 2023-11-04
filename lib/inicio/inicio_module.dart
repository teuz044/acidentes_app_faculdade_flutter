import 'package:acidentes_app/inicio/inicio_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InicioModule extends Module {
   @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const InicioPage());
  }
}