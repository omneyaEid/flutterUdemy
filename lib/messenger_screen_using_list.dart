import 'package:flutter/material.dart';

class messengerScreenList extends StatelessWidget {
  const messengerScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),

            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.cyan,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                )
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.cyan,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                )
            ),
            onPressed: (){},
          ),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                   scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder:  (context, index) => SizedBox( width: 20.0 ,),
                    itemCount: 7,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildChatItem(),
                    separatorBuilder:  (context, index) => SizedBox( height: 20.0 ,),
                    itemCount: 15,
                ),
            ],
          ),
        ),
      ) ,
    );
  }

  // 1- build item

  // arrow function
   Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://imglarger.com/Images/before-after/ai-image-upscaler-2-after.jpg'),
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 0.0,
                top: 0.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lucas Elijah',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hello Omneya, How are you?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                      '02:00 PM'
                  ),
                ],
              ),
            ],
          ),
        )

      ],
    );

   Widget buildStoryItem() => Container(
     width: 60.0,
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(
               radius: 30.0,
               backgroundImage: NetworkImage('https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg'),
             ),
             CircleAvatar(
               radius: 8.0,
               backgroundColor: Colors.white,
             ),
             Padding(
               padding: const EdgeInsetsDirectional.only(
                 bottom: 0.0,
                 top: 0.0,
               ),
               child: CircleAvatar(
                 radius: 7.0,
                 backgroundColor: Colors.red,
               ),
             ),
           ],
         ),
         SizedBox(
           height: 5.0,
         ),
         Text(
           'Charlotte Noah Benjamin',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
         ),
       ],
     ),
   );

}
