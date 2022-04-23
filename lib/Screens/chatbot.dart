import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import '../app_body_Chat.dart';

class ChatBot extends StatefulWidget {
  ChatBot({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "       Chat d'assistance ",
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          Column(children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Chat d'assistance              ",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "   Veuillez patienter, notre equipes de support vous   repondre des que possible",
              style: TextStyle(fontSize: 18, color: Colors.grey[400]),
            ),
            Divider(
              color: Colors.grey,
            ),
          ]),
          Expanded(child: AppBody(messages: messages)),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            color: Colors.deepOrangeAccent,
            child: Row(
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.camera),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.send),
                  onPressed: () {
                    sendMessage(_controller.text);
                    _controller.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sendMessage(String text) async {
    if (text.isEmpty) return;
    setState(() {
      addMessage(
        Message(text: DialogText(text: [text])),
        true,
      );
    });

    dialogFlowtter.projectId = "shifthouse-fff4a";
    //"shiftyhouse-fe1ee";

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: QueryInput(text: TextInput(text: text)),
    );

    if (response.message == null) return;
    setState(() {
      addMessage(response.message!);
    });
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  void dispose() {
    dialogFlowtter.dispose();
    super.dispose();
  }
}
