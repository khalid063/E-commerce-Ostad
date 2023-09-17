import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onTap;

  const CircularIconButton({super.key, required this.icon, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.grey.shade200,
        child: Icon(icon, color: Colors.grey, size: 18,),
      ),
    );
  }
}