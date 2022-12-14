import 'package:api_adres_app/constants/app_colors/app_colors.dart';
import 'package:api_adres_app/service/user_service.dart';
import 'package:flutter/material.dart';

import '../../constants/app_text/app_text.dart';
import '../../models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List listUser = [];
  // @override
  // void initState() {
  //   super.initState();
  //   ServiceUser.getUsers().then((value) {
  //     listUser = value;
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        centerTitle: true,
        title: const Text(
          AppText.titleText,
        ),
      ),
      body: Center(
        child: FutureBuilder(
            future: ServiceUser.getUsers(),
            builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("Servicingizde kata bar!!!"),
                );
              } else {
                return Container( 
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        snapshot.data![index].name.toString(),
                      );
                    },
                    // itemCount: snapshot.data.length ,
                    itemCount: (snapshot.data as List).length,
                  ),
                );
              }
            }),
        // child: listUser.isEmpty
        //     ? const CircularProgressIndicator()
        //     : ListView.builder(
        //         itemBuilder: (context, index) {
        //           return Text(listUser[index]['name'].toString());
        //         },
        //         itemCount: listUser.length,
        //       ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     listUser = await ServiceUser.getUsers();
      //     setState(() {});
      //   },
      //   child: const Icon(
      //     Icons.refresh,
      //   ),
      // ),
    );
  }
}
