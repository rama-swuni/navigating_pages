import 'package:flutter/material.dart';

import 'main.dart';

class GryffindorHouse extends StatefulWidget {
  @override
  _GryffindorHouseState createState() => _GryffindorHouseState();
}

class _GryffindorHouseState extends State<GryffindorHouse> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('did change dependencies');
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    print('dispose ');
    super.dispose();
  }

  @override
  void didPop() {
    print('Gryffindor House was removed from the stack');
  }

  @override
  void didPush() {
    print('Gryffindor House was pushed to the stack');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gryffindor House"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://static.wikia.nocookie.net/pottermore/images/1/16/Gryffindor_crest.png/revision/latest/scale-to-width-down/180?cb=20111112232412',
              height: 200,
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: """You might belong in Gryffindor,
Where dwell the brave at heart,
Their daring, nerve, and chivalry
Set Gryffindors apart;""",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decorationColor: Colors.deepPurpleAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Divider(),
          TextButton(
            //all we need to do here to get back is to
            //call the pop on the Navigator's context.
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Home"),
          ),
        ],
      ),
    );
  }
}
