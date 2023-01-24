import 'package:flutter/material.dart';
import 'package:hero_card/details_screen.dart';
import 'package:hero_card/space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeView(title: 'Animations'),
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;
  const HomeView({Key? key, required this.title}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for (final space in spaces)
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<DetailsScreen>(
                    builder: (context) {
                      return DetailsScreen(space: space);
                    },
                  ),
                );
              },
              child: Card(
                color: Colors.grey.shade400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Hero(
                          tag: '${space.id}:image',
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                            ), // Image border
                            child: Image.asset(space.image, fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: -16,
                          right: 16,
                          child: Hero(
                            tag: '${space.id}:button',
                            child: ColoredBox(
                              color: Colors.orangeAccent,
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(16),
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Hero(
                      tag: '${space.id}:description',
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            space.description,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
