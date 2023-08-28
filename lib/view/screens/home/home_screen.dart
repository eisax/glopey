import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gloyey/helper/route_helper.dart';
import 'package:gloyey/util/app_constants.dart';
import 'package:gloyey/view/screens/home/widget/button.dart';
import 'package:gloyey/view/screens/transaction/widget/transaction_widget.dart';
import 'package:gloyey/view/widgets/card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Theme.of(context).highlightColor,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.4,
                  color: AppConstants.mainColor,
                ),
                Expanded(
                  child: Container(
                    width: Get.width,
                    height: Get.height * 0.4,
                    color: Theme.of(context).highlightColor,
                  ),
                )
              ],
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.only(top: Get.height * 0.05),
                width: Get.width,
                height: Get.height,
                child: Column(
                  children: [
                    Container(
                      width: Get.width * 0.9,
                      height: Get.height * 0.06,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Hello",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Kudah Ndhlovu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      height: Get.height * 0.24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          creditCardWidget(
                              Get.width * 0.5, Get.width * 0.9, context)
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width * 0.9,
                      height: Get.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.offAllNamed(RouteHelper.topUp),
                            child: blueButtonWidget(
                                "TopUp",
                                FontAwesomeIcons.moneyBill1Wave,
                                AppConstants.mainColor,
                                context),
                          ),
                          Container(
                            width: 0.5,
                            height: 30,
                            color: Colors.grey,
                          ),
                          blueButtonWidget(
                              "Transfer",
                              FontAwesomeIcons.moneyCheck,
                              Colors.orange,
                              context),
                          Container(
                            width: 0.5,
                            height: 30,
                            color: Colors.grey,
                          ),
                          blueButtonWidget("Request", FontAwesomeIcons.bank,
                              Colors.orange, context),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width * 0.9,
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Transaction History",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_outlined,
                                size: 15),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: Get.width * 0.9,
                        margin: EdgeInsets.only(bottom: Get.height * 0.12),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            transactionWidget("income", context),
                            Container(
                              width: Get.width * 0.75,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                            transactionWidget("bills", context),
                            Container(
                              width: Get.width * 0.75,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                            transactionWidget("spending", context),
                            Container(
                              width: Get.width * 0.75,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                            transactionWidget("savings", context),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
