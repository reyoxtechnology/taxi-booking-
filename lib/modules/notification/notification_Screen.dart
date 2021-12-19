import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycab_user/Language/appLocalizations.dart';
import 'package:mycab_user/constance/themes.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 150,
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
                          AppLocalizations.of('Notifications'),
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.2),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: Icon(
                            Icons.check_circle,
                            color: HexColor("#4252FF"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of('System'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              AppLocalizations.of('Booking #1234 has been succsess.'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Icon(
                                FontAwesomeIcons.ticketAlt,
                                size: 22,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('Promotion'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                AppLocalizations.of('Invite friends-GEt 3 coupens each!'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  color: Theme.of(context).textTheme.headline6!.color,
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
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Icon(
                                FontAwesomeIcons.ticketAlt,
                                size: 22,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('Promotion'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                AppLocalizations.of('Invite friends-GEt 3 coupens each!'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  color: Theme.of(context).textTheme.headline6!.color,
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
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: HexColor("#F52C56"),
                              radius: 12,
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Theme.of(context).backgroundColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of('System'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              AppLocalizations.of('Booking #156 has been cancelled.'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: const Center(
                            child: Icon(
                              FontAwesomeIcons.wallet,
                              size: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of('System'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              AppLocalizations.of('Thank you Your transaction is done'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.1),
                          radius: 24,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Icon(
                                FontAwesomeIcons.ticketAlt,
                                size: 22,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of('Promotion'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.headline6!.color,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                AppLocalizations.of('Invite friends-GEt 3 coupens each!'),
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                  color: Theme.of(context).textTheme.headline6!.color,
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
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 16,
          )
        ],
      ),
    );
  }
}
