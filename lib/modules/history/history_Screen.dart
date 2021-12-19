import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mycab_user/Language/appLocalizations.dart';
import 'package:mycab_user/constance/themes.dart';
import 'package:mycab_user/modules/rating/rating_Screen.dart';
import 'package:mycab_user/modules/widgets/cardWidget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            color: Theme.of(context).primaryColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top + 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14, left: 14),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14, left: 14, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of('History'),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    AppLocalizations.of('Oct 15,2020'),
                                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 0, right: 14, left: 14),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          gotorating();
                        },
                        child: CardWidget(
                          fromAddress: AppLocalizations.of('465 Swift Village'),
                          toAddress: AppLocalizations.of('105 William St, Chicago, US'),
                          price: "\$75.00",
                          status: AppLocalizations.of('Confirm'),
                          statusColor: HexColor("#3638FE"),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          gotorating();
                        },
                        child: CardWidget(
                          fromAddress: AppLocalizations.of('026 Mitchell Burg Apt. 567'),
                          toAddress: AppLocalizations.of('342 Lottie Views 435'),
                          price: "\$30.00",
                          status: AppLocalizations.of('Completed'),
                          statusColor: HexColor("#55E274"),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          gotorating();
                        },
                        child: CardWidget(
                          fromAddress: AppLocalizations.of('25 Stacy Falls Suite 453'),
                          toAddress: AppLocalizations.of('090 Joaquian isle Suite 76'),
                          price: "\$35.00",
                          status: AppLocalizations.of('Cancelled'),
                          statusColor: Theme.of(context).disabledColor,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          gotorating();
                        },
                        child: CardWidget(
                          fromAddress: AppLocalizations.of('465 Swift Village'),
                          toAddress: AppLocalizations.of('105 William St, Chicago, US'),
                          price: "\$75.00",
                          status: AppLocalizations.of('Confirm'),
                          statusColor: HexColor("#3638FE"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  gotorating() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RatingScreen(),
      ),
    );
  }
}
