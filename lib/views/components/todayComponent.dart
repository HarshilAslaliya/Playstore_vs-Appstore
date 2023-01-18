import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayComponent extends StatefulWidget {
  const TodayComponent({Key? key}) : super(key: key);

  @override
  State<TodayComponent> createState() => _TodayComponentState();
}

class _TodayComponentState extends State<TodayComponent> {
  List<String> month = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'Octomber',
    'November',
    'December',
  ];
  List<String> week = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  DateTime liveTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              '${week[liveTime.weekday]}, ${month[liveTime.month]} ${liveTime.day}',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.48,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(250), // Image radius
                      child: Image(
                        image: AssetImage('assets/images/bgmi3.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.18,
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
                                image: AssetImage('assets/images/bgmi.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BGMI',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.5 ',
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
                        Spacer(),
                        CupertinoButton(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                            child: Text(
                              'Get',
                              style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {}),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height * 0.48,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(250), // Image radius
                      child: Image(
                        image: AssetImage('assets/images/cocbarrier.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.18,
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
                                image: AssetImage('assets/images/coc.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Clash Of Clans',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3.8 ',
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
                        Spacer(),
                        CupertinoButton(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                            child: Text(
                              'Get',
                              style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {}),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
