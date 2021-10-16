import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soga_hostal/core/features/home/widgets/home_controller.dart';
import 'package:soga_hostal/core/features/home/widgets/home_indicator.dart';
import 'package:soga_hostal/core/utils/colors.dart';

class HomeBottonBar extends StatelessWidget {
  final List<_BottomBarItem> _items = [
    _BottomBarItem(icon: Icons.home, label: 'Home'),
    _BottomBarItem(icon: Icons.favorite, label: 'Favorites'),
    _BottomBarItem(icon: Icons.grid_view_rounded, label: 'Gallery'),
    _BottomBarItem(icon: Icons.person, label: 'Profile'),
  ];

  final List<_BottomBarItem> _item2 = [
    _BottomBarItem(icon: Icons.home_outlined, label: 'Home'),
    _BottomBarItem(icon: Icons.favorite_outline, label: 'Favorites'),
    _BottomBarItem(icon: Icons.grid_view, label: 'Gallery'),
    _BottomBarItem(icon: Icons.person_outline, label: 'Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);

    final int currentPage =
        context.select<HomeController, int>((_) => _.currentPage);
    return Container(
      child: SafeArea(
        top: false,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Color(0xff3C6D78),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: TabBar(
              controller: controller.tabController,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide.none,
                ),
              ),
              tabs: List.generate(_items.length, (index) {
                final item = _items[index];
                final item2 = _item2[index];
                return BottonBarItemButton(
                    item2: item2, item: item, isActive: currentPage == index);
              })),
        ),
      ),
    );
  }
}

// BottonBarItemButton(
//             item: item,
//             isActive: currentPage == index,
//             onPressed: () {
//               controller.setPage(index);
//             },
//           );

class BottonBarItemButton extends StatelessWidget {
  const BottonBarItemButton({
    Key? key,
    required this.item,
    required this.item2,
    required this.isActive,
    this.onPressed,
  }) : super(key: key);

  final _BottomBarItem item, item2;
  final bool isActive;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final Color color = isActive ? primaryColor : Colors.white;
    return Tab(
      icon: Icon(
        isActive ? item.icon : item2.icon,
        size: 25,
        color: color,
        // height: 45,
      ),
    );
  }
}

class _BottomBarItem {
  final String label;
  final IconData icon;

  _BottomBarItem({required this.icon, required this.label});
}
