import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewScreen1 extends StatefulWidget {
  @override
  State<NewScreen1> createState() => _NewScreen1State();
}

class _NewScreen1State extends State<NewScreen1> {
  String buttonName = "Clicked";

  int currentindex = 0;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basics"),
        ),
        body: Center(
          child: currentindex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = "Click";
                          });
                          print("Clicked");
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // setState(() {
                          //   buttonName = "Click";
                          // });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return SecondPage();
                          }));
                          print("Clicked");
                        },
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      _isClicked = !_isClicked;
                    });
                  },
                  child: _isClicked
                      ? Image.asset('images/second.jpg')
                      : Image.network(
                          "https://w0.peakpx.com/wallpaper/360/97/HD-wallpaper-sceneray-mehrangarh-forest-greenary-lake-lakes-mountains-nature-hop-sceneary-view.jpg"),
                ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
    );
    ;
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
    );
  }
}
