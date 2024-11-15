import 'package:exchange/features/presentations/widgets/buy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class OrderBooksTab extends StatefulWidget {
  const OrderBooksTab({super.key});

  @override
  State<OrderBooksTab> createState() => _OrderBooksTabState();
}


final Color backgroundColor = Color(0xff121212);
final Color priceColor = Color(0xff00c076);
final Color color = Color(0xff201719);
final Color barColor = Color(0xff004d40);
final Color textColor = Colors.white;

class _OrderBooksTabState extends State<OrderBooksTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Theme.of(context).colorScheme.onSurface,

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Theme.of(context).colorScheme.onError),
                      child: const Image(
                        image: AssetImage("assets/images/pngs/Frame.png"),
                        width: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Image(
                      image: AssetImage("assets/images/pngs/Frame.png"),
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Image(
                      image: AssetImage("assets/images/pngs/Frame.png"),
                      width: 15,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onError,

                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(color: Theme.of(context).colorScheme.background),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Theme.of(context).colorScheme.background,

                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Color(0xff959ea8),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "(USDT)",
                      style: TextStyle(
                          color: Color(0xff959ea8),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Amounts",
                      style: TextStyle(
                          color: Color(0xff959ea8),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "(BTC)",
                      style: TextStyle(
                          color: Color(0xff959ea8),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Color(0xff959ea8),
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            )),

            const SizedBox(
              height: 20,
            ),
            // PriceDisplay()
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ), 55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 100,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                    TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 80,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground,fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground,fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 400,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle(color:Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '36920.12',
                        style: TextStyle(color: priceColor, fontSize: 16,fontWeight: FontWeight.w600),
                      ),
                      Icon(Iconsax.arrow_up_3, size: 16, color: priceColor),
                      Text(
                        '36920.12',
                        style: TextStyle(
                            color:Theme.of(context).colorScheme.background, fontSize: 16,fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: priceColor, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: barColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 400,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: priceColor, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: barColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 180,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: priceColor, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: barColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 150,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: priceColor, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: barColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '36920.12',
                          style: TextStyle(color: priceColor, fontSize: 16),
                        ),
                        55.horizontalSpace,
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: barColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  width: 150,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "0.758965",
                                      style: TextStyle(
                                          color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "28,020.98",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyle( color: Theme.of(context).colorScheme.onBackground, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


