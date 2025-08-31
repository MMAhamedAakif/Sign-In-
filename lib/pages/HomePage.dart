import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65),
            Text(
              "Sign In ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No account? ",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle sign up navigation
                  },
                  child: Text(
                    "Make Account ",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      color: Color(0xFF006A60),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                floatingLabelStyle: TextStyle(color: Color(0xFF006A60)),
                hintStyle: TextStyle(color: Color(0xFF006A60), fontSize: 12),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                focusColor: Colors.blueGrey[200],
                filled: true,
                fillColor: Color(0xFFEDEDED),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF006A60),
                    width: 2.0,
                  ), // 👈 Active border
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                floatingLabelStyle: TextStyle(color: Color(0xFF006A60)),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                focusColor: Color(0xFF006A60),
                filled: true,
                fillColor: Color(0xFFEDEDED),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF006A60),
                    width: 2.0,
                  ), // 👈 Active border
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Handle sign up navigation
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  color: Color(0xFF006A60),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF006A60), // 👈 Button color
                    foregroundColor: Colors.white, // 👈 Text/Icon color
                    elevation: 8, // 👈 Shadow/elevation
                    minimumSize: Size(200, 50), // 👈 Width & Height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // 👈 Rounded corners
                    ),
                  ),
                  child: Text("Click Me"),
                ),
              ],
            ),
            Center(
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/016/900/444/small_2x/online-dating-app-login-illustration-valentine-s-day-love-match-mobile-leaves-gradient-character-illustration-vector.jpg',
                width: 300,
                height: 300,
                fit:
                    BoxFit
                        .fitWidth, // cover, contain, fill, fitHeight, fitWidth
              ),
            ),
          ],
        ),
      ),
    );
  }
}
