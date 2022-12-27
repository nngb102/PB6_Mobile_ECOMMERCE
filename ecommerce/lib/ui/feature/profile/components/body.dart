import 'package:ecommerce/ui/feature/profile/components/profile_menu.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 115,
              width: 115,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const ProFileMenu(
            icon: Icons.people,
            txt: 'My Account',
          ),
          const ProFileMenu(
            icon: Icons.notifications,
            txt: 'Notifications',
          ),
          const ProFileMenu(
            icon: Icons.settings,
            txt: 'Settings',
          ),
          const ProFileMenu(
            icon: Icons.help_outline,
            txt: 'Help Center',
          ),
          const ProFileMenu(
            icon: Icons.logout_outlined,
            txt: 'Log Out',
          ),
        ],
      ),
    );
  }
}
