import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () =>NavigationBar(
        height: 65,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) => controller.selectedIndex.value = index,

        destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
           ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color: Colors.blue,),
    Container(color: Colors.grey,),
    Container(color: Colors.green,),
    Container(color: Colors.orange,),
    Container(color: Colors.black,),
  ];
}
