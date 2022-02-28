
import 'package:http/http.dart' as http;
import 'dart:convert';

var data;

class APIAzkar {

  Future getapi() async {
    var request =
    http.Request('GET', Uri.parse('https://hpu.cliprz.org/api/suneh'));
    http.StreamedResponse response = await request.send();
    final jasonresponse = jsonDecode(await response.stream.bytesToString());
    data=jasonresponse;
    return data;

  }
}