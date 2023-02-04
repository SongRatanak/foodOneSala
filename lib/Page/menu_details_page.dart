import 'package:flutter/material.dart';
import 'package:food_delivery_onesala/common/constants.dart';
import 'package:food_delivery_onesala/common/image_string.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../component/titile_see_all.dart';
import 'testimonial_page.dart';

class MenuDetailPage extends StatefulWidget {
  const MenuDetailPage({Key? key}) : super(key: key);

  static const String routeName = '/menu_details';

  @override
  State<MenuDetailPage> createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.55,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(tRestaurantProfileImage),
                fit: BoxFit.cover,
              )),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.3,
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
            ),
          ),
          SlidingUpPanel(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            maxHeight: MediaQuery.of(context).size.height * 0.95,
            minHeight: MediaQuery.of(context).size.height * 0.6,
            body: Container(
              color: Colors.transparent,
            ),
            panelBuilder: (ScrollController controller) {
              return _panelBody(controller, context);
            },
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add to chat',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.shopping_basket,
                      size: 20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  SingleChildScrollView _panelBody(ScrollController controller, context) {
    return SingleChildScrollView(
      controller: controller,
      physics: const ClampingScrollPhysics(),
      child: Container(
        //height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Center(
                  child: Container(
                    height: 2.5,
                    width: 40,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFF23A757),
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 5),
                        child: Text(
                          'Popular',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: const Color(0xFF23A757),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                            size: 20,
                          ),
                        )),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: primaryColor,
                            size: 20,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lovy Food Restaurant',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.redAccent,
                                size: 20,
                              ),
                            )),
                          ),
                          Text(
                            '3 km',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: neutral2Color,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.star_half,
                                color: Colors.redAccent,
                                size: 20,
                              ),
                            )),
                          ),
                          Text(
                            '4.8 rating',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: neutral2Color,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        tStringRestaurant,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: neutral2Color,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
                containerTitle(
                  context,
                  title: 'Kale ',
                ),
                containerTitle(
                  context,
                  title: 'Spinach',
                ),
                containerTitle(
                  context,
                  title: 'Melon',
                ),
                containerTitle(
                  context,
                  title: 'Strawberry',
                ),
                containerTitle(
                  context,
                  title: 'Lettuce',
                ),
                containerTitle(
                  context,
                  title: 'Cucumber',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    tStringRestaurant,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: neutral2Color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                TitleSectionWidget(
                  leadingText: "Testimonials",
                  trailingText: "See all",
                  onTap: () {
                    Navigator.pushNamed(context, TestimonialPage.routeName);
                  },
                ),
                const TestimonialsItem(
                  imagePath: tJennyImage,
                  name: 'Jenny Wilson',
                  date: 'December 20, 2021',
                  subtitle:
                      'The food is very delicious and the service is satisfying! Love it!',
                  rangStar: '5',
                ),
                const TestimonialsItem(
                  imagePath: tJennyImage,
                  name: 'Jenny Wilson',
                  date: 'December 20, 2021',
                  subtitle: 'Extraordinary! love it so much!',
                  rangStar: '6',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container containerTitle(context, {required title}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: neutral2Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RestaurantProfile extends StatelessWidget {
  const RestaurantProfile({
    Key? key,
    this.index = 0,
    required this.title,
    required this.imagePath,
    required this.subtitle,
  }) : super(key: key);

  final int? index;
  final String title;
  final String imagePath;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      margin: EdgeInsets.only(
        right: 10,
        bottom: 10,
        left: index == 0 ? 16 : 0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: primaryColor,
                ),
          ),
        ],
      ),
    );
  }
}

class TestimonialsItem extends StatelessWidget {
  const TestimonialsItem({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.date,
    required this.subtitle,
    required this.rangStar,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final String date;
  final String subtitle;
  final String rangStar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //height: 80,
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 28,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: neutral2Color,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: neutral2Color,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  rangStar,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
