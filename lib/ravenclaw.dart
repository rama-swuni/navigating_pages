import 'package:flutter/material.dart';

class RavenclawHouse extends StatelessWidget {
  const RavenclawHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ravenclaw House"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://static.wikia.nocookie.net/pottermore/images/4/4f/Ravenclaw_crest.png/revision/latest/scale-to-width-down/180?cb=20111112232334',
              height: 200,
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: """Or yet in wise old Ravenclaw,
if you've a ready mind,
Where those of wit and learning,
Will always find their kind;""",
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
