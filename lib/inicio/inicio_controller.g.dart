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

  late final _$_isCintoSegurancaAtom =
      Atom(name: 'InicioControllerBase._isCintoSeguranca', context: context);

  String get isCintoSeguranca {
    _$_isCintoSegurancaAtom.reportRead();
    return super._isCintoSeguranca;
  }

  @override
  String get _isCintoSeguranca => isCintoSeguranca;

  @override
  set _isCintoSeguranca(String value) {
    _$_isCintoSegurancaAtom.reportWrite(value, super._isCintoSeguranca, () {
      super._isCintoSeguranca = value;
    });
  }

  late final _$_isPedestreAtom =
      Atom(name: 'InicioControllerBase._isPedestre', context: context);

  String get isPedestre {
    _$_isPedestreAtom.reportRead();
    return super._isPedestre;
  }

  @override
  String get _isPedestre => isPedestre;

  @override
  set _isPedestre(String value) {
    _$_isPedestreAtom.reportWrite(value, super._isPedestre, () {
      super._isPedestre = value;
    });
  }

  late final _$_isCondutorAtom =
      Atom(name: 'InicioControllerBase._isCondutor', context: context);

  String get isCondutor {
    _$_isCondutorAtom.reportRead();
    return super._isCondutor;
  }

  @override
  String get _isCondutor => isCondutor;

  @override
  set _isCondutor(String value) {
    _$_isCondutorAtom.reportWrite(value, super._isCondutor, () {
      super._isCondutor = value;
    });
  }

  late final _$_isEmbreaguesAtom =
      Atom(name: 'InicioControllerBase._isEmbreagues', context: context);

  String get isEmbreagues {
    _$_isEmbreaguesAtom.reportRead();
    return super._isEmbreagues;
  }

  @override
  String get _isEmbreagues => isEmbreagues;

  @override
  set _isEmbreagues(String value) {
    _$_isEmbreaguesAtom.reportWrite(value, super._isEmbreagues, () {
      super._isEmbreagues = value;
    });
  }

  late final _$_sexoAtom =
      Atom(name: 'InicioControllerBase._sexo', context: context);

  String get sexo {
    _$_sexoAtom.reportRead();
    return super._sexo;
  }

  @override
  String get _sexo => sexo;

  @override
  set _sexo(String value) {
    _$_sexoAtom.reportWrite(value, super._sexo, () {
      super._sexo = value;
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

  late final _$putAtualizarRegistroAsyncAction = AsyncAction(
      'InicioControllerBase.putAtualizarRegistro',
      context: context);

  @override
  Future<void> putAtualizarRegistro() {
    return _$putAtualizarRegistroAsyncAction
        .run(() => super.putAtualizarRegistro());
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
  void checkboxCondutor(dynamic value) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.checkboxCondutor');
    try {
      return super.checkboxCondutor(value);
    } finally {
      _$InicioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkboxCintoSeguranca(dynamic value) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.checkboxCintoSeguranca');
    try {
      return super.checkboxCintoSeguranca(value);
    } finally {
      _$InicioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkboxPedestre(dynamic value) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.checkboxPedestre');
    try {
      return super.checkboxPedestre(value);
    } finally {
      _$InicioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkboxEmbreagues(dynamic value) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.checkboxEmbreagues');
    try {
      return super.checkboxEmbreagues(value);
    } finally {
      _$InicioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkboxSexo(dynamic value) {
    final _$actionInfo = _$InicioControllerBaseActionController.startAction(
        name: 'InicioControllerBase.checkboxSexo');
    try {
      return super.checkboxSexo(value);
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
