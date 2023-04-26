import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.indigo,
       leading: Icon(
           Icons.menu
       ),
       title: Text(
           'First App'
       ),
       actions: [
         IconButton(
           icon: Icon(
               Icons.notification_add
           ),
           onPressed: (){ print("on click ");},
         ),

         IconButton(
           icon: Icon(
               Icons.search
           ),
           onPressed: (){ print("search ");},
         ),
       ],
       centerTitle: true,
     ),

     body: Column(
       children: [
         Container(
           width: 250.0,
           child: Stack(
             alignment: Alignment.bottomCenter,
             children: [
               Image(
                   image: NetworkImage('https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg'),
                   fit: BoxFit.cover,
               ),
               Container(
                 width: double.infinity,
                   color: Colors.black26,
                   child: Text(
                       'Flower Image',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,

                        ),
                   )
               ),
             ],
           ),
         )

       ],
     ),
     // body: SafeArea(
     //   child: Container(
     //     color: Colors.cyanAccent,
     //     width: double.infinity,
     //     child: SingleChildScrollView(
     //       child: Column(
     //         mainAxisSize: MainAxisSize.max,
     //         mainAxisAlignment: MainAxisAlignment.start, // no need to write it again because it's default
     //         crossAxisAlignment: CrossAxisAlignment.start,
     //         children: [
     //           Container(
     //               color: Colors.deepOrange,
     //               child: Text(
     //                 "First Text",
     //                  style: TextStyle(
     //                    color: Colors.white,
     //                    fontSize: 30.0,
     //                  ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.teal,
     //             child: Text(
     //               "Second Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //           Container(
     //             color: Colors.deepOrange,
     //             child: Text(
     //               "First Text",
     //               style: TextStyle(
     //                 color: Colors.white,
     //                 fontSize: 30.0,
     //               ),
     //             ),
     //           ),
     //
     //
     //
     //
     //
     //
     //           // Expanded(
     //           //   flex: 2,
     //           //   child: Container(
     //           //     color: Colors.black26,
     //           //     child: Text(
     //           //         "First Text",
     //           //          style: TextStyle(
     //           //            color: Colors.white,
     //           //            fontSize: 30.0,
     //           //          ),
     //           //     ),
     //           //   ),
     //           // ),
     //           // Expanded(
     //           //   child: Container(
     //           //     color: Colors.amberAccent,
     //           //     child: Text(
     //           //       "Secod Text",
     //           //       style: TextStyle(
     //           //         color: Colors.white,
     //           //         fontSize: 30.0,
     //           //       ),
     //           //     ),
     //           //   ),
     //           // ),
     //         ],
     //       ),
     //     ),
     //   ),
     // ) ,
   );
  }

}