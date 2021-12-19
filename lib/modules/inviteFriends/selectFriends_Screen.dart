import 'package:flutter/material.dart';
import 'package:mycab_user/Language/appLocalizations.dart';
import 'package:mycab_user/constance/constance.dart';

class SelectFriendScreen extends StatefulWidget {
  @override
  _SelectFriendScreenState createState() => _SelectFriendScreenState();
}

class _SelectFriendScreenState extends State<SelectFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 170,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.only(
                  right: 14,
                  left: 14,
                  top: MediaQuery.of(context).padding.top + 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        AppLocalizations.of('Invite Friends'),
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: TextFormField(
                      autofocus: false,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).textTheme.headline6!.color,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of('Search'),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Esther Berry'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.check_circle,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Samuel Hammond'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.radio_button_unchecked,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user3,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Nellie Scott'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.radio_button_unchecked,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user4,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Rhoda Palmer'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.check_circle,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Shane Morales'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.check_circle,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user6,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Sophie Bell'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.radio_button_unchecked,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user7,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Chester Jennings'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.check_circle,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user8,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Trevor Salazar'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.check_circle,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                ConstanceData.user9,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            AppLocalizations.of('Nellie Scott'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                              Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Icon(
                            Icons.radio_button_unchecked,
                            size: 28,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                        indent: 65,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
