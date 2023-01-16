import 'package:flutter/material.dart';
import 'package:hotels/config/application.dart';
import 'package:hotels/domain/entity/hotel.dart';
import 'package:hotels/ui/hotel/details/page.dart';
import 'package:hotels/ui/status_view/status_view.dart';

class HotelListPage extends StatefulWidget {
  static const routeName = '/hotels';

  const HotelListPage({Key? key}) : super(key: key);

  @override
  State<HotelListPage> createState() => _HotelListPageState();
}

enum BodyType {
  list,
  grid;
}

const borderRadius = Radius.circular(12.0);

class _HotelListPageState extends State<HotelListPage> {
  late List<Hotel> hotels = [];
  bool hasError = false;
  bool isLoaded = false;
  BodyType type = BodyType.grid;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchHotels();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            tooltip: 'Show list view',
            onPressed: () {
              setState(() {
                type = BodyType.list;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.apps),
            tooltip: 'Show grid view',
            onPressed: () {
              setState(() {
                type = BodyType.grid;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _Body(
          hasError: hasError,
          isLoaded: isLoaded,
          type: type,
          hotels: hotels,
        ),
      ),
    );
  }

  Future<void> fetchHotels() async {
    try {
      final data = await Application.api.getHotels();

      setState(() {
        hasError = false;
        isLoaded = true;
        hotels = data;
      });
    } on Exception catch (_) {
      setState(() {
        hasError = true;
        isLoaded = true;
        hotels = [];
      });
    }
  }
}

class _Body extends StatelessWidget {
  final List<Hotel> hotels;
  final bool hasError;
  final bool isLoaded;
  final BodyType type;

  const _Body({
    required this.hotels,
    required this.hasError,
    required this.isLoaded,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return const UnavailableContentErrorStatusView();
    }

    if (isLoaded) {
      if (BodyType.list == type) {
        return _HotelsListView(
          hotels: hotels,
        );
      }

      if (BodyType.grid == type) {
        return _HotelsGridView(
          hotels: hotels,
        );
      }
    }

    return const LoadingStatusView();
  }
}

class _HotelsListView extends StatelessWidget {
  final List<Hotel> hotels;

  const _HotelsListView({
    required this.hotels,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hotels.length,
      itemBuilder: (context, index) {
        final hotel = hotels[index];

        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 180,
          ),
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(borderRadius),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 8,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: borderRadius,
                        topRight: borderRadius,
                      ),
                      child: SizedBox.expand(
                        child: Image.asset(
                          hotel.poster.path,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(hotel.name),
                          ElevatedButton(
                            onPressed: () {
                              Application.router.navigateTo(
                                context,
                                HotelDetailsPage.prepareRouteParams(hotel.uuid),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Подробнее',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _HotelsGridView extends StatelessWidget {
  final List<Hotel> hotels;

  const _HotelsGridView({
    required this.hotels,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisExtent: 170,
      ),
      itemCount: hotels.length,
      itemBuilder: (context, index) {
        final hotel = hotels[index];

        return Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(borderRadius),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 6,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: borderRadius,
                    topRight: borderRadius,
                  ),
                  child: SizedBox.expand(
                    child: Image.asset(
                      hotel.poster.path,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 32,
                          ),
                          child: Text(
                            hotel.name,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Application.router.navigateTo(
                            context,
                            HotelDetailsPage.prepareRouteParams(hotel.uuid),
                          );
                        },
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: borderRadius,
                              bottomRight: borderRadius,
                            ),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Center(
                              child: Text(
                                'Подробнее',
                                style: TextStyle(color: Colors.white),
                              ),
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
      },
    );
  }
}
