import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome! To Trivia Through the Bible Web App'),
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
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faqsPage()),
          );
        },
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
          backgroundColor: Colors.brown[200]
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
                      MaterialPageRoute(builder: (context) => placePage()),
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
                      MaterialPageRoute(builder: (context) => eventPage()),
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
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faqsPage()),
          );
        },
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
          title: Text('Welcome to the Names Bible Trivia Category! Enjoy the Game!'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[200]
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faqsPage()),
          );
        },
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

class eventPage extends StatelessWidget {
  const eventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome to the Events Bible Trivia Category! Enjoy the Game!'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[200]
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faqsPage()),
          );
        },
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

class placePage extends StatelessWidget {
  const placePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome to the Places Bible Trivia Category! Enjoy the Game!'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[200]
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => faqsPage()),
          );
        },
        child: Text('FAQs'),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}

class faqsPage extends StatelessWidget {
  const faqsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome! Here you will find Help to Frequently Asked Support Questions!'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[200]
      ),
      body: Center(
      ),
    );
  }
}