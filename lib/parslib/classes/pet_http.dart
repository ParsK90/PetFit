import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pet_fit/parslib/classes/consts.dart';
import 'package:pet_fit/parslib/classes/pet_dialogs.dart';

enum RequestType { get, post, delete, put }

class PetHttp {
  static Future<T?> httpRequest<T>(
    RequestType type,
    String url, {
    dynamic body,
    bool showLoading = false,
  }) async {
    try {
      if (showLoading) {
        Future.delayed(
          Duration.zero,
          () => PetDialogs.showLoading(navigatorKey.currentState!.context),
        );
      }
      String requestUrl = servisAdresGetir(url);
      late final http.Response resp;
      switch (type) {
        case RequestType.get:
          resp = await http.get(Uri.parse(requestUrl), headers: getHeaders);
          break;
        case RequestType.post:
          resp = await http.post(Uri.parse(requestUrl),
              headers: getHeaders, body: body);
          break;
        case RequestType.delete:
          resp = await http.delete(Uri.parse(requestUrl), headers: getHeaders);
          break;
        case RequestType.put:
          resp = await http.put(Uri.parse(requestUrl),
              headers: getHeaders, body: body);
          break;
      }
      if (showLoading) {
        Navigator.pop(navigatorKey.currentState!.context);
      }
      if (resp.statusCode == 401) {
        return null;
      } else {
        return jsonDecode(
          utf8.decode(
            (resp.bodyBytes),
          ),
        );
      }
    } catch (e) {
      print(e.toString());
      if (showLoading) {
        Navigator.pop(navigatorKey.currentState!.context);
      }
    }
    return null;
  }

  static Map<String, String> get getHeaders => {
        HttpHeaders.contentTypeHeader: "application/json",
      };

  static String servisAdresGetir(String url) {
    return "${servisBilgisi.servisAdresi}/api$url";
  }
}
