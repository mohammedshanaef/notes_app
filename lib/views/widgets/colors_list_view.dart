import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isPicked, required this.color});
  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            maxRadius: 38, // الحلقة الخارجية
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38, // لون الملاحظة
              backgroundColor: Colors.white, // الطبقة البيضاء
              child: CircleAvatar(
                radius: 34, // اللون المختار
                backgroundColor: color,
              ),
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.onColorPicked});

  final ValueChanged<Color> onColorPicked;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84, // ارتفاع العنصر بعد تعديل الحجم
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Horizontal display
            itemCount: colors.length, // item count is ColorList
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // When The User Added To the Color
                  setState(() {
                    currentIndex = index; // we are Refresh Picked Color
                  });
                  widget.onColorPicked(colors[index]); // passed Picked Color
                },
                child: ColorsItem(
                  isPicked: currentIndex == index, // is color picked ?
                  color: colors[index], // the current color
                ),
              );
            },
          )),
    );
  }
}
