import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_vs_appstore/views/components/appsComponent.dart';
import 'package:playstore_vs_appstore/views/components/foryouComponent.dart';
import 'package:playstore_vs_appstore/views/components/foryouComponentApp.dart';
import 'package:playstore_vs_appstore/views/components/gamesComponent.dart';
import 'package:playstore_vs_appstore/views/components/searchComponent.dart';
import 'package:playstore_vs_appstore/views/components/todayComponent.dart';
import 'package:playstore_vs_appstore/views/components/topchartComponent.dart';
import 'package:playstore_vs_appstore/views/components/topchartComponentApp.dart';
import 'package:playstore_vs_appstore/views/components/updatesComponent.dart';
import 'package:playstore_vs_appstore/views/screens/app_information.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    (currentPage == 0)
        ? _tabController = TabController(length: 6, vsync: this)
        : _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  bool isIos = false;

  int IOSIndex = 0;

  @override
  Widget build(BuildContext context) {
    return (isIos == false)
        ? MaterialApp(
            routes: {
              'info': (context) => AppInfo(),
            },
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            height: 50,
                            width: 380,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.black38,
                                    offset: Offset(2, 3)),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  enabled: true,
                                  filled: true,
                                  suffixIcon: Icon(
                                    Icons.mic_none,
                                    size: 28,
                                    color: Colors.grey.shade700,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.menu,
                                    color: Colors.grey.shade700,
                                    size: 28,
                                  ),
                                  hintText: 'Search for apps and games',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 17)),
                            )),
                        Align(
                          alignment: Alignment(0.8, 18),
                          child: Switch(
                              value: isIos,
                              onChanged: (val) {
                                setState(() {
                                  isIos = val;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
                bottom: (currentPage == 0)
                    ? TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blueGrey,
                        labelStyle: TextStyle(fontWeight: FontWeight.w900),
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        onTap: (val) {
                          _pageController.animateToPage(val,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        indicatorWeight: 4,
                        indicatorColor: Colors.blueGrey,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            child: Text(
                              'For you',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Top charts',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Kids',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Events',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Premium',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Categories',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    : TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blueGrey,
                        labelStyle: TextStyle(fontWeight: FontWeight.w900),
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        onTap: (val) {
                          // setState(() {
                          //   currentPage = val;
                          // });
                          _pageController.animateToPage(val,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        indicatorWeight: 4,
                        indicatorColor: Colors.blueGrey,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            child: Text(
                              'For you',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Top charts',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Kids',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Categories',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
              ),
              body: (currentPage == 0)
                  ? PageView(
                      controller: _pageController,
                      onPageChanged: (val) {
                        _tabController.animateTo(val);
                        // setState(() {
                        //   currentPage = val;
                        // });
                      },
                      children: [
                        ForYou(),
                        TopChart(),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                      ],
                    )
                  : PageView(
                      controller: _pageController,
                      onPageChanged: (val) {
                        _tabController.animateTo(val);
                        // setState(() {
                        //   currentPage = val;
                        // });
                      },
                      children: [
                        ForYouApp(),
                        TopChartApp(),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Work is still in progress'),
                            ],
                          ),
                        ),
                      ],
                    ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.green,
                unselectedIconTheme: IconThemeData(color: Colors.grey),
                selectedIconTheme: IconThemeData(color: Colors.green),
                currentIndex: currentPage,
                onTap: (val) {
                  setState(() {
                    currentPage = val;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: (currentPage == 0)
                        ? Icon(
                            CupertinoIcons.game_controller_solid,
                          )
                        : Icon(
                            CupertinoIcons.game_controller,
                          ),
                    label: 'Games',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.apps,
                    ),
                    label: 'Apps',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.local_offer_outlined,
                    ),
                    label: 'Offers',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.book_outlined,
                    ),
                    label: 'Books',
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                trailing: CupertinoSwitch(
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                  value: isIos,
                ),
              ),
              child: Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    IndexedStack(
                      index: IOSIndex,
                      children: [
                        TodayComponent(),
                        GamesComponent(),
                        AppComponent(),
                        UpdateComponent(),
                        SearchComponent(),
                      ],
                    ),
                    CupertinoTabBar(
                      currentIndex: IOSIndex,
                      onTap: (val) {
                        setState(() {
                          IOSIndex = val;
                        });
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.today), label: 'Today'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.rocket_fill),
                            label: 'Games'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.layers_alt_fill),
                            label: 'Apps'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.arrow_down_square_fill),
                            label: 'Updates'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.search), label: 'Search'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
