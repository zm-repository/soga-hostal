import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:soga_hostal/core/models/room_model.dart';

class DetailsRoomPage extends StatefulWidget {
  @override
  _DetailsRoomPageState createState() => _DetailsRoomPageState();
}

class _DetailsRoomPageState extends State<DetailsRoomPage> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as RoomModel;
    final size = MediaQuery.of(context).size;

    final d = size.height * 0.3;

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.4,
            child: Image.asset(
              args.image.first,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 0,
            child: Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(.7),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: d),
            child: AspectRatio(
              aspectRatio: 9.5 / 15,
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  args.name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 0.5,
                                      color: Color(0xff42737D),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text("${args.rating} "),
                                    RatingBarIndicator(
                                      rating: args.rating,
                                      direction: Axis.horizontal,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Color(0xff2A5D63),
                                      ),
                                      itemCount: 5,
                                      itemSize: 15.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "\$ ${args.price.toInt()}",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xff2A5D63)),
                                  ),
                                ),
                                CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    child: Icon(
                                      Icons.favorite,
                                      color: isActive
                                          ? Color(0xff2A5D63)
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isActive = !isActive;
                                      });
                                    })
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: args.includes.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              final include = args.includes[index];
                              final icon = args.icons[index];

                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffE7EDEF),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      width: 80,
                                      height: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(icon),
                                          Text(
                                            include,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      )),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Descripción",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff2A5D63)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        args.description,
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Fotos",
                              style: TextStyle(
                                  color: Color(0xff2A5D63), fontSize: 15)),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                child: Text(
                                  "Ver todo",
                                  style: TextStyle(
                                      color: Color(0xff2A5D63), fontSize: 15),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: args.image.length,
                            itemBuilder: (context, index) {
                              final image = args.image[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    image,
                                    width: 80,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xff2A5D63),
                          )),
                      child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.clear,
                            color: Color(0xff2A5D63),
                          ),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      child: CupertinoButton(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff2A5D63),
                          child: Text("Reservar"),
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
