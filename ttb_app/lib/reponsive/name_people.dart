import 'package:flutter/material.dart';

class namePeople extends StatelessWidget {
  const namePeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Select the Category of the Bible Journey you Want to Explore!'),
          centerTitle: true,
          backgroundColor: Colors.brown[200]
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.amberAccent,
          onTap: () {},
          child: Column (
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: AssetImage('assets/n5_thumb.png'),
                height: 400,
                width: 400,
              ),
              SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => namePeople()),
                    );
                  },
                  icon: Icon(
                      Icons.gamepad
                  ),
                  label: Text("Click to Play Bible Names Trivia"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

