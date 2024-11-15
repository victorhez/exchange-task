import 'package:exchange/features/presentations/screens/charts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BTC_USDT extends StatefulWidget {
  const BTC_USDT({super.key});

  @override
  State<BTC_USDT> createState() => _BTC_USDTState();
}

class _BTC_USDTState extends State<BTC_USDT> {
  String selectedPair = "BTC/USDT";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Theme.of(context).colorScheme.onSurface,
          border: Border.all(color: Colors.grey.withOpacity(0.5))),
      child: Column(
        children: [
          Row(
            children: [
              const Image(
                image: AssetImage("assets/images/pngs/coins.png"),
                width: 50,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                selectedPair,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              PopupMenuButton<String>(
                color: Theme.of(context).colorScheme.surface,
                onSelected: (value) {
                  setState(() {
                    selectedPair = value;
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "BTC/USDT",
                    child: Text("BTC/USDT",style: TextStyle(color: Theme
                        .of(context)
                        .colorScheme
                        .onBackground,),),
                  ),
                  PopupMenuItem(
                    value: "ETH/USDT",
                    child: Text("ETH/USDT",style: TextStyle(color: Theme
                        .of(context)
                        .colorScheme
                        .onBackground,),),
                  ),
                  PopupMenuItem(
                    value: "BNB/USDT",
                    child: Text("BNB/USDT",style: TextStyle(color: Theme
        .of(context)
        .colorScheme
        .onBackground,),),
                  ),
                  PopupMenuItem(
                    value: "BTC/ETH",
                    child: Text("BTC/ETH",style: TextStyle(color: Theme
                        .of(context)
                        .colorScheme
                        .onBackground,),),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "\$20,634",
                style: const TextStyle(
                  color: Color(0xff00c076),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          15.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Theme.of(context).colorScheme.background,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "24h change",
                        style: TextStyle(
                            color: Color(0xff8d98af),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "520.80 +1.25%",
                    style: TextStyle(
                        color: Color(0xff00c076),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 60,
                child: VerticalDivider(
                  width: 2,
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.arrow_up_3,
                        color: Color(0xff8d98af),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "24h high",
                        style: TextStyle(
                            color: Color(0xff8d98af),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "520.80 +1.25%",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 60,
                child: VerticalDivider(
                  width: 2,
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.arrow_down,
                        color: Color(0xff8d98af),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "24h low",
                        style: TextStyle(
                            color: Color(0xff8d98af),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "520.80 +1.25%",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}