import 'package:flutter/material.dart';
import 'package:load_file/asset_file.dart';

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
      home: MyHomePage(title: 'Load file'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({required this.title, Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const searchBorder = OutlineInputBorder(
    // borderRadius: BorderRadius.all(Radius.circular(16.0)),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16.0),
      bottomLeft: Radius.circular(16.0),
    ),
    borderSide: BorderSide(
      color: Colors.black,
      width: 2,
    ),
  );

  String _fileName = '';
  String _errorText = '';
  Future<String>? _onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: TextField(
                    onChanged: (fileName) {
                      setState(() {
                        _fileName = fileName;
                        _errorText = '';
                      });
                    },
                    onSubmitted: onSubmitted,
                    decoration: InputDecoration(
                      enabledBorder: searchBorder,
                      focusedBorder: searchBorder,
                      filled: true,
                      hintText: 'Введите значение',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (_fileName.isEmpty) {
                      setState(() {
                        _errorText = 'Введите название файла';
                      });
                    } else {
                      onSubmitted(_fileName);
                    }
                  },
                  child: SizedBox(
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Text(
                            'Найти',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_errorText.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  _errorText,
                  style: TextStyle(
                    color: Colors.red[300],
                  ),
                ),
              ),
            if (_onSubmitted != null)
              FutureBuilder<String>(
                future: _onSubmitted,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: SingleChildScrollView(
                          child: Text(snapshot.data ?? ''),
                        ),
                      ),
                    );
                  }

                  if (snapshot.hasError) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'файл не найден',
                        style: TextStyle(
                          color: Colors.red[300],
                        ),
                      ),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: LinearProgressIndicator(),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  onSubmitted(fileName) async {
    final file = AssetFile(fileName);

    setState(() {
      _errorText = '';
      _onSubmitted = file.read();
    });
  }
}
