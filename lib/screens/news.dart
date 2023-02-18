import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nic/widgets/news_card.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsCard(
                img: '',
                username: 'James Doe',
                news:
                    'Results-driven full stack developer with 5+ years of experience in developing and maintaining web applications and strong proficiency in JavaScript, Python, and React, as well as experience with Node.js, Express, and MongoDB.Proven ability to work in a fast-paced environment and deliver high-quality code on time.',
                time: '3m',
                title: 'How to contact us',
                callback: () {
                  log('it works');
                }),
          );
        },
      ),
    );
  }
}
