import 'package:flutter/material.dart';
import 'package:navigating_pages/gryffindor.dart';
import 'package:navigating_pages/hufflepuff.dart';
import 'package:navigating_pages/ravenclaw.dart';
import 'package:navigating_pages/slytherin.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HogwartsHouses(),
      //use these only for named routes. don't need them
      //for unnamed routes with material page routes.
      // routes: {
      //   '/': (context) => HogwartsHouses(), //if you set this
      //   //then you have to comment out the home attribute
      //   '/gryffindor': (context) => GryffindorHouse(),
      //   '/ravenclaw': (context) => RavenclawHouse(),
      //   '/hufflepuff': (context) => HufflepuffHouse(),
      //   '/slytherin': (context) => SlytherinHouse(),
      // },
      navigatorObservers: [routeObserver], //[MyRouteObserver()],
    );
  }
}

class HogwartsHouses extends StatefulWidget {
  const HogwartsHouses({Key? key}) : super(key: key);

  @override
  _HogwartsHousesState createState() => _HogwartsHousesState();
}

class _HogwartsHousesState extends State<HogwartsHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hogwarts Houses"),
      ),
      body: Column(
        children: [
          Image.network(
            'https://static.wikia.nocookie.net/pottermore/images/c/c8/B1C7M2.jpg/revision/latest/scale-to-width-down/699?cb=20120607161745',
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  //a) MaterialPageRoute Example
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return GryffindorHouse();
                    }),
                  );
                  //b) NamedRoute Example
                  // Navigator.pushNamed(
                  //   context,
                  //   "/gryffindor",
                  // );
                },
                child: Text('Gryffindor'),
              ),
              ElevatedButton(
                onPressed: () {
                  //a) MaterialPageRoute Example
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return HufflepuffHouse();
                    }),
                  );
                  //b) NamedRoute Example
                  // Navigator.pushNamed(context, "/hufflepuff");
                },
                child: Text('HufflePuff'),
              ),
              ElevatedButton(
                onPressed: () {
                  //a) MaterialPageRoute Example
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return RavenclawHouse();
                    }),
                  );
                  //b) NamedRoute Example
                  // Navigator.pushNamed(context, "/ravenclaw");
                },
                child: Text('Ravenclaw'),
              ),
              ElevatedButton(
                onPressed: () {
                  //a) MaterialPageRoute Example
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return SlytherinHouse();
                    }),
                  );
                  //b) NamedRoute Example
                  // Navigator.pushNamed(context, "/slytherin");
                },
                child: Text('Syltherin'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
// class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
//   void _sendScreenView(PageRoute<dynamic> route) {
//     var screenName = route.settings.name;
//     print('screenName $screenName');
//   }
//
//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     super.didPop(route, previousRoute);
//     if (previousRoute is PageRoute && route is PageRoute) {
//       _sendScreenView(previousRoute);
//     }
//   }
//
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     super.didPush(route, previousRoute);
//     if (route is PageRoute) {
//       _sendScreenView(route);
//     }
//   }
// }
