import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isRandomGenerated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future / Stream'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Future builder'),
                Center(
                  child: FutureBuilder<String>(
                    future: dataFuture(isRandomGenerated),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data ?? '');
                      }

                      if (snapshot.hasError) {
                        return Text(
                          snapshot.error.toString(),
                          style: TextStyle(
                            color: Colors.red[300],
                          ),
                        );
                      }

                      return Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: LinearProgressIndicator(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 20, thickness: 4),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Stream builder'),
                Center(
                  child: StreamBuilder(
                    stream: dataStream(100, isRandomGenerated),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text(
                          snapshot.error.toString(),
                          style: TextStyle(
                            color: Colors.red[300],
                          ),
                        );
                      }

                      return Text(snapshot.data != null ? '${snapshot.data}' : 'start stream');
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // rebuild widget
          setState(() {
            isRandomGenerated = !isRandomGenerated;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

Stream<int> dataStream(int count, bool isRandomGenerated) async* {
  if (!isRandomGenerated) {
    throw 'Ошибка запуска генератора случайных чисел';
  }

  var random = Random(1000007);
  while (count > 0) {
    int rand = random.nextInt(100);
    if (rand < 20) {
      throw 'Ошибка, число $rand меньше 20';
    } else {
      count = count - 1;
      await Future.delayed(Duration(seconds: 1));
      yield rand;
    }
  }
}

Future<String> dataFuture(bool isRandomGenerated) async {
  final response = await Future.delayed(Duration(seconds: 1), () {
    var random = Random(1000007).nextBool();
    final isSuccess = isRandomGenerated ? random : !random;
    return isSuccess;
  });
  if (response) {
    return 'Данные успешно получены';
  } else {
    throw 'Ошибка загрузки данных';
  }
}
