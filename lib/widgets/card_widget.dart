import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Function() callBack;
  final IconData icon;
  final bool isNotify;

  CustomCard(
      {super.key,
      required this.title,
      required this.callBack,
      required this.icon,
      required this.isNotify});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Card(
          elevation: 9.0,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon),
                    isNotify == true
                        ? Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red),
                          )
                        : const SizedBox(
                            width: 0,
                          ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
