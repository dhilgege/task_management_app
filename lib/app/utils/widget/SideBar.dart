import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                alignment: Alignment.topCenter,
                height: 100,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/icons/icon.png'),
                ),
              ),
              const SizedBox(height: 70),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/home'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    40,
                                  ),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/home'
                                ? Ionicons.desktop
                                : Ionicons.desktop_outline,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'home',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/task'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    40,
                                  ),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/task'
                                ? Ionicons.cube
                                : Ionicons.cube_outline,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'task',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/friends'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    40,
                                  ),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/friends'
                                ? Ionicons.heart
                                : Ionicons.heart_outline,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'friends',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/profile'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    40,
                                  ),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/profile'
                                ? Ionicons.person
                                : Ionicons.person_outline,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'profile',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
