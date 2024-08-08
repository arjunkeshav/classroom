import 'package:flutter/material.dart';

class SeatGridView extends StatelessWidget {
  final int seatCount;
  const SeatGridView({required this.seatCount,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 16),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
        ),
        itemCount: seatCount,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border:Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.airline_seat_recline_normal_sharp,
                color: Colors.black,
                size: 40,
              ),
            ),
          );
        },
      ),
    );
  }
}
