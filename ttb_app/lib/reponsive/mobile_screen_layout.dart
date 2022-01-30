import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome! To Trivia Through the Bible Mobile App'),
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
                  label: Text("Click to Begin Now"),
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

class namePage extends StatelessWidget {
  const namePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Select the Category of the Bible Trivia Journey you Want to Explore!'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[200]
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

class namePeople extends StatelessWidget {
  const namePeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Select the Category of the Bible Trivia Journey you Want to Explore!'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[200]
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => namePage()),
                      );
                    },
                    child: Ink.image(
                      image: AssetImage('assets/names.png'),
                      // fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => namePage()),
                      );
                    },
                    child: Ink.image(
                      image: AssetImage('assets/places.png'),
                      // fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => namePage()),
                      );
                    },
                    child: Ink.image(
                      image: AssetImage('assets/events.png'),
                      // fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  )
                ],
              ),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

