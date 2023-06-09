import 'package:flutter/material.dart';

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _TabData {
  final String name;
  final List<String> photos;
  final IconData icon;

  _TabData({
    required this.name,
    required this.photos,
    required this.icon,
  });
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  final List<_TabData> data = [
    _TabData(
      name: 'Photo',
      photos: List.generate(10, (index) => 'https://picsum.photos/300?_c=1$index'),
      icon: Icons.home,
    ),
    _TabData(
      name: 'Chat',
      photos: List.generate(10, (index) => 'https://picsum.photos/300?_c=2$index'),
      icon: Icons.chat,
    ),
    _TabData(
      name: 'Albums',
      photos: List.generate(10, (index) => 'https://picsum.photos/300?_c=3$index'),
      icon: Icons.album,
    ),
  ];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: data.length, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void showBottomSheet() {
    scaffoldKey.currentState?.showBottomSheet((context) => Container(
          height: 300,
          color: Colors.red[200],
        ));
  }

  void showEndDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: showEndDrawer,
          ),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          for (var tabData in data)
            ListView(
              padding: EdgeInsets.zero,
              key: PageStorageKey(tabData.name),
              children: [
                for (var url in tabData.photos)
                  SizedBox(
                      height: 200,
                      child: Image.network(
                        url,
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingProgress == null ? child : const CircularProgressIndicator();
                        },
                      )),
              ],
            )
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                    child: Image.network(
                      'https://picsum.photos/200',
                      loadingBuilder: (context, child, loadingProgress) {
                        return loadingProgress == null ? child : const CircularProgressIndicator();
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      leading: Icon(Icons.motion_photos_on_rounded),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                      title: Text('Images'),
                    ),
                    ListTile(
                      leading: Icon(Icons.document_scanner),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                      title: Text('Files'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _DrawerButton('Выход'),
                    _DrawerButton('Регистрация'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: UnconstrainedBox(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                    child: Image.network(
                      'https://picsum.photos/200',
                      loadingBuilder: (context, child, loadingProgress) {
                        return loadingProgress == null ? child : const CircularProgressIndicator();
                      },
                    ),
                  ),
                ),
                const Text('Айтирали Кибербекович'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tabIndex) {
          tabController.index = tabIndex;
        },
        currentIndex: tabController.index,
        items: [
          for (var tabData in data)
            BottomNavigationBarItem(
              icon: Icon(tabData.icon),
              label: tabData.name,
            )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: showBottomSheet,
        child: const Icon(Icons.info_outline),
      ),
    );
  }
}

class _DrawerButton extends StatelessWidget {
  final String text;
  const _DrawerButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[300],
      ),
      child: Text(text),
    );
  }
}
