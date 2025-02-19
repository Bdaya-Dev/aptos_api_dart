// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_module.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteModule extends DeleteModule {
  @override
  final String type;
  @override
  final String stateKeyHash;
  @override
  final String address;
  @override
  final String module;

  factory _$DeleteModule([void Function(DeleteModuleBuilder)? updates]) =>
      (DeleteModuleBuilder()..update(updates))._build();

  _$DeleteModule._(
      {required this.type,
      required this.stateKeyHash,
      required this.address,
      required this.module})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'DeleteModule', 'type');
    BuiltValueNullFieldError.checkNotNull(
        stateKeyHash, 'DeleteModule', 'stateKeyHash');
    BuiltValueNullFieldError.checkNotNull(address, 'DeleteModule', 'address');
    BuiltValueNullFieldError.checkNotNull(module, 'DeleteModule', 'module');
  }

  @override
  DeleteModule rebuild(void Function(DeleteModuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteModuleBuilder toBuilder() => DeleteModuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteModule &&
        type == other.type &&
        stateKeyHash == other.stateKeyHash &&
        address == other.address &&
        module == other.module;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), stateKeyHash.hashCode),
            address.hashCode),
        module.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteModule')
          ..add('type', type)
          ..add('stateKeyHash', stateKeyHash)
          ..add('address', address)
          ..add('module', module))
        .toString();
  }
}

class DeleteModuleBuilder
    implements Builder<DeleteModule, DeleteModuleBuilder> {
  _$DeleteModule? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _stateKeyHash;
  String? get stateKeyHash => _$this._stateKeyHash;
  set stateKeyHash(String? stateKeyHash) => _$this._stateKeyHash = stateKeyHash;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _module;
  String? get module => _$this._module;
  set module(String? module) => _$this._module = module;

  DeleteModuleBuilder() {
    DeleteModule._defaults(this);
  }

  DeleteModuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _stateKeyHash = $v.stateKeyHash;
      _address = $v.address;
      _module = $v.module;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteModule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteModule;
  }

  @override
  void update(void Function(DeleteModuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteModule build() => _build();

  _$DeleteModule _build() {
    final _$result = _$v ??
        _$DeleteModule._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'DeleteModule', 'type'),
            stateKeyHash: BuiltValueNullFieldError.checkNotNull(
                stateKeyHash, 'DeleteModule', 'stateKeyHash'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'DeleteModule', 'address'),
            module: BuiltValueNullFieldError.checkNotNull(
                module, 'DeleteModule', 'module'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
