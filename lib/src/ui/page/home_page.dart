// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_blibli_clone/src/shared/theme.dart';
import 'package:flutter_blibli_clone/src/ui/common_widget/custom_carousel_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          color: whiteColor,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.only(
                left: 10,
              ),
              hintText: "Cari produk",
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueColor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        leading: Icon(
          Icons.flip,
          color: blackColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: blackColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomLocationWidget(),
            const SizedBox(
              height: 20,
            ),
            const CustomCarouselSliderWidget(),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.green,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MenuButton(
                    image: 'assets/icon/ic_all.png',
                    label: 'semua dkddkdokdpkpd',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String image;
  final String label;

  const MenuButton({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: greyColor,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

class CustomLocationWidget extends StatelessWidget {
  const CustomLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: greyColor,
          ),
          RichText(
            text: TextSpan(
              text: "Kirim ke: ",
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "RUMAH, Toni, A atau Intan",
                  style: blackTextStyle.copyWith(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.expand_more,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
