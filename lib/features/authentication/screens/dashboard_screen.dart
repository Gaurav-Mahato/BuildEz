import 'package:buildez/features/authentication/controllers/profile_controller.dart';
import 'package:buildez/features/authentication/models/user_model.dart';
import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (() => AuthenticationRepository.instance.logout()),
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(
                'Your Profile',
                style: Theme.of(context).textTheme.headlineSmall
            )
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: FutureBuilder(
                future: controller.getUserData(),
                builder: (context,snapshot){
                  // Data Fetch from backend -> snapshot fetched from controller which was initialized in the function
                  if(snapshot.connectionState == ConnectionState.done){
                    if(snapshot.hasData){
                      UserModel userData = snapshot.data as UserModel;
                      return Column(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(userData.name),
                          Text(userData.email),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: (() => AuthenticationRepository.instance.logout()),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow,
                                shape: const StadiumBorder(),
                                side: BorderSide.none
                              ),
                              child: const Text('LOGOUT'),
                            ),
                          ),
                          const Divider()
                        ],
                      );
                    }
                    else if(snapshot.hasError){
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                    else{
                      return const Center(
                        child: Text('Something went wrong'),
                      );
                    }
                  }
                  else{
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        )
    );
  }
}


// body: Center(
// child: ElevatedButton(
// onPressed: (() => AuthenticationRepository.instance.logout()),
// child: const Text('LOGOUT')
// ),
// ),
