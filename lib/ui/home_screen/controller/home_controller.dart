import 'package:http_services/app/models/response/home_response.dart';
import 'package:http_services/app/services/http_services.dart';

class HomeController {

  List<HomeResponse> homeResponseList = [];

  HttpServices httpServices = HttpServices();

  getData() async {
    
  homeResponseList  =  await httpServices.getHomeData();

  }
  
}
