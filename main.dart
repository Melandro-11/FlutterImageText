import 'package:flutter/material.dart';
/* the purpose of this is to import the flutter material design library widgets tools for building the material design UI (google design system)

import is a dart keyword to include external libraries
package:flutter refers to the material package that comes with flutter
this is Essential for building flutter apps w/ a standard UI
* * */

void main() { // Entry point of a flutter app
  runApp( const MyApp() ); //runApp() is initializing the app and attached the root widget(MyApp) to the screen,
  //creates an instance of the MyApp widget, that marked cont for compile-time (immutable)
}

class MyApp extends StatelessWidget {
  //MyApp is a custom class that extends StatelessWidget
  //StatelessWidget is a based class for widgets that do not hold mutable state
  const MyApp({super.key}); //superkey is a constructor

@override
  Widget build(BuildContext context) {
  return MaterialApp( //MaterialApp is a app structure
    title: 'Hello Flutter' ,
    theme: ThemeData( //primary color palette
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.black,

    ),
    home: const MyHomePage(), //initial screen
  );

  }

}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); //superkey is a constructor

  @override
  Widget build(BuildContext context) {
  return Scaffold( //inside of scaffold is text, image, and design etc..
    appBar: AppBar(
      title: const Text('Hello Flutter App'),

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/spacejam2.jpg',
          width: 500,
          height: 500,),
          const  SizedBox(height: 10),
          const Text(
              'space jam 2',
            style: TextStyle(fontSize: 40, color:Colors.white),
          ),
          const Text(
              'Superstar LeBron James and his young son, Dom, get trapped in digital space by a rogue AI. To get home safely, LeBron teams up with Bugs Bunny, Daffy Duck and the rest of the Looney Tunes gang for a high-stakes basketball game against the AI s digitized champions of the court -- a powered-up roster called the Goon Squad',
            style: TextStyle(fontSize: 19, color:Colors.white),
          ),
        ],
      ),
    ),
  );
  }

}