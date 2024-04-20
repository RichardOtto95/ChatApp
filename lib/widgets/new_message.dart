import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _submitMessage() async {
    final enteredMessage = controller.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    }

    controller.clear();

    // FocusScope.of(context).unfocus();

    final user = FirebaseAuth.instance.currentUser;

    final userDoc = await FirebaseFirestore.instance
        .collection("users")
        .doc(user?.uid)
        .get();

    await FirebaseFirestore.instance.collection("chat").add({
      "text": enteredMessage,
      "created_at": FieldValue.serverTimestamp(),
      "user_id": user!.uid,
      "username": userDoc["username"],
      "user_image": userDoc["image_url"],
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration:
                  const InputDecoration(label: Text("Send a message...")),
              onSubmitted: (value) => _submitMessage(),
            ),
          ),
          IconButton(
            color: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.send),
            onPressed: _submitMessage,
          )
        ],
      ),
    );
  }
}
