import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),

                TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value){
                      print("on change value");
                    },
                   onFieldSubmitted: (value){
                      print("on submit");
                  },
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                ),

                SizedBox(
                  height: 15.0,
                ),

                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

               Container(
                 width: double.infinity,
                 color: Colors.blue,
                 child: MaterialButton(
                     onPressed: (){
                       print(emailController.text);
                       print(passwordController.text);
                     },
                     child: Text(
                       "LOGIN",
                       style: TextStyle(
                         color: Colors.white,
                       ),
                     ),
                 ),
               ),

                SizedBox(
                  height: 15.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          'Register Now'
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
