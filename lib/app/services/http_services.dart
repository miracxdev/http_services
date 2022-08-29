import 'package:http/http.dart' as http;
import 'package:http_services/app/models/response/home_response.dart';

class HttpServices {

  Future<List<HomeResponse>> getHomeData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(url);
    
        print('Response body: ${response.body}');

    return homeResponseFromJson(response.body);



  }
}
