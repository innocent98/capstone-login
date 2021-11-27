import 'package:flutter/material.dart';
import 'color.dart' as appColor;

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appColor.background,
          appBar: AppBar(
            backgroundColor: appColor.button,
            toolbarHeight: 80,
            title: Text(
              "My Portfolio",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
            ),
            leading: Icon(
              Icons.home,
              size: 30,
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage("assets/img/pp.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Victor Oluwatosin",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "tosinadebayo55@gmail.com",
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Ecole Superieure de Gestion"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "et de Technologie",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Software Engineer",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.engineering)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "General",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: appColor.button,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Edit Profile"),
                        SizedBox(
                          width: 175,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.badge, color: appColor.button),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Badges"),
                        SizedBox(
                          width: 195,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          color: appColor.button,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Study Goal"),
                        SizedBox(
                          width: 180,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_off,
                          color: appColor.button,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Focus Mode"),
                        SizedBox(
                          width: 170,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.schedule,
                          color: appColor.button,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("School Schedule"),
                        SizedBox(
                          width: 140,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people,
                          color: appColor.button,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Invite Friends"),
                        SizedBox(
                          width: 162,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: appColor.button,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
