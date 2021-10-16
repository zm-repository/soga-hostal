import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/models/room_model.dart';

class HomeController extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;
  Map<int?, RoomModel> _favorites = {};

  Map<int?, RoomModel> get favorites => _favorites;
  bool isFavorite(RoomModel room) => _favorites.containsKey(room.id);

  void Function()? onDispose;

  final TabController tabController =
      TabController(length: 4, vsync: NavigatorState());
  void afterFirtsLayout() {
    this.tabController.addListener(() {
      _currentPage = tabController.index;
      notifyListeners();
    });
  }

  void toogleFavorite(RoomModel room) {
    Map<int?, RoomModel> copy = Map<int?, RoomModel>.from(_favorites);

    if (isFavorite(room)) {
      copy.remove(room.id);
    } else {
      copy[room.id] = room;
    }

    _favorites = copy;
    notifyListeners();
  }

  @override
  void dispose() {
    tabController.dispose();
    if (this.onDispose != null) {
      this.onDispose!();
    }
    super.dispose();
  }
}
