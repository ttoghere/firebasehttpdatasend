import 'package:flutter/material.dart';
import '../model/user.dart';
import '../widgets/uses_tile.dart';
import 'add_new_user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firestore CRUD Operation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const AddNewUserScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return UserTile(
              user: User(
                userName: "username",
                email: "email",
                docId: "id",
                phoneNumber: "phonenumber",
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
