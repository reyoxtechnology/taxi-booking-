import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycab_user/Language/appLocalizations.dart';
import 'package:mycab_user/constance/constance.dart';
import 'package:mycab_user/constance/routes.dart';
import 'package:mycab_user/modules/history/history_Screen.dart';
import 'package:mycab_user/modules/inviteFriends/inviteFriends_Screen.dart';
import 'package:mycab_user/modules/notification/notification_Screen.dart';
import 'package:mycab_user/modules/setting/setting_Screen.dart';
import 'package:mycab_user/modules/wallet/myWallet.dart';


class AppDrawer extends StatefulWidget {
  final String? selectItemName;

  const AppDrawer({Key? key, this.selectItemName}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                height: 200,
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: -150,
                      right: -10,
                      top: -800,
                      bottom: 80,
                      child: SizedBox(
                        height: 800,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500),
                          ),
                          margin: const EdgeInsets.all(0),
                          color: Colors.black.withOpacity(0.06),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -200,
                      right: 110,
                      top: -50,
                      bottom: -5,
                      child: SizedBox(
                        height: 400,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500),
                          ),
                          margin: const EdgeInsets.all(0),
                          color: Colors.black.withOpacity(0.06),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        color: Theme.of(context).cardColor,
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            ConstanceData.userImage,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      AppLocalizations.of("Larry Davis"),
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of("Cash"),
                                  style: Theme.of(context).textTheme.button!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).textTheme.headline6!.color,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "2500",
                                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      children: <Widget>[
                        widget.selectItemName == 'Home' ? selectedData() : const SizedBox(),
                        Icon(
                          Icons.home,
                          size: 28,
                          color: widget.selectItemName == 'Home' ? Theme.of(context).primaryColor : Theme.of(context).disabledColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppLocalizations.of('Home'),
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.headline6!.color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyWallet(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            widget.selectItemName == 'MyWallet' ? selectedData() : const SizedBox(),
                            Icon(
                              FontAwesomeIcons.wallet,
                              size: 20,
                              color: widget.selectItemName == 'MyWallet'
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('My Wallet'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            widget.selectItemName == 'History' ? selectedData() : const SizedBox(),
                            Icon(
                              FontAwesomeIcons.history,
                              size: 20,
                              color: widget.selectItemName == 'History'
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('History'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            widget.selectItemName == 'Notification' ? selectedData() : const SizedBox(),
                            Icon(
                              FontAwesomeIcons.solidBell,
                              size: 20,
                              color: widget.selectItemName == 'Notification'
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('Notification'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InviteFriendsScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            widget.selectItemName == 'Invite' ? selectedData() : const SizedBox(),
                            Icon(
                              FontAwesomeIcons.gifts,
                              size: 18,
                              color: widget.selectItemName == 'Invite'
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('Invite Friends'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            widget.selectItemName == 'Setting' ? selectedData() : const SizedBox(),
                            Icon(
                              FontAwesomeIcons.cog,
                              size: 20,
                              color: widget.selectItemName == 'Setting'
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('Setting'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, Routes.INTRODUCTION, (Route<dynamic> route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.signOutAlt,
                              size: 20,
                              color: Theme.of(context).disabledColor.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of('Logout'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget selectedData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 28,
          width: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
