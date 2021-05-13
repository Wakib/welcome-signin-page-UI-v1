import 'package:flutter/material.dart';

class CircularButtonWidget extends StatelessWidget {
  final IconData icon;
  CircularButtonWidget({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Icon(
        icon,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
