import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food/controllers/count_controller.dart';
import 'package:food/models/categories/data_categories.dart';
import 'package:food/models/popular/data_popular.dart';
import 'package:food/modules/home/view/Seacrh.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<HomeController>();
    final cart = Get.find<CountController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Logo',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Guest',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Good Afternoon',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.green.shade900,
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 6,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 22,
                            minHeight: 22,
                          ),
                          child: Center(
                            child: Obx(
                              () => Text(
                                '${cart.countCart.value}',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SearchHome(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://media.suara.com/pictures/653x366/2021/08/02/81387-ilustrasi-makanan-cepat-saji-freepik.webp',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All Items',
                    style: TextStyle(color: Colors.amber, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...ctrl.listCategories.map((item) {
                        return CardIcon(
                          dataCategories: item,
                        );
                      }).toList()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Now',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.amber, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 15,
                    children: [
                      ...ctrl.listPopular
                          .map(
                            (element) => CardFood(dataPopular: element),
                          )
                          .toList()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardFood extends StatelessWidget {
  CardFood({
    Key? key,
    required this.dataPopular,
  }) : super(key: key);

  DataPopular dataPopular;

  @override
  Widget build(BuildContext context) {
    final cart = Get.find<CountController>();

    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.green.shade900,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage(dataPopular.image!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataPopular.desc!,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rp. ${dataPopular.price}',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => cart.addCart(),
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class CardIcon extends StatelessWidget {
  CardIcon({
    Key? key,
    required this.dataCategories,
  }) : super(key: key);

  DataCategories dataCategories;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          Image.network(
            dataCategories.image!,
            width: 40,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            dataCategories.desc!,
            style: TextStyle(fontSize: 12),
          ),
        ]),
      ),
    );
  }
}
