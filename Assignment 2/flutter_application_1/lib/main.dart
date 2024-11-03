import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Internal Boxes'),
        ),
        body: Center(
          child: Container(
            width: 300.0,           // Width of the outermost square
            height: 300.0,          // Height of the outermost square
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,  // Border color of the outermost square
                width: 15,            // Border thickness of the outermost square
              ),
              borderRadius: BorderRadius.zero, // Sharp edges for outer box
            ),
            child: Center(
              child: Container(
                width: 300.0,         // Width of the second square
                height: 300.0,        // Height of the second square
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 71, 71, 244), // Border color of the second square
                    width: 10,          // Border thickness of the second square
                  ),
                  borderRadius: BorderRadius.zero, // Sharp edges
                ),
                child: Center(
                  child: Container(
                    width: 300.0,       // Width of the third square
                    height: 300.0,      // Height of the third square
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 239, 99, 99), // Border color of the third square
                        width: 10,         // Border thickness of the third square
                      ),
                      borderRadius: BorderRadius.zero, // Sharp edges
                    ),
                    child: Center(
                      child: Container(
                        width: 300.0,       // Width of the fourth square
                        height: 300.0,      // Height of the fourth square
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 136, 239, 134), // Border color of the fourth square
                            width: 10,          // Border thickness of the fourth square
                          ),
                          borderRadius: BorderRadius.zero, // Sharp edges
                        ),
                        child: Center(
                          child: Container(
                            width: 300.0,       // Width of the fifth (innermost) square
                            height: 300.0,      // Height of the fifth square
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 170, 163, 163), // Border color of the fifth square
                                width: 10,          // Border thickness of the fifth square
                              ),
                              borderRadius: BorderRadius.zero, // Sharp edges
                            ),
                            child: Center(
                              child: Text(
                                'This is Internal Box',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 36, 30, 30),
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
