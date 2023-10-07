import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  final String contactName;
  final String contactImage;

  ChatScreen({
    required this.contactName,
    required this.contactImage,
  });

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> chatMessages = [];
  TextEditingController _messageController = TextEditingController();
  Color appBarColor =  Color(0xff213A82); // Warna latar belakang awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor, // Gunakan warna latar belakang yang dapat diubah
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(widget.contactImage),
            ),
            SizedBox(width: 10),
            Text(widget.contactName),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                final message = chatMessages[index];
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: message.isMe ? Colors.blue : Color(0xff213A82),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        message.text,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sendMessage() {
    final messageText = _messageController.text;
    if (messageText.isNotEmpty) {
      final newMessage = Message(messageText, true);
      setState(() {
        chatMessages.add(newMessage);
      });
      _messageController.clear();
      // Contoh perubahan warna latar belakang setelah mengirim pesan
      setState(() {
        appBarColor = Color(0xff213A82); // Ganti warna app bar menjadi hijau
      });
    }
  }
}

class Message {
  final String text;
  final bool isMe;

  Message(this.text, this.isMe);
}
