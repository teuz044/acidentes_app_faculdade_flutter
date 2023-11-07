// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inicio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InicioController on InicioControllerBase, Store {
  late final _$_carregandoAtom =
      Atom(name: 'InicioControllerBase._carregando', context: context);

  bool get carregando {
    _$_carregandoAtom.reportRead();
    return super._carregando;
  }

  @override
  bool get _carregando => carregando;

  @override
  set _carregando(bool value) {
    _$_carregandoAtom.reportWrite(value, super._carregando, () {
      super._carregando = value;
    });
  }

  late final _$getAcidentesPorIdAsyncAction =
      AsyncAction('InicioControllerBase.getAcidentesPorId', context: context);

  @override
  Future<void> getAcidentesPorId() {
    return _$getAcidentesPorIdAsyncAction.run(() => super.getAcidentesPorId());
  }

  late final _$getUltimosAcidentesAsyncAction =
      AsyncAction('InicioControllerBase.getUltimosAcidentes', context: context);

  @override
  Future<void> getUltimosAcidentes() {
    return _$getUltimosAcidentesAsyncAction
        .run(() => super.getUltimosAcidentes());
  }

  late final _$InicioControllerBaseActionController =
      ActionController(name: 'InicioControllerBase', context: context);

  @override
  void selecionarAcidentes(int index) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.selecionarAcidentes');
    try {
      return super.selecionarAcidentes(index);
    } finally {
      _$InicioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
