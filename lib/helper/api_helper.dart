import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/castam.dart';

class API {
  API._();
  static final API api = API._();

  Future<Currency?> fetchCurrency() async {
    String api =
        "https://v6.exchangerate-api.com/v6/edeb791824620a4bc0a79915/latest/all";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decode = jsonDecode(res.body);

      Currency currency = Currency.fromjson(json: decode);

      return currency;
    }
  }
}
