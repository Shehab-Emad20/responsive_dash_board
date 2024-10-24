import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/inactivedraweritem_and_activedraweritem.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okenow',
                subTitle: 'demo@gmail.com'),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        DrawerItemListView(),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(child: SizedBox(height: 20)),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Settings')),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout,
                  title: 'Logout account',
                ),
              ),
              SizedBox(height: 48),
            ])),
      ]),
    );
  }
}
