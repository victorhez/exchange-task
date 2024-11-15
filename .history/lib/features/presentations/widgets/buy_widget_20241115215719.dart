
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class BuyWidget extends StatefulWidget {
  const BuyWidget({super.key});

  @override
  State<BuyWidget> createState() => _BuyWidgetState();
}

class _BuyWidgetState extends State<BuyWidget> {


  bool checked =false;
  String selectedOption = "Limit";
  bool _isBuySelected = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration:  BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 50,
                width: 1.sw,
                // padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color:Theme.of(context).colorScheme.onError,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Buy option
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isBuySelected = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 110,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(10),
                          border: _isBuySelected
                              ? Border.all(color: Color(0xff00c076))
                              : Border.all(color: Colors.transparent),
                        ),
                        child:  Text(
                          "Buy",
                          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                    ),
                    60.horizontalSpace,


                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isBuySelected = false;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 49,
                        width: 100,

                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: !_isBuySelected
                              ? Border.all(color: Color(0xff00c076))
                              : Border.all(color: Colors.transparent),
                        ),
                        child:  Text(
                          "Sell",
                          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOption = "Limit";
                      });
                    },
                    child:selectedOption == "Limit" ?
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.5)),
                      child: Text(
                        "Limit",
                        style: TextStyle(
                          color:Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ):
                    Text(
                      "Limit",
                      style: TextStyle(
                        color:Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOption = "Market";
                      });
                    },
                    child: selectedOption == "Market" ?
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(0.5)),
                      child:  Text(
                        "Market",
                        style: TextStyle(
                          color:Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ):Text(
                      "Market",
                      style: TextStyle(
                        color:  Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOption = "Stop_Limit";
                      });
                    },
                    child:selectedOption == "Stop_Limit" ?
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(0.5)),
                      child: Text(
                        "Stop_Limit",
                        style: TextStyle(
                          color:Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ): Text(
                      "Stop_Limit",
                      style: TextStyle(
                        color: selectedOption == "Stop_Limit" ? Theme.of(context).colorScheme.onBackground : Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Limit price",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.background),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.background,
                        size: 15,
                      )
                    ],
                  ),

                  SizedBox(
                    width: 100,
                      child: FilledTextField(hint: "",)),
                  Text(
                    "USD",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color:Theme.of(context).colorScheme.background),
                  )
                ],
              ),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.background),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.background,
                        size: 15,
                      )
                    ],
                  ),
                  SizedBox(
                      width: 100,
                      child: FilledTextField(hint: "",)),
                  Text(
                    "USD",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.background),
                  )
                ],
              ),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Type",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.background),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.info_outline,
                        color:Theme.of(context).colorScheme.background,
                        size: 15,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Good till cancelled",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.background),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 16,
                        color: Theme.of(context).colorScheme.background,
                      )
                    ],
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      checked = !checked; // Toggle the state
                    });
                  },
                  child: Icon(
                    checked
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: Theme.of(context).colorScheme.background,
                    size: 16,
                    weight: 0.5,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Post Only",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.background,
                  size: 16,
                ),
              ],
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(color: Theme.of(context).colorScheme.background),
                ),
                Text(
                  "0.00",
                  style: TextStyle(color:Theme.of(context).colorScheme.background),
                )
              ],
            ),
            10.verticalSpace,
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff483BEB),
                        Color(0xff7847E1),
                        Color(0xffDD568D),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Sell",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            5.verticalSpace,
            Divider(
              color: Colors.grey.withOpacity(0.4),
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total account value",
                  style: TextStyle(color: Theme.of(context).colorScheme.background),
                ),
                Row(
                  children: [
                    Text(
                      "NGN",
                      style: TextStyle(color: Theme.of(context).colorScheme.background),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined,
                        size: 17, color: Theme.of(context).colorScheme.background)
                  ],
                )
              ],
            ),
            8.verticalSpace,
            Text(
              "0.00",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Open Orders",
                  style: TextStyle(color:Theme.of(context).colorScheme.background),

                ),
                Text(
                  "Available",
                  style: TextStyle(color:Theme.of(context).colorScheme.background),

                ),
              ],
            ),
            8.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0.00",
                  style: TextStyle(color:Theme.of(context).colorScheme.background),

                ),
                Text(
                  "0.00",
                  style: TextStyle(color:Theme.of(context).colorScheme.background),
                ),
              ],
            ),
            20.verticalSpace,
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    foregroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    disabledBackgroundColor: Colors.transparent,
                    backgroundColor: Color(0xff483BEB),

                ),
                child: Text(
                  "Buy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}