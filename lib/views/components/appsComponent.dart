import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modals/globals.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({Key? key}) : super(key: key);

  @override
  State<AppComponent> createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Apps',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image(
                              image: AssetImage('assets/images/barrier.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image(
                              image: AssetImage('assets/images/barrier2.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image(
                              image: AssetImage('assets/images/barrier3.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Must Used Apps',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See All',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          ...recommendedApp.map((e) => Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: SizedBox.fromSize(
                                  // Image radius
                                  child: Image(
                                    image: e['icon'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${e['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${e['star']} ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/images/star.png'),
                                      height: 18,
                                      width: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            CupertinoButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Text(
                                  'Get',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                            SizedBox(
                              width: 15,
                            ),
                          ],)).toList(),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [                          SizedBox(width: 15,),

                          ...offlineApp.map((e) => Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: SizedBox.fromSize(
                                  // Image radius
                                  child: Image(
                                    image: e['icon'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${e['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${e['star']} ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/images/star.png'),
                                      height: 18,
                                      width: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            CupertinoButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Text(
                                  'Get',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                            SizedBox(
                              width: 15,
                            ),
                          ],)).toList(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Offline Apps',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See All',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [                          SizedBox(width: 15,),

                          ...suggestApp.map((e) => Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: SizedBox.fromSize(
                                  // Image radius
                                  child: Image(
                                    image: e['icon'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${e['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${e['star']} ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/images/star.png'),
                                      height: 18,
                                      width: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            CupertinoButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Text(
                                  'Get',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                            SizedBox(
                              width: 15,
                            ),
                          ],)).toList(),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [                          SizedBox(width: 15,),

                          ...newApp.map((e) => Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: SizedBox.fromSize(
                                  // Image radius
                                  child: Image(
                                    image: e['icon'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${e['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${e['star']} ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/images/star.png'),
                                      height: 18,
                                      width: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            CupertinoButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Text(
                                  'Get',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                            SizedBox(
                              width: 15,
                            ),
                          ],)).toList(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Top Chart',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See All',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [                          SizedBox(width: 15,),

                          ...topChartApp.map((e) => Row(children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: SizedBox.fromSize(
                                  // Image radius
                                  child: Image(
                                    image: e['icon'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${e['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${e['star']} ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('assets/images/star.png'),
                                      height: 18,
                                      width: 18,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            CupertinoButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Text(
                                  'Get',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {}),
                            SizedBox(
                              width: 15,
                            ),
                          ],)).toList(),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}