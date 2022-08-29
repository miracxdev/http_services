import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http_services/app/models/response/home_response.dart';
import 'package:http_services/app/services/http_services.dart';
import 'package:http_services/ui/home_screen/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}


class _HomeViewState extends State<HomeView> {

HomeController homeController = HomeController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    homeController.getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa")),
      body: ListView.builder(
        itemCount: homeController.homeResponseList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(homeController.homeResponseList[index].title!),
        ),
      ),
    );
  }
}
