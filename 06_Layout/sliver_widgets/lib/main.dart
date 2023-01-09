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
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 240.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Голландский штурвал'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://sun9-11.userapi.com/impg/bEVTUEZ6BPATbMnR5RkF_N14QbqhTeoda0X0AA/J_MjxwBqfv4.jpg?size=1000x1000&quality=96&sign=7cdedec0877bd1b8f7a2d519fcda4946&c_uniq_tag=xcMICm7ntV-noy8F5sGd93C46iV2dvgat3miAYOiBtA&type=album',
                    fit: BoxFit.fitWidth,
                    loadingBuilder: (context, child, loadingProgress) {
                      return loadingProgress == null ? child : const CircularProgressIndicator();
                    },
                  ),
                  Container(
                    color: Colors.black.withOpacity(.5), // replace it with image
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''
Этих женщин, черт их знает
Никогда не разберешь
То не надо, так не надо
Седня движ, завтра пошлет
В общем, друг, я заигрался
Потому тебя позвал
Есть идея нам оформить
Голландский штурвал

Голландский штурвал мы крутим
С тобой эту ночь не забудем
Держи его крепче, доверься рукам
Наш голландский штурвал
Не обрывай наши нити
Шторм внутри нас уже не остановить
Отныне и впредь голландскую сеть
В памяти не стереть (Голландский штурвал)

Штиль в штанах сменился штормом, наша связь прочнее всех
Ловим мы кайфы с сильнейших в мире плотческих утех
Ты держи штурвал, готовься дружбу крепкую познать
Ведь придется постоянно штурвал наш держать

Голландский штурвал мы крутим
С тобой эту ночь не забудем
Держи его крепче, доверься рукам
Наш голландский штурвал
Не обрывай наши нити
Шторм внутри нас уже не остановить
Отныне и впредь голландскую сеть
В памяти не стереть (Голландский штурвал)
''',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
