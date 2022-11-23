import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indosat_ui/core/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> menuImgMapTop = {
    "images/menu_pulsa.svg": "Pulsa",
    "images/menu_telpon.svg": "Telpon dan Air",
    "images/menu_listrik.svg": "Listrik",
    "images/menu_game.svg": "Game",
    "images/menu_donasi.svg": "Donasi",
  };

  Map<String, String> menuImgMapBottom = {
    "images/menu_asuransi.svg": "Asuransi",
    "images/menu_investasi.svg": "Investasi",
    "images/menu_bpjs.svg": "BPJS",
    "images/menu_lainnya.svg": "Kontrol Orang Tua",
    "images/menu_game.svg": "Lainnya",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi, Jono"),
        actions: [
          Container(
            color: secondaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Upgrade',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height / 2.7,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 217, 217, 217),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 8.0,
                    spreadRadius: 1),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width - 100, 85.0)),
            ),
          ),
          Positioned(
            right: -100,
            top: -120,
            height: 400,
            child: Image.asset(
              "images/texture_home.png",
              opacity: const AlwaysStoppedAnimation(.5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                        gradient: primaryGradientColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            'images/menu_asuransi.svg',
                            width: 20,
                            height: 40,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Saldo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              "Rp 100.0000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "poppins",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "images/menu_bayar.svg",
                          height: 54,
                          width: 54,
                        ),
                        const Expanded(
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                        ),
                        SvgPicture.asset(
                          "images/menu_transfer.svg",
                          height: 54,
                          width: 54,
                        ),
                        const Expanded(
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                        ),
                        SvgPicture.asset(
                          "images/menu_topup.svg",
                          height: 54,
                          width: 54,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: menuImgMapTop.entries.map((e) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(90),
                                    ),
                                    child: SvgPicture.asset(
                                      e.key,
                                    ),
                                  ),
                                  Container(
                                    width: 54,
                                    child: Text(
                                      e.value,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: textColorPrimary,
                                          fontSize: 12,
                                          fontFamily: "poppins"),
                                    ),
                                  )
                                ],
                              );
                            }).toList()),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: menuImgMapBottom.entries.map((e) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 54,
                                  width: 54,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                  child: SvgPicture.asset(
                                    e.key,
                                  ),
                                ),
                                Container(
                                  width: 54,
                                  child: Text(
                                    e.value,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: textColorPrimary,
                                        fontSize: 12,
                                        fontFamily: "poppins"),
                                  ),
                                )
                              ],
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 200, width: double.infinity, child: Iklanslider())
                  // CarouselSlider(
                  //   options: CarouselOptions(autoPlay: true),
                  //   items: [
                  //     Container(
                  //       color: Colors.black,
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Icon(Icons.person),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Iklanslider extends StatefulWidget {
  @override
  _IklansliderState createState() => _IklansliderState();
}

class _IklansliderState extends State<Iklanslider> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final List<String> iklanList = [
      'https://i.imgur.com/ZKHojKJ.png',
      'https://i.imgur.com/VneBBn8.png',
      'https://i.imgur.com/Zm5Redm.png',
      'https://i.imgur.com/oes1dks.png'
    ];
    final pages = List.generate(
        iklanList.length,
        (index) => Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Card(
                margin: EdgeInsets.symmetric(horizontal: 15),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Image.network(
                  iklanList[index],
                  fit: BoxFit.fill,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ))));
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 100.5,
              child: PageView.builder(
                controller: controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            Positioned(
                bottom: 0,
                right: 18,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 15),
                  child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: ExpandingDotsEffect(
                          spacing: 5,
                          expansionFactor: 2,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: Colors.grey,
                          activeDotColor: bottomNavSelected)),
                )),
          ],
        ),
      ),
    );
  }
}
