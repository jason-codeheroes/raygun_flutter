import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raygun_dtos.g.dart';

abstract class RaygunRequestDto implements Built<RaygunRequestDto, RaygunRequestDtoBuilder> {
  factory RaygunRequestDto([void updates(RaygunRequestDtoBuilder b)]) = _$RaygunRequestDto;
  RaygunRequestDto._();

  DateTime get OccuredOn;
  DetailsDto get details;

  static Serializer<RaygunRequestDto> get serializer => _$raygunRequestDtoSerializer;
}

abstract class DetailsDto implements Built<DetailsDto, DetailsDtoBuilder> {
  factory DetailsDto([void updates(DetailsDtoBuilder b)]) = _$DetailsDto;

  DetailsDto._();
  String get machineName;
  String get version;
  String get groupingKey;
  ClientDto get client;
  ErrorDto get error;

  static Serializer<DetailsDto> get serializer => _$detailsDtoSerializer;
}

abstract class ClientDto implements Built<ClientDto, ClientDtoBuilder> {
  factory ClientDto([void updates(ClientDtoBuilder b)]) = _$ClientDto;
  ClientDto._();

  @nullable
  String get name;
  @nullable
  String get version;
  @nullable
  String get clientUrl;

  static Serializer<ClientDto> get serializer => _$clientDtoSerializer;
}

abstract class ErrorDto implements Built<ErrorDto, ErrorDtoBuilder> {
  factory ErrorDto([void updates(ErrorDtoBuilder b)]) = _$ErrorDto;
  ErrorDto._();
  @nullable
  String get innerError;
  @nullable
  String get data;
  @nullable
  String get className;
  @nullable
  String get message;
  @nullable
  StacktraceDto get stackTrace;

  static Serializer<ErrorDto> get serializer => _$errorDtoSerializer;
}

abstract class StacktraceDto implements Built<StacktraceDto, StacktraceDtoBuilder> {
  factory StacktraceDto([void updates(StacktraceDtoBuilder b)]) = _$StacktraceDto;
  StacktraceDto._();
  @nullable
  int get lineNumber;
  @nullable
  int get columnNumber;
  @nullable
  String get className;
  @nullable
  String get fileName;
  @nullable
  String get methodName;

  static Serializer<StacktraceDto> get serializer => _$stacktraceDtoSerializer;
}

abstract class EnvironmentDto implements Built<EnvironmentDto, EnvironmentDtoBuilder> {
  factory EnvironmentDto([void updates(EnvironmentDtoBuilder b)]) = _$EnvironmentDto;
  EnvironmentDto._();

  @nullable
  int get processorCount;
  @nullable
  String get osVersion;
  @nullable
  int get windowBoundsWidth;
  @nullable
  int get windowBoundsHeight;
  @nullable
  String get resolutionScale;
  @nullable
  String get currentOrientation;
  @nullable
  String get cpu;
  @nullable
  String get packageVersion;
  @nullable
  String get architecture;
  @nullable
  int get totalPhysicalMemory;
  @nullable
  int get availablePhysicalMemory;
  @nullable
  int get totalVirtualMemory;
  @nullable
  int get availableVirtualMemory;
  @nullable
  String get diskSpaceFree;
  @nullable
  String get deviceName;
  @nullable
  String get locale;

  static Serializer<EnvironmentDto> get serializer => _$environmentDtoSerializer;
}

abstract class RequestDto implements Built<RequestDto, RequestDtoBuilder> {
  factory RequestDto([void updates(RequestDtoBuilder b)]) = _$RequestDto;
  RequestDto._();

  static Serializer<RequestDto> get serializer => _$requestDtoSerializer;
}

abstract class ResponseDto implements Built<ResponseDto, ResponseDtoBuilder> {
  factory ResponseDto([void updates(ResponseDtoBuilder b)]) = _$ResponseDto;
  ResponseDto._();

  static Serializer<ResponseDto> get serializer => _$responseDtoSerializer;
}

abstract class UserDto implements Built<UserDto, UserDtoBuilder> {
  factory UserDto([void updates(UserDtoBuilder b)]) = _$UserDto;
  UserDto._();

  static Serializer<UserDto> get serializer => _$userDtoSerializer;
}

abstract class BreadcrumbsDto implements Built<BreadcrumbsDto, BreadcrumbsDtoBuilder> {
  factory BreadcrumbsDto([void updates(BreadcrumbsDtoBuilder b)]) = _$BreadcrumbsDto;
  BreadcrumbsDto._();

  static Serializer<BreadcrumbsDto> get serializer => _$breadcrumbsDtoSerializer;
}
