import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class prey_api {
  dynamic data;

  Future<Map<String, dynamic>> api_test() async {
    var request = http.Request(
        'GET',
        Uri.parse(
           'https://api.aladhan.com/v1/timingsByCity?city=Al-Bab&country=Syria%20Arab&method=4'));
             // http://api.aladhan.com/v1/timingsByCity?city=$city&country=$country&method=$method

    http.StreamedResponse response = await request.send();

    final jsonResponse =
        convert.jsonDecode(await response.stream.bytesToString());

    data = jsonResponse;

    return data;
    // convert.json.decode(data);
  }
}
