import 'package:flutter/material.dart';
import 'package:full_app/src/repository/authentication_repository/authentication_repository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.menu,
        color: isDark ? Colors.white : Colors.black,
      ),
      title:
          Text("Home page", style: Theme.of(context).textTheme.headlineMedium),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //For Dark Color
            color: isDark ? Colors.yellow : Colors.grey[500],
          ),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logOut();
            },
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
