import 'package:flutter/material.dart';

import '../../modals/globals.dart';
import '../screens/app_information.dart';

class ForYouApp extends StatefulWidget {
  const ForYouApp({Key? key}) : super(key: key);

  @override
  State<ForYouApp> createState() => _ForYouAppState();
}

class _ForYouAppState extends State<ForYouApp> {
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
                  ...recommendedApp
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
                  'New & updated Apps',
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
                  ...newApp
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
                  ...suggestApp
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
                  'Offline Apps',
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
                  ...offlineApp
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
