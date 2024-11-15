import 'package:exchange/features/presentations/screens/charts.dart';
import 'package:exchange/features/presentations/screens/orderbooks.dart';
import 'package:exchange/features/presentations/screens/recent_trades.dart';
import 'package:exchange/features/presentations/widgets/btc_usdt.dart';
import 'package:exchange/features/presentations/widgets/buy_widget.dart';
import 'package:exchange/features/presentations/widgets/dialogs.dart';
import 'package:exchange/features/theme/pallets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _controller = TabController(length: 3, vsync: this);
  late TabController _controller2 = TabController(length: 3, vsync: this);

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        shadowColor: Colors.grey.withOpacity(0.5),

        title: Image(
          image: AssetImage("assets/images/pngs/logo(1).png"),
          width: 120,
        ),
        actions: [
          Image(
            image: AssetImage("assets/images/pngs/profile.png"),
            width: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.language,
            color: Theme.of(context).colorScheme.background,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.sort,
            color: Theme.of(context).colorScheme.background,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              BTC_USDT(),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Theme.of(context).colorScheme.onSurface,
                    border: Border.all(color: Colors.grey.withOpacity(0.5))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onError,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.1))),
                        child: TabBar(
                            isScrollable: false,
                            // indicatorPadding: EdgeInsets.all(-4),
                            indicatorPadding: EdgeInsets.zero,
                            tabAlignment: TabAlignment.fill,
                            labelColor:
                                Theme.of(context).colorScheme.onBackground,
                            unselectedLabelColor:
                                Theme.of(context).colorScheme.onBackground,
                            controller: _controller,
                            dividerColor: Colors.transparent,
                            indicatorSize:TabBarIndicatorSize.tab ,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            indicator: ShapeDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            tabs: const [
                              Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text("Charts",style: TextStyle(fontSize: 10),),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text("Orderbook",style: TextStyle(fontSize: 10),),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                                child: Text("Recent trades",style: TextStyle(fontSize: 10),),
                              ),
                            ]),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 485,
                      child:
                          TabBarView(controller: _controller, children: const [
                        ChartsTab(),
                        OrderBooksTab(),
                        RecentTradesTab(),
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Theme.of(context).colorScheme.onSurface,
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  child: Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSurface,
                      // border: Border.all(color: Colors.grey.withOpacity(0.5))

                    ),
                    child: TabBar(
                        isScrollable: false,
                        indicatorPadding: EdgeInsets.zero,
                        tabAlignment: TabAlignment.fill,
                        labelColor:
                        Theme.of(context).colorScheme.onBackground,
                        unselectedLabelColor:
                        Theme.of(context).colorScheme.onBackground,
                        controller: _controller2,
                        dividerColor: Colors.transparent,
                        indicatorSize:TabBarIndicatorSize.tab ,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        indicator: ShapeDecoration(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),),
                        ),
                        tabs: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Open Orders",style: TextStyle(fontSize: 10),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text("Position",style: TextStyle(fontSize: 13),),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("Recent",style: TextStyle(fontSize: 13),),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 300,
                child: TabBarView(controller: _controller2, children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "No Open Orders",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id pulvinar nullam sit imperdiet pulvinar.",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Theme.of(context).colorScheme.onSurface,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "No Open Orders",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id pulvinar nullam sit imperdiet pulvinar.",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Theme.of(context).colorScheme.onSurface,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "No Open Orders",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id pulvinar nullam sit imperdiet pulvinar.",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              30.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          // CustomDialogs.showBottomSheet(context, BuyWidget());
                          showModalBottomSheet(
                         constraints: BoxConstraints(minHeight: 0.8.sh),
                              // barrierColor: Colors.transparent
                              // ,
                              backgroundColor: Colors.transparent,
                              elevation: 2,
                              scrollControlDisabledMaxHeightRatio:0.8.sh ,
                              context: context,
                              builder: (index) => BuyWidget());
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          foregroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledBackgroundColor: Colors.transparent,
                          backgroundColor: Color(0xff00c076),
                        ),
                        child: Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          foregroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledBackgroundColor: Colors.transparent,
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          "Sell",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
