import 'package:flutter/material.dart';
import 'package:mohit_portfolio/constants/colors.dart';

class PageContentLayout extends StatelessWidget {
  const PageContentLayout(
      {super.key,
      required this.sideBarChild,
      required this.mainAreaChild,
      required this.pageTitle});

  final Widget sideBarChild;
  final Widget mainAreaChild;
  final String pageTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColorDarker,
      body: Row(
        children: [
          Container(
            width: 360,
            height: double.infinity,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(color: secondaryGreyColor),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 30, child: Text(pageTitle)),
                ),
                Expanded(
                  child: Container(
                    width: 360,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: secondaryGreyColor,
                        ),
                      ),
                    ),
                    child: sideBarChild,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
            child: mainAreaChild,
          ))
        ],
      ),
    );
  }
}
