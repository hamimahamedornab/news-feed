import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewsFeed(),
  ));
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 12,
              scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flex(
                      direction: isPortrait ? Axis.horizontal : Axis.vertical,
                      children: [
                        Expanded(
                          flex: isPortrait ? 2 : 4,
                          child: Image.network('https://st2.depositphotos.com/6789684/12262/v/600/depositphotos_122620866-stock-illustration-illustration-of-flat-icon.jpg',
                            width: MediaQuery.sizeOf(context).width * 0.35,
                          ),
                        ),
                        Expanded(
                          flex: isPortrait ? 3 : 2,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('News Title',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text('Description of the News',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          )
      ),
    );
  }
}
