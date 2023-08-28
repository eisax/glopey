import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gloyey/helper/route_helper.dart';
import 'package:gloyey/util/app_constants.dart';
import 'package:gloyey/view/screens/home/widget/button.dart';
import 'package:gloyey/view/screens/transaction/widget/transaction_widget.dart';
import 'package:gloyey/view/widgets/amount_textfield.dart';
import 'package:gloyey/view/widgets/card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopupScreen extends StatefulWidget {
  const TopupScreen({super.key});

  @override
  State<TopupScreen> createState() => _TopupScreenState();
}

class _TopupScreenState extends State<TopupScreen> {
  myFunction(String arg) {
    // ...
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Theme.of(context).highlightColor,
        padding: EdgeInsets.only(top: Get.height * 0.05),
        child: Column(
          children: [
            Container(
              width: Get.width * 0.9,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.offAllNamed(RouteHelper.bottomBar),
                    icon: const Icon(
                      FontAwesomeIcons.xmark,
                      color: Color(0xFF121212),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Color(0xFF121212),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Get.width * 0.3,
              width: Get.width * 0.3,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(Get.width * 0.3),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/image/face.jpeg'),
                radius: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * 0.9,
              child: Column(
                children: [
                  const Text(
                    'Paying Kudah Ndhlovu',
                    style: TextStyle(
                      color: AppConstants.mainColor,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '24******37',
                    style: TextStyle(
                      color: AppConstants.mainColor,
                      fontSize: 16.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.3,
                    padding: EdgeInsets.all(10),
                    child: const Center(
                      child: CustomAmountField(
                        fontSize: 40,
                        hintText: "0.00",
                        isAmount: true,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        color: Theme.of(context).highlightColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppConstants.mainColor,
                textStyle: const TextStyle(
                    color: Colors.white, fontStyle: FontStyle.normal),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                shadowColor: AppConstants.mainColor,
              ),
              onPressed: () async {},
              child: const Text(
                'Top Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
