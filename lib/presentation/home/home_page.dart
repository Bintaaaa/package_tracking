import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:latihan_clean_code/presentation/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  List<dynamic> _package = [
    {
      'title': 'Cek Status Pengiriman',
      'image': 'assets/images/cek-resi.jpg',
      'description': 'Ekspedisi Lokal!',
      'route': '/'
    },
    {
      'title': 'Cek Harga Pengiriman',
      'image': 'assets/images/cek-harga.jpg',
      'description': 'Ekspedisi Lokal!',
      'route': '/location'
    },
    {
      'title': 'Cek Invoice Tanpabatas',
      'image': 'assets/images/cek-tanpabatas.jpg',
      'description': 'Khusus Customer Tanpabatas!',
      'route': '/'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              _package[_currentIndex]['image'],
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black,
                      Colors.black,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 500.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.65,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: _package.map(
                  (package) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 20),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        package['image'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  package['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  package['description'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () => context.router
                                      .pushNamed(package['route'].toString()),
                                  child: Text("Pergi Sekarang"),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) =>
                                          states.contains(MaterialState.pressed)
                                              ? Colors.greenAccent
                                              : Colors.greenAccent,
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
