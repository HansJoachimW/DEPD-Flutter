import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
        foregroundColor: Colors.blue[100],
        backgroundColor: Colors.blue,
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.cyan, Colors.white])),
        ),
        Container(
            width: double.infinity,
            height: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Big Image
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue[100],
                  width: double.infinity,
                  height: double.infinity,
                  child: ClipRRect(
                    child: Image.asset(
                      'images/wp.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // 4 Tiny Images
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 2,
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/wp.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/wp.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/wp.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/wp.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const Flexible(
                          flex: 1,
                          child: Text(
                            "Welcome!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ),
              // Text
              Flexible(
                flex: 4,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 2,
                          child: Container(
                              margin: const EdgeInsets.all(8),
                              width: double.infinity,
                              height: double.infinity,
                              child: const SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              ))),
                    ],
                  ),
                ),
              ),
            ]))
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
          child: ClipOval(
              child: FloatingActionButton(
        onPressed: toggleLike,
        child: Icon(
          isLiked ? Icons.favorite : Icons.favorite_border,
          color: isLiked ? Colors.red : Colors.grey,
        ),
      ))),
    );
  }
}
