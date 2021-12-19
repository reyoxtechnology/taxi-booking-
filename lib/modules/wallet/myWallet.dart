import 'package:mycab_user/constance/global.dart' as globals;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycab_user/Language/appLocalizations.dart';
import 'package:mycab_user/constance/constance.dart';
import 'package:mycab_user/constance/themes.dart';
import 'package:mycab_user/modules/setting/myProfile.dart';
import 'package:mycab_user/modules/wallet/paymentMethod.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 234,
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
                          AppLocalizations.of('My Wallet'),
                          style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          elevation: 0,
                          color: Colors.grey.shade200.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, left: 8, top: 4, bottom: 4),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  ConstanceData.coin,
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "2500",
                                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Center(
                          child: Card(
                            color: globals.isLight ? HexColor("#EEF3F1") : Colors.black.withOpacity(0.8),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                        child: Center(
                          child: Card(
                            color: globals.isLight ? HexColor("#EEF3F1") : Colors.black.withOpacity(0.8),
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14, left: 14, top: 20),
                        child: Center(
                          child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  color: Theme.of(context).dividerColor.withOpacity(0.1),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16, bottom: 8, left: 24, right: 24),
                                    child: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundColor: Theme.of(context).primaryColor,
                                          radius: 30,
                                          child: CircleAvatar(
                                            backgroundColor: Theme.of(context).backgroundColor,
                                            radius: 14,
                                            child: Icon(
                                              FontAwesomeIcons.dollarSign,
                                              color: Theme.of(context).primaryColor,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                AppLocalizations.of('Cash'),
                                                style: Theme.of(context).textTheme.headline5!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                AppLocalizations.of('Default Payment Method'),
                                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context).disabledColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Theme.of(context).dividerColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of('BALANCE'),
                                            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).disabledColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "\$2500",
                                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: HexColor("#F71B47"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of('EXPIRES'),
                                            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).disabledColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "09/21",
                                            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 4,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Theme.of(context).dividerColor,
                        radius: 4,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Theme.of(context).dividerColor,
                        radius: 4,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMethod(),
                      ),
                    );
                  },
                  child: MyAccountInfo(
                    headText: AppLocalizations.of('Payment Methods'),
                    subtext: "",
                  ),
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                MyAccountInfo(
                  headText: AppLocalizations.of('Coupon'),
                  subtext: "3",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 1,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                MyAccountInfo(
                  headText: AppLocalizations.of('Integral Mall'),
                  subtext: "4500",
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget confirmDriverBox(context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: globals.isLight ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.2),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 0,
            left: 0,
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: globals.isLight ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.2),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: globals.isLight ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Theme.of(context).dividerColor.withOpacity(0.03),
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              ConstanceData.userImage,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('Gregory Smith'),
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[800],
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    AppLocalizations.of('4.9'),
                                    style: Theme.of(context).textTheme.button!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).dividerColor.withOpacity(0.4),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: HexColor("#4353FB"),
                                  child: const Center(
                                    child: Icon(
                                      FontAwesomeIcons.facebookMessenger,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                child: const Center(
                                  child: Icon(
                                    FontAwesomeIcons.phoneAlt,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14, left: 14, top: 10, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              ConstanceData.user1,
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              ConstanceData.user2,
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              ConstanceData.user3,
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            AppLocalizations.of('25 Recommended'),
                            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.5,
                      color: Theme.of(context).disabledColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14, left: 14, top: 10, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            FontAwesomeIcons.car,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('DISTANCE'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).dividerColor.withOpacity(0.4),
                                ),
                              ),
                              Text(
                                AppLocalizations.of('0.2 km'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('TIME'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).dividerColor.withOpacity(0.4),
                                ),
                              ),
                              Text(
                                AppLocalizations.of('0.2 km'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('PRICE'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).dividerColor.withOpacity(0.4),
                                ),
                              ),
                              Text(
                                AppLocalizations.of('\$25.00'),
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Theme.of(context).dividerColor,
                              blurRadius: 8,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                            highlightColor: Colors.transparent,
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Icon(
                                          Icons.check_circle,
                                          size: 80,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        Text(
                                          AppLocalizations.of('Booking Succsessful'),
                                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                            color: Theme.of(context).textTheme.subtitle1!.color,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                                          child: Text(
                                            AppLocalizations.of('Your booking has been confirmed. Driver will pickup you in 2 minutes.'),
                                            style: Theme.of(context).textTheme.caption!.copyWith(
                                              color: Theme.of(context).disabledColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const Divider(
                                          height: 0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 16, left: 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  AppLocalizations.of('Cancel'),
                                                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                                    color: Theme.of(context).disabledColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: Theme.of(context).dividerColor,
                                                width: 0.5,
                                                height: 48,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  AppLocalizations.of('Done'),
                                                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                                    color: Theme.of(context).primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    contentPadding: const EdgeInsets.only(top: 16),
                                  );
                                },
                              );
                            },
                            child: Center(
                              child: Text(
                                AppLocalizations.of('Confirm'),
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
