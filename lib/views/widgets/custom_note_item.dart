import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const CustomText(
                text: 'Flutter Tips',
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomText(
                  text: 'Build Your Career With Mohammed Shaneaf',
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
                color: Colors.black,
                iconSize: 36,
              ),
            ),
            CustomText(
              text: 'May 21, 2022',
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
