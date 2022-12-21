// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moneda_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonedaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMonedaEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMonedaEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMonedaEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMonedaEvent value) loadMonedaEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMonedaEvent value)? loadMonedaEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMonedaEvent value)? loadMonedaEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonedaEventCopyWith<$Res> {
  factory $MonedaEventCopyWith(
          MonedaEvent value, $Res Function(MonedaEvent) then) =
      _$MonedaEventCopyWithImpl<$Res, MonedaEvent>;
}

/// @nodoc
class _$MonedaEventCopyWithImpl<$Res, $Val extends MonedaEvent>
    implements $MonedaEventCopyWith<$Res> {
  _$MonedaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMonedaEventCopyWith<$Res> {
  factory _$$LoadMonedaEventCopyWith(
          _$LoadMonedaEvent value, $Res Function(_$LoadMonedaEvent) then) =
      __$$LoadMonedaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMonedaEventCopyWithImpl<$Res>
    extends _$MonedaEventCopyWithImpl<$Res, _$LoadMonedaEvent>
    implements _$$LoadMonedaEventCopyWith<$Res> {
  __$$LoadMonedaEventCopyWithImpl(
      _$LoadMonedaEvent _value, $Res Function(_$LoadMonedaEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMonedaEvent implements LoadMonedaEvent {
  const _$LoadMonedaEvent();

  @override
  String toString() {
    return 'MonedaEvent.loadMonedaEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMonedaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMonedaEvent,
  }) {
    return loadMonedaEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMonedaEvent,
  }) {
    return loadMonedaEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMonedaEvent,
    required TResult orElse(),
  }) {
    if (loadMonedaEvent != null) {
      return loadMonedaEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMonedaEvent value) loadMonedaEvent,
  }) {
    return loadMonedaEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMonedaEvent value)? loadMonedaEvent,
  }) {
    return loadMonedaEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMonedaEvent value)? loadMonedaEvent,
    required TResult orElse(),
  }) {
    if (loadMonedaEvent != null) {
      return loadMonedaEvent(this);
    }
    return orElse();
  }
}

abstract class LoadMonedaEvent implements MonedaEvent {
  const factory LoadMonedaEvent() = _$LoadMonedaEvent;
}

/// @nodoc
mixin _$MonedaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monedaLoadingState,
    required TResult Function(List<Moneda> monedas) monedaLoadedState,
    required TResult Function(String error) monedaErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? monedaLoadingState,
    TResult? Function(List<Moneda> monedas)? monedaLoadedState,
    TResult? Function(String error)? monedaErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monedaLoadingState,
    TResult Function(List<Moneda> monedas)? monedaLoadedState,
    TResult Function(String error)? monedaErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonedaLoadingState value) monedaLoadingState,
    required TResult Function(MonedaLoadedState value) monedaLoadedState,
    required TResult Function(MonedaErrorState value) monedaErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonedaLoadingState value)? monedaLoadingState,
    TResult? Function(MonedaLoadedState value)? monedaLoadedState,
    TResult? Function(MonedaErrorState value)? monedaErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonedaLoadingState value)? monedaLoadingState,
    TResult Function(MonedaLoadedState value)? monedaLoadedState,
    TResult Function(MonedaErrorState value)? monedaErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonedaStateCopyWith<$Res> {
  factory $MonedaStateCopyWith(
          MonedaState value, $Res Function(MonedaState) then) =
      _$MonedaStateCopyWithImpl<$Res, MonedaState>;
}

/// @nodoc
class _$MonedaStateCopyWithImpl<$Res, $Val extends MonedaState>
    implements $MonedaStateCopyWith<$Res> {
  _$MonedaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MonedaLoadingStateCopyWith<$Res> {
  factory _$$MonedaLoadingStateCopyWith(_$MonedaLoadingState value,
          $Res Function(_$MonedaLoadingState) then) =
      __$$MonedaLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonedaLoadingStateCopyWithImpl<$Res>
    extends _$MonedaStateCopyWithImpl<$Res, _$MonedaLoadingState>
    implements _$$MonedaLoadingStateCopyWith<$Res> {
  __$$MonedaLoadingStateCopyWithImpl(
      _$MonedaLoadingState _value, $Res Function(_$MonedaLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonedaLoadingState implements MonedaLoadingState {
  const _$MonedaLoadingState();

  @override
  String toString() {
    return 'MonedaState.monedaLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MonedaLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monedaLoadingState,
    required TResult Function(List<Moneda> monedas) monedaLoadedState,
    required TResult Function(String error) monedaErrorState,
  }) {
    return monedaLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? monedaLoadingState,
    TResult? Function(List<Moneda> monedas)? monedaLoadedState,
    TResult? Function(String error)? monedaErrorState,
  }) {
    return monedaLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monedaLoadingState,
    TResult Function(List<Moneda> monedas)? monedaLoadedState,
    TResult Function(String error)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaLoadingState != null) {
      return monedaLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonedaLoadingState value) monedaLoadingState,
    required TResult Function(MonedaLoadedState value) monedaLoadedState,
    required TResult Function(MonedaErrorState value) monedaErrorState,
  }) {
    return monedaLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonedaLoadingState value)? monedaLoadingState,
    TResult? Function(MonedaLoadedState value)? monedaLoadedState,
    TResult? Function(MonedaErrorState value)? monedaErrorState,
  }) {
    return monedaLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonedaLoadingState value)? monedaLoadingState,
    TResult Function(MonedaLoadedState value)? monedaLoadedState,
    TResult Function(MonedaErrorState value)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaLoadingState != null) {
      return monedaLoadingState(this);
    }
    return orElse();
  }
}

abstract class MonedaLoadingState implements MonedaState {
  const factory MonedaLoadingState() = _$MonedaLoadingState;
}

