// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_blibli_clone/src/shared/theme.dart';
import 'package:flutter_blibli_clone/src/ui/common_widget/custom_carousel_slider_widget.dart';

import '../common_widget/card_product_flash_sale_widget.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemInfoCardWidget(
                        label: 'Blipay',
                        desc: 'Payletter',
                        value: 'Rp. 351',
                        icon: Icon(
                          Icons.account_balance_wallet,
                          color: blueColor,
                        ),
                      ),
                      const Spacer(),
                      ItemInfoCardWidget(
                        label: 'Platinum',
                        desc: 'Blibli ticket',
                        value: '27.218',
                        icon: Icon(
                          Icons.stars,
                          color: blackColor,
                        ),
                      ),
                      const Spacer(),
                      const ItemInfoCardWidget(
                        label: 'Voucher',
                        desc: 'Diskon',
                        value: 'Rp. 351',
                        icon: Icon(
                          Icons.monetization_on,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          MenuButton(
                            image: 'assets/icon/ic_all.png',
                            label: 'Semua',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_bill.png',
                            label: 'Tagihan',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_chart_blibli.png',
                            label: 'Bliblimart',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_phone.png',
                            label: 'Pulsa',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_voucher.png',
                            label: 'Pulsa',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_tiket.png',
                            label: 'Tiket',
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          MenuButton(
                            image: 'assets/icon/ic_tiket.png',
                            label: 'Tiket',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_promo.png',
                            label: 'Promo',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_official_store.png',
                            label: 'Official',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_2x.png',
                            label: 'Reward',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_barter.png',
                            label: 'Barter',
                          ),
                          MenuButton(
                            image: 'assets/icon/ic_ramadhan.png',
                            label: 'Ramadhan',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/banner_promo.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon/ic_flash_sale.png',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '02:17:39',
                        style: redTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Lihat Semua",
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      CardProductFlashSaleWidget(
                        discount: '17',
                        discountPrice: 'Rp. 13.000',
                        image: 'assets/images/product1.png',
                        percentSales: '20%',
                        price: '18.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '17',
                        discountPrice: 'Rp. 19.000',
                        image: 'assets/images/product2.png',
                        percentSales: '70%',
                        price: '18.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '9',
                        discountPrice: 'Rp. 18.000',
                        image: 'assets/images/product3.png',
                        percentSales: '50%',
                        price: '22.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '21',
                        discountPrice: 'Rp. 28.000',
                        image: 'assets/images/product4.png',
                        percentSales: '87%',
                        price: '38.000',
                      ),
                    ],
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

class ItemInfoCardWidget extends StatelessWidget {
  final String label;
  final String value;
  final String desc;
  final Widget icon;

  const ItemInfoCardWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.desc,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              label,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: blackTextStyle.copyWith(
            fontSize: 17,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: greyTextStyle.copyWith(
            fontSize: 14,
          ),
        )
      ],
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
      decoration: const BoxDecoration(
          // color: greyColor,
          ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 30,
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
