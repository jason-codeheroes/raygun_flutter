import 'dart:convert';
import 'package:built_value/serializer.dart';
import 'package:raygun_test/http.dart';

import 'package:raygun_test/raygun_dtos.dart';
import 'package:raygun_test/serialization.dart';

class RaygunService with HttpMixin {
  String raygunAPIKey = 'YOUR-API-KEY-HERE';
  bool isInDebugMode = false;

  void sendCrashReport(dynamic error, dynamic stackTrace) async {
    // print('Caught error: $error');
    // print('Stacktrace is $stackTrace');

    if (isInDebugMode) {
      // Print the full stacktrace in debug mode
      print(stackTrace);
      return;
    } else {
      var headers = new Map<String, String>();
      headers['X-ApiKey'] = raygunAPIKey;
      final body = serialize(_getRaygunRequestDto(error, stackTrace).build(), const FullType(RaygunRequestDto));
      var response = await postAndVerifySuccess('/entries', headers: headers, body: body);
      print("Response code from Raygun: " + response.statusCode.toString());
    }
  }

  RaygunRequestDtoBuilder _getRaygunRequestDto(dynamic error, dynamic stackTrace) => RaygunRequestDtoBuilder()
    ..OccuredOn = DateTime.now().toUtc()
    ..details = _getDetailsDto(error, stackTrace);

  DetailsDtoBuilder _getDetailsDto(dynamic error, dynamic stackTrace) => DetailsDtoBuilder()
    ..client = _getClientDto()
    ..error = _getErrorDto(error, stackTrace)
    ..machineName = "ServerMachineEmulator"
    ..groupingKey = "ErrorGroup"
    ..version = "0.99";

  ClientDtoBuilder _getClientDto() => ClientDtoBuilder()
    ..clientUrl = "github code heroes.com"
    ..name = "Dart Raygun API Service"
    ..version = "0.1 Test";

  ErrorDtoBuilder _getErrorDto(dynamic error, dynamic stackTrace) => ErrorDtoBuilder()
    ..stackTrace = _getStackTraceDto()
    ..className = "class.dart"
    ..message = error.toString();

  StacktraceDtoBuilder _getStackTraceDto() => StacktraceDtoBuilder()
    ..className = "BrokenService"
    ..lineNumber = 55
    ..fileName = "BrokenClass.cs"
    ..methodName = "BreakSomething()";

  String serialize(Object object, FullType fullType) {
    // TODO: it might be that we *do* want to allow this, but I have no use case as yet.
    assert(object != null, "Unable to serialize null.");
    assert(fullType != null);

    return json.encode(serializers.serialize(object, specifiedType: fullType));
  }
}
