import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessPage(),
    );
  }
}

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('my business card'.toUpperCase(),
        style: GoogleFonts.montserrat(
          color: Colors.teal,
          fontSize: 20.0, 
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/white.jpg'),
              radius: 50,
            ),
            Text('Olaitan Damilare',
            style: GoogleFonts.pacifico(fontSize: 25.0, 
            color: Colors.white,
            ),
            ),
            Text('Software engineer'.toUpperCase(),
            style: GoogleFonts.workSans(fontSize: 25.0, 
            color: Colors.white,
            letterSpacing: 2.5
            ),
            ),
            SizedBox(
              width: 150.0,
              height: 10.0,
              child: Divider(color: Colors.teal[200]),
            ),
            const Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 30.0),
              child: ListTile(
               leading: Icon(Icons.phone,
                color: Colors.teal), 
               title: Text('+234 902 580 2364', 
               style: TextStyle(color: Colors.teal),
               ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 30.0),
              child: ListTile(
               leading: Icon(Icons.mail,
                color: Colors.teal), 
               title: Text('Olaitandamillare230@gmail.com', 
               style: TextStyle(color: Colors.teal),
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}