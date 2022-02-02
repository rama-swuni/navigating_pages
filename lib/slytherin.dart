import 'package:flutter/material.dart';

class SlytherinHouse extends StatelessWidget {
  const SlytherinHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slytherin House"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://static.wikia.nocookie.net/pottermore/images/4/45/Slytherin_Crest.png/revision/latest/scale-to-width-down/180?cb=20111112232353',
              height: 200,
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: """Or perhaps in Slytherin
You'll make your real friends,
Those cunning folks use any means
To achieve their ends.""",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decorationColor: Colors.deepPurpleAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          TextButton(
            //all we need to do here to get back is to
            //call the pop on the Navigator's context.
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Home"),
          )
        ],
      ),
    );
  }
}
