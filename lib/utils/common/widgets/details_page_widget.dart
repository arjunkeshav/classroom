import 'package:flutter/material.dart';

class DetailsPageWidget extends StatelessWidget {
  final DetailsPageParam details;

  const DetailsPageWidget({required this.details, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                details.title,
                style:const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 137,
          ),
           CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              details.avatarUrl,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            details.firstText,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            details.secondText,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(details.thirdText, style: const TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}

class DetailsPageParam {
  final String firstText;
  final String secondText;
  final String thirdText;
  final String avatarUrl;
  final String title;

  const DetailsPageParam({
    required this.avatarUrl,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.title,
  });
}
