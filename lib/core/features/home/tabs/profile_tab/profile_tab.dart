import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/home/tabs/profile_tab/widgets/info_container.dart';

import 'package:soga_hostal/core/utils/colors.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: secundaryColor,
        title: Text("Mi Perfil"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/foto.jpg")),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 10,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 15)
                            ]),
                        child: CupertinoButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.camera_alt,
                            color: secundaryColor,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              InfoContainer(
                text1: "username",
                text2: "Eder",
              ),
              SizedBox(
                height: 20,
              ),
              InfoContainer(
                text1: "correo",
                text2: "ederzambranomero@gmail.com",
              ),
              SizedBox(
                height: 20,
              ),
              InfoContainer(
                text1: "celular",
                text2: "0979966405",
              ),
              SizedBox(
                height: 20,
              ),
              InfoContainer(
                text1: "fecha nacimiento",
                text2: "18/09/1997",
              ),
              SizedBox(
                height: 20,
              ),
              InfoContainer(
                text1: "género",
                text2: "Masculino",
              ),
              SizedBox(
                height: 20,
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(30),
                  color: secundaryColor,
                  child: Text("Editar perfil"),
                  onPressed: () {}),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
