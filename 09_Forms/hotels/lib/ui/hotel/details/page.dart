import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotels/config/application.dart';
import 'package:hotels/domain/entity/hotel_details.dart';
import 'package:hotels/ui/status_view/status_view.dart';
import 'package:uuid/uuid.dart';

class HotelDetailsPage extends StatefulWidget {
  static const routeName = '/hotel/:uuid/details';

  final UuidValue uuid;

  const HotelDetailsPage({required this.uuid, Key? key}) : super(key: key);

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();

  static String prepareRouteParams(UuidValue uuid) => '/hotel/${uuid.uuid}/details';
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  HotelDetails? hotelDetails;
  bool hasError = false;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchHotelDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? title;
    final hotelDetails = this.hotelDetails;
    if (hotelDetails != null) {
      title = Text(hotelDetails.hotel.name);
    }

    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: _Body(
        hasError: hasError,
        isLoaded: isLoaded,
        hotelDetails: hotelDetails,
      ),
    );
  }

  Future<void> fetchHotelDetails() async {
    try {
      final data = await Application.api.getHotelDetails(widget.uuid);

      setState(() {
        hasError = false;
        isLoaded = true;
        hotelDetails = data;
      });
    } on Exception catch (_) {
      setState(() {
        hasError = true;
        isLoaded = true;
        hotelDetails = null;
      });
    }
  }
}

class _Body extends StatelessWidget {
  final HotelDetails? hotelDetails;
  final bool hasError;
  final bool isLoaded;

  const _Body({
    required this.hotelDetails,
    required this.hasError,
    required this.isLoaded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return const UnavailableContentErrorStatusView();
    }

    final hotelDetails = this.hotelDetails;
    if (isLoaded && hotelDetails != null) {
      return Column(
        children: [
          _PhotosCarouselSlider(
            hotelDetails: hotelDetails,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
            child: Column(
              children: [
                _CommonInfo(
                  hotelDetails: hotelDetails,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Сервисы',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                _Services(
                  hotelDetails: hotelDetails,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return const LoadingStatusView();
  }
}

class _PhotosCarouselSlider extends StatelessWidget {
  final HotelDetails hotelDetails;

  const _PhotosCarouselSlider({required this.hotelDetails, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 160.0,
        viewportFraction: 0.6,
      ),
      items: hotelDetails.photos.map((photo) {
        return Builder(
          builder: (context) {
            return Container(
              // width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(width: 400),
                child: Image.asset(
                  photo.path,
                  fit: BoxFit.fitWidth,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class _CommonInfo extends StatelessWidget {
  final HotelDetails hotelDetails;

  const _CommonInfo({required this.hotelDetails, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final address = hotelDetails.address;
    final rating = hotelDetails.rating;

    return Column(
      children: [
        _CommonInfoData(
          label: 'Страна',
          data: address.country,
        ),
        _CommonInfoData(
          label: 'Город',
          data: address.city,
        ),
        _CommonInfoData(
          label: 'Улица',
          data: address.street,
        ),
        _CommonInfoData(
          label: 'Рейтинг',
          data: rating.toString(),
        ),
      ],
    );
  }
}

class _CommonInfoData extends StatelessWidget {
  final String label;
  final String data;
  const _CommonInfoData({
    required this.label,
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text('$label: '),
          Text(
            data,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _Services extends StatelessWidget {
  final HotelDetails hotelDetails;

  const _Services({required this.hotelDetails, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final services = hotelDetails.services;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _ServiceColumn(
            title: 'Платные',
            services: services.paid,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: _ServiceColumn(
            title: 'Бесплатно',
            services: services.free,
          ),
        ),
      ],
    );
  }
}

class _ServiceColumn extends StatelessWidget {
  final String title;
  final List<String> services;

  const _ServiceColumn({required this.title, required this.services, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
        for (var service in services)
          Text(
            service,
          ),
      ],
    );
  }
}
