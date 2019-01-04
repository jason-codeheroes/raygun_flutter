// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raygun_dtos.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<RaygunRequestDto> _$raygunRequestDtoSerializer =
    new _$RaygunRequestDtoSerializer();
Serializer<DetailsDto> _$detailsDtoSerializer = new _$DetailsDtoSerializer();
Serializer<ClientDto> _$clientDtoSerializer = new _$ClientDtoSerializer();
Serializer<ErrorDto> _$errorDtoSerializer = new _$ErrorDtoSerializer();
Serializer<StacktraceDto> _$stacktraceDtoSerializer =
    new _$StacktraceDtoSerializer();
Serializer<EnvironmentDto> _$environmentDtoSerializer =
    new _$EnvironmentDtoSerializer();
Serializer<RequestDto> _$requestDtoSerializer = new _$RequestDtoSerializer();
Serializer<ResponseDto> _$responseDtoSerializer = new _$ResponseDtoSerializer();
Serializer<UserDto> _$userDtoSerializer = new _$UserDtoSerializer();
Serializer<BreadcrumbsDto> _$breadcrumbsDtoSerializer =
    new _$BreadcrumbsDtoSerializer();

class _$RaygunRequestDtoSerializer
    implements StructuredSerializer<RaygunRequestDto> {
  @override
  final Iterable<Type> types = const [RaygunRequestDto, _$RaygunRequestDto];
  @override
  final String wireName = 'RaygunRequestDto';

  @override
  Iterable serialize(Serializers serializers, RaygunRequestDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'OccuredOn',
      serializers.serialize(object.OccuredOn,
          specifiedType: const FullType(DateTime)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(DetailsDto)),
    ];

    return result;
  }

  @override
  RaygunRequestDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RaygunRequestDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'OccuredOn':
          result.OccuredOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(DetailsDto)) as DetailsDto);
          break;
      }
    }

    return result.build();
  }
}

class _$DetailsDtoSerializer implements StructuredSerializer<DetailsDto> {
  @override
  final Iterable<Type> types = const [DetailsDto, _$DetailsDto];
  @override
  final String wireName = 'DetailsDto';

  @override
  Iterable serialize(Serializers serializers, DetailsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'machineName',
      serializers.serialize(object.machineName,
          specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'groupingKey',
      serializers.serialize(object.groupingKey,
          specifiedType: const FullType(String)),
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(ClientDto)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(ErrorDto)),
    ];

    return result;
  }

  @override
  DetailsDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'machineName':
          result.machineName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groupingKey':
          result.groupingKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client':
          result.client.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClientDto)) as ClientDto);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(ErrorDto)) as ErrorDto);
          break;
      }
    }

    return result.build();
  }
}

class _$ClientDtoSerializer implements StructuredSerializer<ClientDto> {
  @override
  final Iterable<Type> types = const [ClientDto, _$ClientDto];
  @override
  final String wireName = 'ClientDto';

