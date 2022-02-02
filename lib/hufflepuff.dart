import 'package:flutter/material.dart';

class HufflepuffHouse extends StatelessWidget {
  const HufflepuffHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hufflepuff House"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://static.wikia.nocookie.net/pottermore/images/5/5e/Hufflepuff_crest.png/revision/latest/scale-to-width-down/180?cb=20111112232427',
              height: 200,
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: """You might belong in Hufflepuff,
Where they are just and loyal,
Those patient Hufflepuffs are true
And unafraid of toil;""",
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
