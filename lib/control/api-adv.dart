import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class adv_class {
  dynamic adv_data;

  Future adv_api() async {
    var request =
        http.Request('GET', Uri.parse('https://hpu.cliprz.org/api/adv'));

    http.StreamedResponse response = await request.send();
    final jasonresponse = convert.jsonDecode(await response.stream.bytesToString());
    adv_data = jasonresponse;
    return adv_data;
  }
}
