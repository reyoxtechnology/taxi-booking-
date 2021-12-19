import 'package:flutter/material.dart';

class LocationButtonView extends StatelessWidget {
  final VoidCallback? gpsClick;

  const LocationButtonView({Key? key, this.gpsClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 340 ? 54 : 48,
        height: MediaQuery.of(context).size.width > 340 ? 54 : 48,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(54.0),
          ),
          child: IconButton(
            icon: Icon(
              Icons.gps_fixed,
              color: Theme.of(context).textTheme.headline6!.color,
              size: MediaQuery.of(context).size.width > 340 ? 28 : 26,
            ),
            onPressed: () async {
              try {
                gpsClick!();
              } catch (e) {}
            },
          ),
        ),
      ),
    );
  }
}
