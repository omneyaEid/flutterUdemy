import 'package:flutter/material.dart';

class UserModel{
  final int id ;
  final String name;
  final int phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone
});
}
class usersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "omneya", phone: 12345),
    UserModel(id: 2, name: "menna", phone: 87987),
    UserModel(id: 3, name: "mohamed", phone: 65465),
    UserModel(id: 4, name: "ali", phone: 321687),
    UserModel(id: 5, name: "aya", phone: 31230),
    UserModel(id: 6, name: "sara", phone: 687654),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length
      )
    );
  }
}

/*
 1- build item
 2- build list
 3- add item to list
 */

Widget buildUserItem(UserModel user) =>  Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text(
          '${user.id}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${user.name}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          Text(
            '${user.phone}',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

        ],
      )
    ],
  ),
);