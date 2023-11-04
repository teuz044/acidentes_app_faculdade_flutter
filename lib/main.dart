import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login/login_module.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
      r.module('/', module: LoginModule());
  }
} 

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: Modular.routerConfig,
    ); //added by extension 
  }
}



