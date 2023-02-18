import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nic/enum/hex_color.dart';

class NewsCard extends StatelessWidget {
  final String img;
  final String username;
  final String news;
  final String title;
  final String time;
  final Function() callback;

  const NewsCard(
      {super.key,
      required this.img,
      required this.username,
      required this.news,
      required this.time,
      required this.title,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Card(
        elevation: 4.0,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: HexColor('#fa76a1'),
                      child: const Icon(LineIcons.userCircle),
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(username),
                        Text(time,style: TextStyle(color: HexColor('#d8d8d8')),),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(news),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