/// @nodoc
abstract class _$$MonedaLoadedStateCopyWith<$Res> {
  factory _$$MonedaLoadedStateCopyWith(
          _$MonedaLoadedState value, $Res Function(_$MonedaLoadedState) then) =
      __$$MonedaLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Moneda> monedas});
}

/// @nodoc
class __$$MonedaLoadedStateCopyWithImpl<$Res>
    extends _$MonedaStateCopyWithImpl<$Res, _$MonedaLoadedState>
    implements _$$MonedaLoadedStateCopyWith<$Res> {
  __$$MonedaLoadedStateCopyWithImpl(
      _$MonedaLoadedState _value, $Res Function(_$MonedaLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monedas = null,
  }) {
    return _then(_$MonedaLoadedState(
      null == monedas
          ? _value._monedas
          : monedas // ignore: cast_nullable_to_non_nullable
              as List<Moneda>,
    ));
  }
}

/// @nodoc

class _$MonedaLoadedState implements MonedaLoadedState {
  const _$MonedaLoadedState(final List<Moneda> monedas) : _monedas = monedas;

  final List<Moneda> _monedas;
  @override
  List<Moneda> get monedas {
    if (_monedas is EqualUnmodifiableListView) return _monedas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monedas);
  }

  @override
  String toString() {
    return 'MonedaState.monedaLoadedState(monedas: $monedas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonedaLoadedState &&
            const DeepCollectionEquality().equals(other._monedas, _monedas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_monedas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonedaLoadedStateCopyWith<_$MonedaLoadedState> get copyWith =>
      __$$MonedaLoadedStateCopyWithImpl<_$MonedaLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monedaLoadingState,
    required TResult Function(List<Moneda> monedas) monedaLoadedState,
    required TResult Function(String error) monedaErrorState,
  }) {
    return monedaLoadedState(monedas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? monedaLoadingState,
    TResult? Function(List<Moneda> monedas)? monedaLoadedState,
    TResult? Function(String error)? monedaErrorState,
  }) {
    return monedaLoadedState?.call(monedas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monedaLoadingState,
    TResult Function(List<Moneda> monedas)? monedaLoadedState,
    TResult Function(String error)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaLoadedState != null) {
      return monedaLoadedState(monedas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonedaLoadingState value) monedaLoadingState,
    required TResult Function(MonedaLoadedState value) monedaLoadedState,
    required TResult Function(MonedaErrorState value) monedaErrorState,
  }) {
    return monedaLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonedaLoadingState value)? monedaLoadingState,
    TResult? Function(MonedaLoadedState value)? monedaLoadedState,
    TResult? Function(MonedaErrorState value)? monedaErrorState,
  }) {
    return monedaLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonedaLoadingState value)? monedaLoadingState,
    TResult Function(MonedaLoadedState value)? monedaLoadedState,
    TResult Function(MonedaErrorState value)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaLoadedState != null) {
      return monedaLoadedState(this);
    }
    return orElse();
  }
}

abstract class MonedaLoadedState implements MonedaState {
  const factory MonedaLoadedState(final List<Moneda> monedas) =
      _$MonedaLoadedState;

  List<Moneda> get monedas;
  @JsonKey(ignore: true)
  _$$MonedaLoadedStateCopyWith<_$MonedaLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonedaErrorStateCopyWith<$Res> {
  factory _$$MonedaErrorStateCopyWith(
          _$MonedaErrorState value, $Res Function(_$MonedaErrorState) then) =
      __$$MonedaErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MonedaErrorStateCopyWithImpl<$Res>
    extends _$MonedaStateCopyWithImpl<$Res, _$MonedaErrorState>
    implements _$$MonedaErrorStateCopyWith<$Res> {
  __$$MonedaErrorStateCopyWithImpl(
      _$MonedaErrorState _value, $Res Function(_$MonedaErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MonedaErrorState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MonedaErrorState implements MonedaErrorState {
  const _$MonedaErrorState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MonedaState.monedaErrorState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonedaErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonedaErrorStateCopyWith<_$MonedaErrorState> get copyWith =>
      __$$MonedaErrorStateCopyWithImpl<_$MonedaErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monedaLoadingState,
    required TResult Function(List<Moneda> monedas) monedaLoadedState,
    required TResult Function(String error) monedaErrorState,
  }) {
    return monedaErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? monedaLoadingState,
    TResult? Function(List<Moneda> monedas)? monedaLoadedState,
    TResult? Function(String error)? monedaErrorState,
  }) {
    return monedaErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monedaLoadingState,
    TResult Function(List<Moneda> monedas)? monedaLoadedState,
    TResult Function(String error)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaErrorState != null) {
      return monedaErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonedaLoadingState value) monedaLoadingState,
    required TResult Function(MonedaLoadedState value) monedaLoadedState,
    required TResult Function(MonedaErrorState value) monedaErrorState,
  }) {
    return monedaErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonedaLoadingState value)? monedaLoadingState,
    TResult? Function(MonedaLoadedState value)? monedaLoadedState,
    TResult? Function(MonedaErrorState value)? monedaErrorState,
  }) {
    return monedaErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonedaLoadingState value)? monedaLoadingState,
    TResult Function(MonedaLoadedState value)? monedaLoadedState,
    TResult Function(MonedaErrorState value)? monedaErrorState,
    required TResult orElse(),
  }) {
    if (monedaErrorState != null) {
      return monedaErrorState(this);
    }
    return orElse();
  }
}

abstract class MonedaErrorState implements MonedaState {
  const factory MonedaErrorState(final String error) = _$MonedaErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$MonedaErrorStateCopyWith<_$MonedaErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
