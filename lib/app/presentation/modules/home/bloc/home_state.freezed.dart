// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Crypto> cryptos) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Crypto> cryptos)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Crypto> cryptos)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailed value) failed,
    required TResult Function(HomeStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailed value)? failed,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailed value)? failed,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStateLoadingCopyWith<$Res> {
  factory _$$HomeStateLoadingCopyWith(
          _$HomeStateLoading value, $Res Function(_$HomeStateLoading) then) =
      __$$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoading>
    implements _$$HomeStateLoadingCopyWith<$Res> {
  __$$HomeStateLoadingCopyWithImpl(
      _$HomeStateLoading _value, $Res Function(_$HomeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateLoading implements HomeStateLoading {
  _$HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Crypto> cryptos) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Crypto> cryptos)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Crypto> cryptos)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailed value) failed,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailed value)? failed,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailed value)? failed,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  factory HomeStateLoading() = _$HomeStateLoading;
}

/// @nodoc
abstract class _$$HomeStateFailedCopyWith<$Res> {
  factory _$$HomeStateFailedCopyWith(
          _$HomeStateFailed value, $Res Function(_$HomeStateFailed) then) =
      __$$HomeStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateFailedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateFailed>
    implements _$$HomeStateFailedCopyWith<$Res> {
  __$$HomeStateFailedCopyWithImpl(
      _$HomeStateFailed _value, $Res Function(_$HomeStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateFailed implements HomeStateFailed {
  _$HomeStateFailed();

  @override
  String toString() {
    return 'HomeState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Crypto> cryptos) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Crypto> cryptos)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Crypto> cryptos)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailed value) failed,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailed value)? failed,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailed value)? failed,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailed implements HomeState {
  factory HomeStateFailed() = _$HomeStateFailed;
}

/// @nodoc
abstract class _$$HomeStateLoadedCopyWith<$Res> {
  factory _$$HomeStateLoadedCopyWith(
          _$HomeStateLoaded value, $Res Function(_$HomeStateLoaded) then) =
      __$$HomeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Crypto> cryptos});
}

/// @nodoc
class __$$HomeStateLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoaded>
    implements _$$HomeStateLoadedCopyWith<$Res> {
  __$$HomeStateLoadedCopyWithImpl(
      _$HomeStateLoaded _value, $Res Function(_$HomeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptos = null,
  }) {
    return _then(_$HomeStateLoaded(
      null == cryptos
          ? _value._cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as List<Crypto>,
    ));
  }
}

/// @nodoc

class _$HomeStateLoaded implements HomeStateLoaded {
  _$HomeStateLoaded(final List<Crypto> cryptos) : _cryptos = cryptos;

  final List<Crypto> _cryptos;
  @override
  List<Crypto> get cryptos {
    if (_cryptos is EqualUnmodifiableListView) return _cryptos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptos);
  }

  @override
  String toString() {
    return 'HomeState.loaded(cryptos: $cryptos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoaded &&
            const DeepCollectionEquality().equals(other._cryptos, _cryptos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cryptos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateLoadedCopyWith<_$HomeStateLoaded> get copyWith =>
      __$$HomeStateLoadedCopyWithImpl<_$HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Crypto> cryptos) loaded,
  }) {
    return loaded(cryptos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Crypto> cryptos)? loaded,
  }) {
    return loaded?.call(cryptos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Crypto> cryptos)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cryptos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailed value) failed,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailed value)? failed,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailed value)? failed,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  factory HomeStateLoaded(final List<Crypto> cryptos) = _$HomeStateLoaded;

  List<Crypto> get cryptos;
  @JsonKey(ignore: true)
  _$$HomeStateLoadedCopyWith<_$HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
