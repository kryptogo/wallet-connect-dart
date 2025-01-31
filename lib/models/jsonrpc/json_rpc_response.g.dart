// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonRpcResponse<T> _$JsonRpcResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return JsonRpcResponse<T>(
    id: idFromJson(json['id']),
    jsonrpc: json['jsonrpc'] as String,
    result: fromJsonT(json['result']),
  );
}

Map<String, dynamic> _$JsonRpcResponseToJson<T>(
  JsonRpcResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': toJsonT(instance.result),
    };
