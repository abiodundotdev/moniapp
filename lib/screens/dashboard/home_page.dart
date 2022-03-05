import 'dart:math';

import 'package:flutter/material.dart';
import 'package:monitest/constants/constants.dart';
import 'package:monitest/data/usecases/repository/loan_respository_implement.dart';
import 'package:monitest/domain/entities/model/agent.dart';
import 'package:monitest/exception.dart';
import 'package:monitest/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    initiateApiCall();
  }

  void initiateApiCall() async {
    var data = await LoanRepositoryImplement().getData();
    print(data.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverHeaderDelegate(
              builder: (shrinkExtent) {
                return Container(
                  padding: EdgeInsets.fromLTRB(
                      10.0, MediaQuery.of(context).padding.top, 10.0, 0),
                  decoration: BoxDecoration(
                    color: Color.lerp(
                      Colors.black,
                      Colors.white,
                      .2,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AppImage.headerBackgroundImage,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          Text("My Clusters"),
                          SizedBox(),
                        ],
                      ),
                      LineBreak.horizontal(10.0),
                      AppText(
                        "Money dreambig community",
                        fontSize: 20.0,
                        isBold: true,
                      ),
                      LineBreak.horizontal(10.0),
                      Badge(
                        child: Text("Repayment rate  : 60%"),
                      ),
                      LineBreak.horizontal(10.0),
                      Badge(
                        child: Text("Repayment Day  : Every Sunday"),
                      ),
                      LineBreak.horizontal(10.0),
                      const Divider(thickness: 0.0, color: Colors.white),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText("Cluster purse balance"),
                              AppText(
                                "N550,000,000",
                                fontSize: 20.0,
                                isBold: true,
                              ),
                              LineBreak.horizontal(5.0),
                              AppText(
                                "+N550,000,000 interest today",
                                fontSize: 15.0,
                                color: Colors.green,
                                isBold: true,
                              ),
                            ],
                          ),
                          const FilledButton(text: "View Purse")
                        ],
                      ),
                      const Divider(thickness: 0.0, color: Colors.white),
                      AppText("Total interest eranded  N550,000,000"),
                      const Divider(thickness: 0.0, color: Colors.white),
                      AppText("Total owned by members  N550,000,000"),
                    ],
                  ),
                );
              },
            ),
          ),
          DahboardTab()
        ],
      ),
    );
  }

  void handleSubmit() {
    try {
      print("hello");
    } on AppException catch (e, st) {
      print(e.message);
      print(st);
    }
  }
}

class DahboardTab extends StatefulWidget {
  DahboardTab({Key? key}) : super(key: key);

  @override
  State<DahboardTab> createState() => _DahboardTabState();
}

class _DahboardTabState extends State<DahboardTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      TabBar(
        indicatorColor: AppColors.primary,
        labelColor: AppColors.primary,
        controller: _tabController,
        tabs: const [
          Tab(
            text: "Member",
          ),
          Tab(text: "Member"),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height,
        child: TabBarView(
          controller: _tabController,
          children: [
            AppText(
              "Wlcome on board",
              color: Colors.red,
            ),
            AppText("Wlcome on aLLLAYE"),
          ],
        ),
      )
    ]));
  }
}

class FilledButton extends StatelessWidget {
  const FilledButton({Key? key, required this.text, this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey,
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.primary.withOpacity(onTap == null ? .5 : 1)),
          padding: const EdgeInsets.all(10.0),
          child: Text(text),
        ),
      ),
    );
  }
}

class Badge extends StatelessWidget {
  Badge({Key? key, this.color, required this.child}) : super(key: key);
  final Color? color;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: color ?? Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: child,
    );
  }
}

class AgentLoanItemCard extends StatelessWidget {
  const AgentLoanItemCard({Key? key, required this.agentModel})
      : super(key: key);
  final AgentModel agentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Image.asset("name"),
        ),
        title: Row(
          children: [
            AppText(agentModel.firstName + " " + agentModel.lastName),
            AppText("3 days over due")
          ],
        ),
        subtitle: AppText("N500,000"),
      ),
    );
  }
}

class AppText extends StatelessWidget {
  AppText(this.data, {Key? key, this.fontSize, this.color, this.isBold = false})
      : super(key: key);
  final double? fontSize;
  final String data;
  final Color? color;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: fontSize ?? 12.0,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget Function(double shrinkExtent) builder;
  SliverHeaderDelegate({required this.builder});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return builder(shrinkOffset);
  }

  @override
  double get maxExtent => 350;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
