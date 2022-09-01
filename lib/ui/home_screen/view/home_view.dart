import 'package:flutter/material.dart';

import 'package:http_services/ui/home_screen/controller/home_controller.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    final controller = Provider.of<HomeController>(context, listen: false);
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa")),
      body: controller.homeResponseList!.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.homeResponseList!.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.network(
                      controller.homeResponseList![index].url ?? ""),
                  title: Text(controller.homeResponseList![index].title ?? ""),
                ),
              ),
            ),
    );
  }
}
