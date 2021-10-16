import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:soga_hostal/core/models/room_model.dart';
import 'package:soga_hostal/core/utils/colors.dart';

class GalleryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mis Reservaciones ",
              style: TextStyle(
                  fontSize: 20,
                  color: secundaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: room.length,
                  itemBuilder: (context, index) {
                    final rooms = room[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slidable(
                        actionPane: SlidableDrawerActionPane(),
                        secondaryActions: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10)
                                .copyWith(bottom: 5),
                            child: IconSlideAction(
                              caption: 'Delete',
                              color: Colors.red,
                              icon: Icons.delete,
                              onTap: () {},
                            ),
                          ),
                        ],
                        child: CupertinoButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12, blurRadius: 15)
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                  child: Image.asset(
                                    rooms.image.first,
                                    fit: BoxFit.cover,
                                    width: 130,
                                    height: 90,
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        rooms.name,
                                        style: TextStyle(
                                            color: secundaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '\$ ${rooms.price.toInt().toString()}',
                                          style:
                                              TextStyle(color: secundaryColor),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Reservado  el 10-09-2021",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
