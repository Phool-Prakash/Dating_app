import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/DAColors.dart';

class AccountExpansionWidget extends StatefulWidget {
  const AccountExpansionWidget({super.key});

  @override
  AccountExpansionWidgetState createState() => AccountExpansionWidgetState();
}

class AccountExpansionWidgetState extends State<AccountExpansionWidget> {
  bool mIsExpanded = false;
  int mIsSelect = 0;

  List name = ['Male', 'Female'];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      animationDuration: const Duration(seconds: 1),
      expansionCallback: (int index, bool isExpanded) {
        mIsExpanded = !mIsExpanded;
        setState(() {});
      },
      children: [
        ExpansionPanel(
          headerBuilder: (_, bool isExpanded) {
            return Row(
              children: [
                8.width,
                const Icon(Icons.mouse_outlined, color: primaryColor),
                12.width,
                Text('Gender', style: primaryTextStyle()),
              ],
            );
          },
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: name
                .asMap()
                .map(
                  (e, i) {
                return MapEntry(
                  e,
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: mIsSelect == e ? deepSkyBlue : white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: mIsSelect == e ? white : grey),
                    ),
                    child: Text(i, style: primaryTextStyle(color: mIsSelect == e ? white : grey)),
                  ).onTap(() {
                    mIsSelect = e;
                    setState(() {});
                  }, highlightColor: white, splashColor: white),
                );
              },
            )
                .values
                .toList(),
          ),
          isExpanded: mIsExpanded,
        )
      ],
    );
  }
}
