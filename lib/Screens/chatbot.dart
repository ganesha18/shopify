import 'dart:ui';
import 'package:flutter/material.dart';
import '../vehicle/vehicleChat.dart';
import 'home.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 107, 34, 0.8),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _top(),
                _bodyChat(),
                SizedBox(
                  height: 70,
                )
              ],
            ),
            _formChat(),
          ],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Chat d'assistance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => vehicleChatPage()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyChat() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 25, right: 25, top: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              'Chat d\'assistance',
              style: TextStyle(
                fontSize: 40,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Veuilez patienter,notre equipe de support \nvous respondra des que possible.',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            _itemChat(
              avatar: 'images/5.jpg',
              chat: 1,
              message:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '18.00',
            ),
            _itemChat(
              chat: 0,
              message: 'Okey ðŸ£',
              time: '18.00',
              avatar: 'images/5.jpg',
            ),
            _itemChat(
              avatar: 'images/5.jpg',
              chat: 1,
              message: 'It has survived not only five centuries, ðŸ˜€',
              time: '18.00',
            ),
            _itemChat(
              chat: 0,
              message:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. ðŸ˜Ž',
              time: '18.00',
              avatar: 'images/5.jpg',
            ),
            _itemChat(
              avatar: 'images/5.jpg',
              chat: 1,
              message:
                  'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
              time: '18.00',
            ),
            _itemChat(
              avatar: 'images/5.jpg',
              chat: 1,
              message: 'ðŸ˜… ðŸ˜‚ ðŸ¤£',
              time: '18.00',
            ),
          ],
        ),
      ),
    );
  }

  // 0 = Send
  // 1 = Recieved
  _itemChat({required int chat, required String avatar, message, time}) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avatar != null
            ? Avatar(
                image: avatar,
                size: 50,
              )
            : Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: chat == 0
                  ? Colors.white10
                  : Color.fromRGBO(253, 107, 34, 0.8),
              borderRadius: chat == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
            ),
            child: Text('$message'),
          ),
        ),
        chat == 1
            ? Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              )
            : SizedBox(),
      ],
    );
  }

  Widget _formChat() {
    return Positioned(
      top: 730,
      child: Row(children: [
        Container(
          height: 100,
          width: 40,
          color: Colors.white,
          child: Icon(
            Icons.filter_frames_outlined,
            color: Colors.black,
            size: 28,
          ),
        ),
        Container(
          height: 100,
          width: 40,
          color: Colors.white,
          child: Icon(
            Icons.mic,
            color: Colors.black,
            size: 28,
          ),
        ),
        Container(
          height: 100,
          width: 250,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Aa',
              suffixIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  //    color: Colors.deepOrange
                ),
                padding: EdgeInsets.all(14),
                child: Icon(
                  Icons.mood_rounded,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 55,
          color: Colors.white,
          child: Icon(
            Icons.send_rounded,
            color: Colors.grey[200],
            size: 28,
          ),
        ),
      ]),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
