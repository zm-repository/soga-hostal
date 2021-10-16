import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soga_hostal/core/features/home/tabs/favorite_tabs/favorite_tab.dart';
import 'package:soga_hostal/core/features/home/tabs/gallery_tabs/gallery_tab.dart';
import 'package:soga_hostal/core/features/home/tabs/home_tabs/home_tab.dart';
import 'package:soga_hostal/core/features/home/tabs/profile_tab/profile_tab.dart';
import 'package:soga_hostal/core/features/home/widgets/home_bottom_bar.dart';
import 'package:soga_hostal/core/features/home/widgets/home_controller.dart';
import 'package:soga_hostal/core/models/room_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final controller = HomeController();
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          controller.afterFirtsLayout();
        });
        return controller;
      },
      builder: (_, __) {
        final controller = Provider.of<HomeController>(_, listen: false);
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: HomeBottonBar(),
          body: SafeArea(
              child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller.tabController,
            children: [HomeTab(), FavoriteTab(), GalleryTab(), ProfileTab()],
          )),
        );
      },
    );
  }
}
