library serialization;

import 'package:built_value/serializer.dart';
import 'package:raygun_test/raygun_dtos.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';

part 'serialization.g.dart';

@SerializersFor(const [
  RaygunRequestDto,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