  @override
  Iterable serialize(Serializers serializers, ClientDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    if (object.clientUrl != null) {
      result
        ..add('clientUrl')
        ..add(serializers.serialize(object.clientUrl,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ClientDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientUrl':
          result.clientUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorDtoSerializer implements StructuredSerializer<ErrorDto> {
  @override
  final Iterable<Type> types = const [ErrorDto, _$ErrorDto];
  @override
  final String wireName = 'ErrorDto';

  @override
  Iterable serialize(Serializers serializers, ErrorDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.innerError != null) {
      result
        ..add('innerError')
        ..add(serializers.serialize(object.innerError,
            specifiedType: const FullType(String)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.className != null) {
      result
        ..add('className')
        ..add(serializers.serialize(object.className,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.stackTrace != null) {
      result
        ..add('stackTrace')
        ..add(serializers.serialize(object.stackTrace,
            specifiedType: const FullType(StacktraceDto)));
    }

    return result;
  }

  @override
  ErrorDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'innerError':
          result.innerError = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'className':
          result.className = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stackTrace':
          result.stackTrace.replace(serializers.deserialize(value,
              specifiedType: const FullType(StacktraceDto)) as StacktraceDto);
          break;
      }
    }

    return result.build();
  }
}

class _$StacktraceDtoSerializer implements StructuredSerializer<StacktraceDto> {
  @override
  final Iterable<Type> types = const [StacktraceDto, _$StacktraceDto];
  @override
  final String wireName = 'StacktraceDto';

  @override
  Iterable serialize(Serializers serializers, StacktraceDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.lineNumber != null) {
      result
        ..add('lineNumber')
        ..add(serializers.serialize(object.lineNumber,
            specifiedType: const FullType(int)));
    }
    if (object.columnNumber != null) {
      result
        ..add('columnNumber')
        ..add(serializers.serialize(object.columnNumber,
            specifiedType: const FullType(int)));
    }
    if (object.className != null) {
      result
        ..add('className')
        ..add(serializers.serialize(object.className,
            specifiedType: const FullType(String)));
    }
    if (object.fileName != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(object.fileName,
            specifiedType: const FullType(String)));
    }
    if (object.methodName != null) {
      result
        ..add('methodName')
        ..add(serializers.serialize(object.methodName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StacktraceDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StacktraceDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lineNumber':
          result.lineNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'columnNumber':
          result.columnNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'className':
          result.className = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'methodName':
          result.methodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EnvironmentDtoSerializer
    implements StructuredSerializer<EnvironmentDto> {
  @override
  final Iterable<Type> types = const [EnvironmentDto, _$EnvironmentDto];
  @override
  final String wireName = 'EnvironmentDto';

  @override
  Iterable serialize(Serializers serializers, EnvironmentDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.processorCount != null) {
      result
        ..add('processorCount')
        ..add(serializers.serialize(object.processorCount,
            specifiedType: const FullType(int)));
    }
    if (object.osVersion != null) {
      result
        ..add('osVersion')
        ..add(serializers.serialize(object.osVersion,
            specifiedType: const FullType(String)));
    }
    if (object.windowBoundsWidth != null) {
      result
        ..add('windowBoundsWidth')
        ..add(serializers.serialize(object.windowBoundsWidth,
            specifiedType: const FullType(int)));
    }
    if (object.windowBoundsHeight != null) {
      result
        ..add('windowBoundsHeight')
        ..add(serializers.serialize(object.windowBoundsHeight,
            specifiedType: const FullType(int)));
    }
    if (object.resolutionScale != null) {
      result
        ..add('resolutionScale')
        ..add(serializers.serialize(object.resolutionScale,
            specifiedType: const FullType(String)));
    }
    if (object.currentOrientation != null) {
      result
        ..add('currentOrientation')
        ..add(serializers.serialize(object.currentOrientation,
            specifiedType: const FullType(String)));
    }
    if (object.cpu != null) {
      result
        ..add('cpu')
        ..add(serializers.serialize(object.cpu,
            specifiedType: const FullType(String)));
    }
    if (object.packageVersion != null) {
      result
        ..add('packageVersion')
        ..add(serializers.serialize(object.packageVersion,
            specifiedType: const FullType(String)));
    }
    if (object.architecture != null) {
      result
        ..add('architecture')
        ..add(serializers.serialize(object.architecture,
            specifiedType: const FullType(String)));
    }
    if (object.totalPhysicalMemory != null) {
      result
        ..add('totalPhysicalMemory')
        ..add(serializers.serialize(object.totalPhysicalMemory,
            specifiedType: const FullType(int)));
    }
    if (object.availablePhysicalMemory != null) {
      result
        ..add('availablePhysicalMemory')
        ..add(serializers.serialize(object.availablePhysicalMemory,
            specifiedType: const FullType(int)));
    }
    if (object.totalVirtualMemory != null) {
      result
        ..add('totalVirtualMemory')
        ..add(serializers.serialize(object.totalVirtualMemory,
            specifiedType: const FullType(int)));
    }
    if (object.availableVirtualMemory != null) {
      result
        ..add('availableVirtualMemory')
        ..add(serializers.serialize(object.availableVirtualMemory,
            specifiedType: const FullType(int)));
    }
    if (object.diskSpaceFree != null) {
      result
        ..add('diskSpaceFree')
        ..add(serializers.serialize(object.diskSpaceFree,
            specifiedType: const FullType(String)));
    }
    if (object.deviceName != null) {
      result
        ..add('deviceName')
        ..add(serializers.serialize(object.deviceName,
            specifiedType: const FullType(String)));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  EnvironmentDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnvironmentDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'processorCount':
          result.processorCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'osVersion':
          result.osVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'windowBoundsWidth':
          result.windowBoundsWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'windowBoundsHeight':
          result.windowBoundsHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'resolutionScale':
          result.resolutionScale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentOrientation':
          result.currentOrientation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cpu':
          result.cpu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'packageVersion':
          result.packageVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'architecture':
          result.architecture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalPhysicalMemory':
          result.totalPhysicalMemory = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'availablePhysicalMemory':
          result.availablePhysicalMemory = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalVirtualMemory':
          result.totalVirtualMemory = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'availableVirtualMemory':
          result.availableVirtualMemory = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'diskSpaceFree':
          result.diskSpaceFree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deviceName':
          result.deviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RequestDtoSerializer implements StructuredSerializer<RequestDto> {
  @override
  final Iterable<Type> types = const [RequestDto, _$RequestDto];
  @override
  final String wireName = 'RequestDto';

  @override
  Iterable serialize(Serializers serializers, RequestDto object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  RequestDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new RequestDtoBuilder().build();
  }
}

class _$ResponseDtoSerializer implements StructuredSerializer<ResponseDto> {
  @override
  final Iterable<Type> types = const [ResponseDto, _$ResponseDto];
  @override
  final String wireName = 'ResponseDto';

  @override
  Iterable serialize(Serializers serializers, ResponseDto object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  ResponseDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new ResponseDtoBuilder().build();
  }
}

class _$UserDtoSerializer implements StructuredSerializer<UserDto> {
  @override
  final Iterable<Type> types = const [UserDto, _$UserDto];
  @override
  final String wireName = 'UserDto';

  @override
  Iterable serialize(Serializers serializers, UserDto object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  UserDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new UserDtoBuilder().build();
  }
}

class _$BreadcrumbsDtoSerializer
    implements StructuredSerializer<BreadcrumbsDto> {
  @override
  final Iterable<Type> types = const [BreadcrumbsDto, _$BreadcrumbsDto];
  @override
  final String wireName = 'BreadcrumbsDto';

  @override
  Iterable serialize(Serializers serializers, BreadcrumbsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BreadcrumbsDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BreadcrumbsDtoBuilder().build();
  }
}

class _$RaygunRequestDto extends RaygunRequestDto {
  @override
  final DateTime OccuredOn;
  @override
  final DetailsDto details;

  factory _$RaygunRequestDto([void updates(RaygunRequestDtoBuilder b)]) =>
      (new RaygunRequestDtoBuilder()..update(updates)).build();

  _$RaygunRequestDto._({this.OccuredOn, this.details}) : super._() {
    if (OccuredOn == null) {
      throw new BuiltValueNullFieldError('RaygunRequestDto', 'OccuredOn');
    }
    if (details == null) {
      throw new BuiltValueNullFieldError('RaygunRequestDto', 'details');
    }
  }

  @override
  RaygunRequestDto rebuild(void updates(RaygunRequestDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RaygunRequestDtoBuilder toBuilder() =>
      new RaygunRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RaygunRequestDto &&
        OccuredOn == other.OccuredOn &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, OccuredOn.hashCode), details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RaygunRequestDto')
          ..add('OccuredOn', OccuredOn)
          ..add('details', details))
        .toString();
  }
}

class RaygunRequestDtoBuilder
    implements Builder<RaygunRequestDto, RaygunRequestDtoBuilder> {
  _$RaygunRequestDto _$v;

  DateTime _OccuredOn;
  DateTime get OccuredOn => _$this._OccuredOn;
  set OccuredOn(DateTime OccuredOn) => _$this._OccuredOn = OccuredOn;

  DetailsDtoBuilder _details;
  DetailsDtoBuilder get details => _$this._details ??= new DetailsDtoBuilder();
  set details(DetailsDtoBuilder details) => _$this._details = details;

  RaygunRequestDtoBuilder();

  RaygunRequestDtoBuilder get _$this {
    if (_$v != null) {
      _OccuredOn = _$v.OccuredOn;
      _details = _$v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RaygunRequestDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RaygunRequestDto;
  }

  @override
  void update(void updates(RaygunRequestDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RaygunRequestDto build() {
    _$RaygunRequestDto _$result;
    try {
      _$result = _$v ??
          new _$RaygunRequestDto._(
              OccuredOn: OccuredOn, details: details.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RaygunRequestDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DetailsDto extends DetailsDto {
  @override
  final String machineName;
  @override
  final String version;
  @override
  final String groupingKey;
  @override
  final ClientDto client;
  @override
  final ErrorDto error;

  factory _$DetailsDto([void updates(DetailsDtoBuilder b)]) =>
      (new DetailsDtoBuilder()..update(updates)).build();

  _$DetailsDto._(
      {this.machineName,
      this.version,
      this.groupingKey,
      this.client,
      this.error})
      : super._() {
    if (machineName == null) {
      throw new BuiltValueNullFieldError('DetailsDto', 'machineName');
    }
    if (version == null) {
      throw new BuiltValueNullFieldError('DetailsDto', 'version');
    }
    if (groupingKey == null) {
      throw new BuiltValueNullFieldError('DetailsDto', 'groupingKey');
    }
    if (client == null) {
      throw new BuiltValueNullFieldError('DetailsDto', 'client');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('DetailsDto', 'error');
    }
  }

  @override
  DetailsDto rebuild(void updates(DetailsDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailsDtoBuilder toBuilder() => new DetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailsDto &&
        machineName == other.machineName &&
        version == other.version &&
        groupingKey == other.groupingKey &&
        client == other.client &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, machineName.hashCode), version.hashCode),
                groupingKey.hashCode),
            client.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailsDto')
          ..add('machineName', machineName)
          ..add('version', version)
          ..add('groupingKey', groupingKey)
          ..add('client', client)
          ..add('error', error))
        .toString();
  }
}

class DetailsDtoBuilder implements Builder<DetailsDto, DetailsDtoBuilder> {
  _$DetailsDto _$v;

  String _machineName;
  String get machineName => _$this._machineName;
  set machineName(String machineName) => _$this._machineName = machineName;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _groupingKey;
  String get groupingKey => _$this._groupingKey;
  set groupingKey(String groupingKey) => _$this._groupingKey = groupingKey;

  ClientDtoBuilder _client;
  ClientDtoBuilder get client => _$this._client ??= new ClientDtoBuilder();
  set client(ClientDtoBuilder client) => _$this._client = client;

  ErrorDtoBuilder _error;
  ErrorDtoBuilder get error => _$this._error ??= new ErrorDtoBuilder();
  set error(ErrorDtoBuilder error) => _$this._error = error;

  DetailsDtoBuilder();

  DetailsDtoBuilder get _$this {
    if (_$v != null) {
      _machineName = _$v.machineName;
      _version = _$v.version;
      _groupingKey = _$v.groupingKey;
      _client = _$v.client?.toBuilder();
      _error = _$v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailsDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailsDto;
  }

  @override
  void update(void updates(DetailsDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailsDto build() {
    _$DetailsDto _$result;
    try {
      _$result = _$v ??
          new _$DetailsDto._(
              machineName: machineName,
              version: version,
              groupingKey: groupingKey,
              client: client.build(),
              error: error.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'client';
        client.build();
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ClientDto extends ClientDto {
  @override
  final String name;
  @override
  final String version;
  @override
  final String clientUrl;

  factory _$ClientDto([void updates(ClientDtoBuilder b)]) =>
      (new ClientDtoBuilder()..update(updates)).build();

  _$ClientDto._({this.name, this.version, this.clientUrl}) : super._();

  @override
  ClientDto rebuild(void updates(ClientDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientDtoBuilder toBuilder() => new ClientDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientDto &&
        name == other.name &&
        version == other.version &&
        clientUrl == other.clientUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), version.hashCode), clientUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClientDto')
          ..add('name', name)
          ..add('version', version)
          ..add('clientUrl', clientUrl))
        .toString();
  }
}

class ClientDtoBuilder implements Builder<ClientDto, ClientDtoBuilder> {
  _$ClientDto _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _clientUrl;
  String get clientUrl => _$this._clientUrl;
  set clientUrl(String clientUrl) => _$this._clientUrl = clientUrl;

  ClientDtoBuilder();

  ClientDtoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _version = _$v.version;
      _clientUrl = _$v.clientUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClientDto;
  }

  @override
  void update(void updates(ClientDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClientDto build() {
    final _$result = _$v ??
        new _$ClientDto._(name: name, version: version, clientUrl: clientUrl);
    replace(_$result);
    return _$result;
  }
}

class _$ErrorDto extends ErrorDto {
  @override
  final String innerError;
  @override
  final String data;
  @override
  final String className;
  @override
  final String message;
  @override
  final StacktraceDto stackTrace;

  factory _$ErrorDto([void updates(ErrorDtoBuilder b)]) =>
      (new ErrorDtoBuilder()..update(updates)).build();

  _$ErrorDto._(
      {this.innerError,
      this.data,
      this.className,
      this.message,
      this.stackTrace})
      : super._();

  @override
  ErrorDto rebuild(void updates(ErrorDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDtoBuilder toBuilder() => new ErrorDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDto &&
        innerError == other.innerError &&
        data == other.data &&
        className == other.className &&
        message == other.message &&
        stackTrace == other.stackTrace;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, innerError.hashCode), data.hashCode),
                className.hashCode),
            message.hashCode),
        stackTrace.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorDto')
          ..add('innerError', innerError)
          ..add('data', data)
          ..add('className', className)
          ..add('message', message)
          ..add('stackTrace', stackTrace))
        .toString();
  }
}

class ErrorDtoBuilder implements Builder<ErrorDto, ErrorDtoBuilder> {
  _$ErrorDto _$v;

  String _innerError;
  String get innerError => _$this._innerError;
  set innerError(String innerError) => _$this._innerError = innerError;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _className;
  String get className => _$this._className;
  set className(String className) => _$this._className = className;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  StacktraceDtoBuilder _stackTrace;
  StacktraceDtoBuilder get stackTrace =>
      _$this._stackTrace ??= new StacktraceDtoBuilder();
  set stackTrace(StacktraceDtoBuilder stackTrace) =>
      _$this._stackTrace = stackTrace;

  ErrorDtoBuilder();

  ErrorDtoBuilder get _$this {
    if (_$v != null) {
      _innerError = _$v.innerError;
      _data = _$v.data;
      _className = _$v.className;
      _message = _$v.message;
      _stackTrace = _$v.stackTrace?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ErrorDto;
  }

  @override
  void update(void updates(ErrorDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorDto build() {
    _$ErrorDto _$result;
    try {
      _$result = _$v ??
          new _$ErrorDto._(
              innerError: innerError,
              data: data,
              className: className,
              message: message,
              stackTrace: _stackTrace?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stackTrace';
        _stackTrace?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ErrorDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$StacktraceDto extends StacktraceDto {
  @override
  final int lineNumber;
  @override
  final int columnNumber;
  @override
  final String className;
  @override
  final String fileName;
  @override
  final String methodName;

  factory _$StacktraceDto([void updates(StacktraceDtoBuilder b)]) =>
      (new StacktraceDtoBuilder()..update(updates)).build();

  _$StacktraceDto._(
      {this.lineNumber,
      this.columnNumber,
      this.className,
      this.fileName,
      this.methodName})
      : super._();

  @override
  StacktraceDto rebuild(void updates(StacktraceDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StacktraceDtoBuilder toBuilder() => new StacktraceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StacktraceDto &&
        lineNumber == other.lineNumber &&
        columnNumber == other.columnNumber &&
        className == other.className &&
        fileName == other.fileName &&
        methodName == other.methodName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, lineNumber.hashCode), columnNumber.hashCode),
                className.hashCode),
            fileName.hashCode),
        methodName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StacktraceDto')
          ..add('lineNumber', lineNumber)
          ..add('columnNumber', columnNumber)
          ..add('className', className)
          ..add('fileName', fileName)
          ..add('methodName', methodName))
        .toString();
  }
}

class StacktraceDtoBuilder
    implements Builder<StacktraceDto, StacktraceDtoBuilder> {
  _$StacktraceDto _$v;

  int _lineNumber;
  int get lineNumber => _$this._lineNumber;
  set lineNumber(int lineNumber) => _$this._lineNumber = lineNumber;

  int _columnNumber;
  int get columnNumber => _$this._columnNumber;
  set columnNumber(int columnNumber) => _$this._columnNumber = columnNumber;

  String _className;
  String get className => _$this._className;
  set className(String className) => _$this._className = className;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _methodName;
  String get methodName => _$this._methodName;
  set methodName(String methodName) => _$this._methodName = methodName;

  StacktraceDtoBuilder();

  StacktraceDtoBuilder get _$this {
    if (_$v != null) {
      _lineNumber = _$v.lineNumber;
      _columnNumber = _$v.columnNumber;
      _className = _$v.className;
      _fileName = _$v.fileName;
      _methodName = _$v.methodName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StacktraceDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StacktraceDto;
  }

  @override
  void update(void updates(StacktraceDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StacktraceDto build() {
    final _$result = _$v ??
        new _$StacktraceDto._(
            lineNumber: lineNumber,
            columnNumber: columnNumber,
            className: className,
            fileName: fileName,
            methodName: methodName);
    replace(_$result);
    return _$result;
  }
}

class _$EnvironmentDto extends EnvironmentDto {
  @override
  final int processorCount;
  @override
  final String osVersion;
  @override
  final int windowBoundsWidth;
  @override
  final int windowBoundsHeight;
  @override
  final String resolutionScale;
  @override
  final String currentOrientation;
  @override
  final String cpu;
  @override
  final String packageVersion;
  @override
  final String architecture;
  @override
  final int totalPhysicalMemory;
  @override
  final int availablePhysicalMemory;
  @override
  final int totalVirtualMemory;
  @override
  final int availableVirtualMemory;
  @override
  final String diskSpaceFree;
  @override
  final String deviceName;
  @override
  final String locale;

  factory _$EnvironmentDto([void updates(EnvironmentDtoBuilder b)]) =>
      (new EnvironmentDtoBuilder()..update(updates)).build();

  _$EnvironmentDto._(
      {this.processorCount,
      this.osVersion,
      this.windowBoundsWidth,
      this.windowBoundsHeight,
      this.resolutionScale,
      this.currentOrientation,
      this.cpu,
      this.packageVersion,
      this.architecture,
      this.totalPhysicalMemory,
      this.availablePhysicalMemory,
      this.totalVirtualMemory,
      this.availableVirtualMemory,
      this.diskSpaceFree,
      this.deviceName,
      this.locale})
      : super._();

  @override
  EnvironmentDto rebuild(void updates(EnvironmentDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentDtoBuilder toBuilder() =>
      new EnvironmentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentDto &&
        processorCount == other.processorCount &&
        osVersion == other.osVersion &&
        windowBoundsWidth == other.windowBoundsWidth &&
        windowBoundsHeight == other.windowBoundsHeight &&
        resolutionScale == other.resolutionScale &&
        currentOrientation == other.currentOrientation &&
        cpu == other.cpu &&
        packageVersion == other.packageVersion &&
        architecture == other.architecture &&
        totalPhysicalMemory == other.totalPhysicalMemory &&
        availablePhysicalMemory == other.availablePhysicalMemory &&
        totalVirtualMemory == other.totalVirtualMemory &&
        availableVirtualMemory == other.availableVirtualMemory &&
        diskSpaceFree == other.diskSpaceFree &&
        deviceName == other.deviceName &&
        locale == other.locale;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    processorCount
                                                                        .hashCode),
                                                                osVersion
                                                                    .hashCode),
                                                            windowBoundsWidth
                                                                .hashCode),
                                                        windowBoundsHeight
                                                            .hashCode),
                                                    resolutionScale.hashCode),
                                                currentOrientation.hashCode),
                                            cpu.hashCode),
                                        packageVersion.hashCode),
                                    architecture.hashCode),
                                totalPhysicalMemory.hashCode),
                            availablePhysicalMemory.hashCode),
                        totalVirtualMemory.hashCode),
                    availableVirtualMemory.hashCode),
                diskSpaceFree.hashCode),
            deviceName.hashCode),
        locale.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnvironmentDto')
          ..add('processorCount', processorCount)
          ..add('osVersion', osVersion)
          ..add('windowBoundsWidth', windowBoundsWidth)
          ..add('windowBoundsHeight', windowBoundsHeight)
          ..add('resolutionScale', resolutionScale)
          ..add('currentOrientation', currentOrientation)
          ..add('cpu', cpu)
          ..add('packageVersion', packageVersion)
          ..add('architecture', architecture)
          ..add('totalPhysicalMemory', totalPhysicalMemory)
          ..add('availablePhysicalMemory', availablePhysicalMemory)
          ..add('totalVirtualMemory', totalVirtualMemory)
          ..add('availableVirtualMemory', availableVirtualMemory)
          ..add('diskSpaceFree', diskSpaceFree)
          ..add('deviceName', deviceName)
          ..add('locale', locale))
        .toString();
  }
}

class EnvironmentDtoBuilder
    implements Builder<EnvironmentDto, EnvironmentDtoBuilder> {
  _$EnvironmentDto _$v;

  int _processorCount;
  int get processorCount => _$this._processorCount;
  set processorCount(int processorCount) =>
      _$this._processorCount = processorCount;

  String _osVersion;
  String get osVersion => _$this._osVersion;
  set osVersion(String osVersion) => _$this._osVersion = osVersion;

  int _windowBoundsWidth;
  int get windowBoundsWidth => _$this._windowBoundsWidth;
  set windowBoundsWidth(int windowBoundsWidth) =>
      _$this._windowBoundsWidth = windowBoundsWidth;

  int _windowBoundsHeight;
  int get windowBoundsHeight => _$this._windowBoundsHeight;
  set windowBoundsHeight(int windowBoundsHeight) =>
      _$this._windowBoundsHeight = windowBoundsHeight;

  String _resolutionScale;
  String get resolutionScale => _$this._resolutionScale;
  set resolutionScale(String resolutionScale) =>
      _$this._resolutionScale = resolutionScale;

  String _currentOrientation;
  String get currentOrientation => _$this._currentOrientation;
  set currentOrientation(String currentOrientation) =>
      _$this._currentOrientation = currentOrientation;

  String _cpu;
  String get cpu => _$this._cpu;
  set cpu(String cpu) => _$this._cpu = cpu;

  String _packageVersion;
  String get packageVersion => _$this._packageVersion;
  set packageVersion(String packageVersion) =>
      _$this._packageVersion = packageVersion;

  String _architecture;
  String get architecture => _$this._architecture;
  set architecture(String architecture) => _$this._architecture = architecture;

  int _totalPhysicalMemory;
  int get totalPhysicalMemory => _$this._totalPhysicalMemory;
  set totalPhysicalMemory(int totalPhysicalMemory) =>
      _$this._totalPhysicalMemory = totalPhysicalMemory;

  int _availablePhysicalMemory;
  int get availablePhysicalMemory => _$this._availablePhysicalMemory;
  set availablePhysicalMemory(int availablePhysicalMemory) =>
      _$this._availablePhysicalMemory = availablePhysicalMemory;

  int _totalVirtualMemory;
  int get totalVirtualMemory => _$this._totalVirtualMemory;
  set totalVirtualMemory(int totalVirtualMemory) =>
      _$this._totalVirtualMemory = totalVirtualMemory;

  int _availableVirtualMemory;
  int get availableVirtualMemory => _$this._availableVirtualMemory;
  set availableVirtualMemory(int availableVirtualMemory) =>
      _$this._availableVirtualMemory = availableVirtualMemory;

  String _diskSpaceFree;
  String get diskSpaceFree => _$this._diskSpaceFree;
  set diskSpaceFree(String diskSpaceFree) =>
      _$this._diskSpaceFree = diskSpaceFree;

  String _deviceName;
  String get deviceName => _$this._deviceName;
  set deviceName(String deviceName) => _$this._deviceName = deviceName;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  EnvironmentDtoBuilder();

  EnvironmentDtoBuilder get _$this {
    if (_$v != null) {
      _processorCount = _$v.processorCount;
      _osVersion = _$v.osVersion;
      _windowBoundsWidth = _$v.windowBoundsWidth;
      _windowBoundsHeight = _$v.windowBoundsHeight;
      _resolutionScale = _$v.resolutionScale;
      _currentOrientation = _$v.currentOrientation;
      _cpu = _$v.cpu;
      _packageVersion = _$v.packageVersion;
      _architecture = _$v.architecture;
      _totalPhysicalMemory = _$v.totalPhysicalMemory;
      _availablePhysicalMemory = _$v.availablePhysicalMemory;
      _totalVirtualMemory = _$v.totalVirtualMemory;
      _availableVirtualMemory = _$v.availableVirtualMemory;
      _diskSpaceFree = _$v.diskSpaceFree;
      _deviceName = _$v.deviceName;
      _locale = _$v.locale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnvironmentDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EnvironmentDto;
  }

  @override
  void update(void updates(EnvironmentDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EnvironmentDto build() {
    final _$result = _$v ??
        new _$EnvironmentDto._(
            processorCount: processorCount,
            osVersion: osVersion,
            windowBoundsWidth: windowBoundsWidth,
            windowBoundsHeight: windowBoundsHeight,
            resolutionScale: resolutionScale,
            currentOrientation: currentOrientation,
            cpu: cpu,
            packageVersion: packageVersion,
            architecture: architecture,
            totalPhysicalMemory: totalPhysicalMemory,
            availablePhysicalMemory: availablePhysicalMemory,
            totalVirtualMemory: totalVirtualMemory,
            availableVirtualMemory: availableVirtualMemory,
            diskSpaceFree: diskSpaceFree,
            deviceName: deviceName,
            locale: locale);
    replace(_$result);
    return _$result;
  }
}

class _$RequestDto extends RequestDto {
  factory _$RequestDto([void updates(RequestDtoBuilder b)]) =>
      (new RequestDtoBuilder()..update(updates)).build();

  _$RequestDto._() : super._();

  @override
  RequestDto rebuild(void updates(RequestDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestDtoBuilder toBuilder() => new RequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestDto;
  }

  @override
  int get hashCode {
    return 527636622;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('RequestDto').toString();
  }
}

class RequestDtoBuilder implements Builder<RequestDto, RequestDtoBuilder> {
  _$RequestDto _$v;

  RequestDtoBuilder();

  @override
  void replace(RequestDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RequestDto;
  }

  @override
  void update(void updates(RequestDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RequestDto build() {
    final _$result = _$v ?? new _$RequestDto._();
    replace(_$result);
    return _$result;
  }
}

class _$ResponseDto extends ResponseDto {
  factory _$ResponseDto([void updates(ResponseDtoBuilder b)]) =>
      (new ResponseDtoBuilder()..update(updates)).build();

  _$ResponseDto._() : super._();

  @override
  ResponseDto rebuild(void updates(ResponseDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseDtoBuilder toBuilder() => new ResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseDto;
  }

  @override
  int get hashCode {
    return 189875827;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ResponseDto').toString();
  }
}

class ResponseDtoBuilder implements Builder<ResponseDto, ResponseDtoBuilder> {
  _$ResponseDto _$v;

  ResponseDtoBuilder();

  @override
  void replace(ResponseDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResponseDto;
  }

  @override
  void update(void updates(ResponseDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponseDto build() {
    final _$result = _$v ?? new _$ResponseDto._();
    replace(_$result);
    return _$result;
  }
}

class _$UserDto extends UserDto {
  factory _$UserDto([void updates(UserDtoBuilder b)]) =>
      (new UserDtoBuilder()..update(updates)).build();

  _$UserDto._() : super._();

  @override
  UserDto rebuild(void updates(UserDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDtoBuilder toBuilder() => new UserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDto;
  }

  @override
  int get hashCode {
    return 30223603;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UserDto').toString();
  }
}

class UserDtoBuilder implements Builder<UserDto, UserDtoBuilder> {
  _$UserDto _$v;

  UserDtoBuilder();

  @override
  void replace(UserDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserDto;
  }

  @override
  void update(void updates(UserDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDto build() {
    final _$result = _$v ?? new _$UserDto._();
    replace(_$result);
    return _$result;
  }
}

class _$BreadcrumbsDto extends BreadcrumbsDto {
  factory _$BreadcrumbsDto([void updates(BreadcrumbsDtoBuilder b)]) =>
      (new BreadcrumbsDtoBuilder()..update(updates)).build();

  _$BreadcrumbsDto._() : super._();

  @override
  BreadcrumbsDto rebuild(void updates(BreadcrumbsDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BreadcrumbsDtoBuilder toBuilder() =>
      new BreadcrumbsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BreadcrumbsDto;
  }

  @override
  int get hashCode {
    return 526847508;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BreadcrumbsDto').toString();
  }
}

class BreadcrumbsDtoBuilder
    implements Builder<BreadcrumbsDto, BreadcrumbsDtoBuilder> {
  _$BreadcrumbsDto _$v;

  BreadcrumbsDtoBuilder();

  @override
  void replace(BreadcrumbsDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BreadcrumbsDto;
  }

  @override
  void update(void updates(BreadcrumbsDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BreadcrumbsDto build() {
    final _$result = _$v ?? new _$BreadcrumbsDto._();
    replace(_$result);
    return _$result;
  }
}
