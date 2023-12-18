import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('fvf'),
      // ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(seconds: 3),
                pageBuilder: (
                  context,
                  animation,
                  secondaryAnimation,
                ) {
                  return Scaffold(
                    body: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 3),
                            pageBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                            ) {
                              return MyApp();
                            },
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'abc',
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.abc),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Hero(
            tag: 'abc',
            child: Container(
              width: 60,
              height: 60,
              child: Icon(Icons.abc),
            ),
          ),
        ),
      ),
    );
  }
}


