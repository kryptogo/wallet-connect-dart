import 'package:json_annotation/json_annotation.dart';
import 'package:wallet_connect/utils/constants.dart';
import 'package:wallet_connect/utils/from_json.dart';

part 'json_rpc_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class JsonRpcResponse<T> {
  @JsonKey(fromJson: idFromJson)
  final int id;
  final String jsonrpc;
  final T result;
  JsonRpcResponse({
    required this.id,
    this.jsonrpc = JSONRPC_VERSION,
    required this.result,
  });

  factory JsonRpcResponse.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcResponseFromJson(json, (object) => object as T);
  Map<String, dynamic> toJson() => _$JsonRpcResponseToJson(this, (t) => t);

  @override
  String toString() =>
      'JsonRpcResponse(id: $id, jsonrpc: $jsonrpc, result: $result)';
}
