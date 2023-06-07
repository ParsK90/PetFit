import 'dart:convert';
import 'package:pet_fit/parslib/classes/pet_http.dart';

class ServiceAPI {
  final String controller;
  ServiceAPI(this.controller);

  // Future<List<dynamic>> get({int? id}) async => await PetHttp.httpRequest(
  //       RequestType.get,
  //       "$controller${id == null ? "" : "/$id"}",
  //     );

  // Future<void> add(dynamic object) async => await PetHttp.httpRequest(
  //       RequestType.post,
  //       controller,
  //       body: jsonEncode(object),
  //     );

  // Future<void> update(dynamic object) async => await PetHttp.httpRequest(
  //       RequestType.put,
  //       "$controller/${object["id"]}",
  //       body: jsonEncode(object),
  //     );
  // Future<void> delete(int id) async => await PetHttp.httpRequest(
  //       RequestType.delete,
  //       "$controller/$id",
  //     );

  Future<List<dynamic>> get({int? id}) async {
    final response = await PetHttp.httpRequest(
      RequestType.get,
      "$controller${id == null ? "" : "/$id"}",
    );

    if (response is Map<String, dynamic>) {
      return [response];
    } else {
      throw Exception("The API response is not a map");
    }
  }

  Future<Map<String, dynamic>> add(dynamic object) async {
    final response = await PetHttp.httpRequest(
      RequestType.post,
      controller,
      body: jsonEncode(object),
    );

    if (response is Map<String, dynamic>) {
      return response;
    } else {
      throw Exception("The API response is not a map");
    }
  }

  Future<Map<String, dynamic>> update(int id, dynamic object) async {
    final response = await PetHttp.httpRequest(
      RequestType.put,
      "$controller/$id",
      body: jsonEncode(object),
    );

    if (response is Map<String, dynamic>) {
      return response;
    } else {
      throw Exception("The API response is not a map");
    }
  }

  Future<Map<String, dynamic>> delete(int id) async {
    final response = await PetHttp.httpRequest(
      RequestType.delete,
      "$controller/$id",
    );

    if (response is Map<String, dynamic>) {
      return response;
    } else {
      throw Exception("The API response is not a map");
    }
  }
}
