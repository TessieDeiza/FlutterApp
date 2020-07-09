
import 'package:flutter/material.dart';
import 'package:afyasasa/userfiles/personal.dart' as first;
import 'package:afyasasa/userfiles/health.dart' as second;
import 'package:afyasasa/userfiles/payment.dart' as third;
import 'package:afyasasa/userfiles/subscription.dart' as fourth;
import 'package:flutter/rendering.dart';


class MyUserTabs extends StatefulWidget{
  @override
  
  _MyTabsState createState() => new _MyTabsState();
}

class _MyTabsState extends State<MyUserTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 100.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  // title: Text("Collapsing Toolbar",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16.0,
                  //     )),
                  background: PreferredSize(
                    preferredSize: Size.fromHeight(100.0),
                    child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 50.0,),
                        CircleAvatar(
                          // backgroundImage:AssetImage("url/here.jpg"),
                          backgroundColor: Colors.amber,
                        ),
                        Text("User Name",
                          //textAlign: TextAlign.left,
                          style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B), fontSize: 14.0), 
                        ),
                        Text("User ID: xxxxxxx",
                          //textAlign: TextAlign.left, 
                          style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B), fontSize: 14.0), 
                        ),

                      ],
                      ),

                  )
                  ),
                  // background: Image.network(
                  //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  //   fit: BoxFit.cover,
                  // )
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                  controller: controller,
                  isScrollable: true,
                  labelStyle: TextStyle(color: Colors.black),
                  tabs: <Tab>[
                    new Tab(
                      child: Text("Personal",
                      style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF000000), fontSize: 14.0),),

                    ),
                    new Tab(
                      child: Text("Health",
                      style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF000000), fontSize: 14.0),),
                    ),
                    new Tab(
                      child: Text("Payment",
                      style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF000000), fontSize: 14.0),),
                    ),
                    new Tab(
                      child: Text("Subscription",
                      style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF000000), fontSize: 14.0),),
                    ),
                  ]
                )
                ),
                pinned: true,
              ),
            ];
          },
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new first.PersonalInfoPage(),
              new second.HealthPage(),
              new third.PaymentPage(),
              new fourth.SubscriptionPage()
            ]
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

