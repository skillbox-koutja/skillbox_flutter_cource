import 'package:flutter/material.dart';
import 'package:hero_card/space.dart';

class DetailsScreen extends StatelessWidget {
  final Space space;

  const DetailsScreen({
    required this.space,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space id: ${space.id.characters.take(8)}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Hero(
                    tag: '${space.id}:image',
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(space.image, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    bottom: -32,
                    right: 16,
                    child: Hero(
                      tag: '${space.id}:button',
                      child: ColoredBox(
                        color: Colors.greenAccent,
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(32),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: '${space.id}:description',
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  child: Text(space.description),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
