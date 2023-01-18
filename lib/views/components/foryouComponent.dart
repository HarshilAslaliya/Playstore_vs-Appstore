import 'package:flutter/material.dart';
import 'package:playstore_vs_appstore/modals/globals.dart';
import 'package:playstore_vs_appstore/views/screens/app_information.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ...recommendedGames
                      .map(
                        (e) => Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'info',arguments: e);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            color: Colors.grey,
                                            offset: Offset(0, 3)),
                                      ],
                                    ),
                                    child: Image(
                                      image: e['icon'],
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' ${e['name']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${e['star']}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        'assets/images/star.png',
                                      ),
                                      height: 18,
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'New & updated Games',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ...newGames
                      .map(
                        (e) => Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'info',arguments: e);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            color: Colors.grey,
                                            offset: Offset(0, 3)),
                                      ],
                                    ),
                                    child: Image(
                                      image: e['icon'],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' ${e['name']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${e['star']}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        'assets/images/star.png',
                                      ),
                                      height: 18,
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'Suggested for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ...suggestGames
                      .map(
                        (e) => Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'info',arguments: e);

                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            color: Colors.grey,
                                            offset: Offset(0, 3)),
                                      ],
                                    ),
                                    child: Image(
                                      image: e['icon'],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' ${e['name']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${e['star']}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        'assets/images/star.png',
                                      ),
                                      height: 18,
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'Offline Games',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  ...offlineGames
                      .map(
                        (e) => Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'info',arguments: e);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            color: Colors.grey,
                                            offset: Offset(0, 3)),
                                      ],
                                    ),
                                    child: Image(
                                      image: e['icon'],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' ${e['name']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' ${e['star']}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        'assets/images/star.png',
                                      ),
                                      height: 18,
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
