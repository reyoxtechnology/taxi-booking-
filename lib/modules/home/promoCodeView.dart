import 'package:flutter/material.dart';
import 'package:mycab_user/Language/appLocalizations.dart';

class PromoCodeView extends StatefulWidget {
  const PromoCodeView({Key? key}) : super(key: key);

  @override
  _PromoCodeViewState createState() => _PromoCodeViewState();
}

class _PromoCodeViewState extends State<PromoCodeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Card(
          elevation: 16,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Theme.of(context).dividerColor.withOpacity(0.03),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of('   Promo Code'),
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.close),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Theme.of(context).disabledColor,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(38)),
                    border: Border.all(color: Theme.of(context).dividerColor, width: 0.6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SizedBox(
                      height: 48,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.loyalty,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextField(
                              maxLines: 1,
                              onChanged: (String txt) {},
                              cursorColor: Theme.of(context).primaryColor,
                              decoration: InputDecoration(
                                errorText: null,
                                border: InputBorder.none,
                                hintText: AppLocalizations.of('Input promo code'),
                                hintStyle: TextStyle(color: Theme.of(context).disabledColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: Center(
                        child: Text(
                          AppLocalizations.of('Apply'),
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ),
      ],
    );
  }
}
