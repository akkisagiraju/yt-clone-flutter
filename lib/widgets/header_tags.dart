import 'package:flutter/material.dart';

class HeaderTags extends StatefulWidget {
  const HeaderTags({Key? key}) : super(key: key);

  @override
  _HeaderTagsState createState() => _HeaderTagsState();
}

class _HeaderTagsState extends State<HeaderTags> {
  final List<String> _tags = [
    'Python',
    'Gaming',
    'DOOM Eternal',
    'JavaScript',
    'Metal',
    'Animals as Leaders',
    'Gojira'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _tags.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.grey.shade500),
                        left: BorderSide(width: 1, color: Colors.grey.shade500),
                        bottom:
                            BorderSide(width: 1, color: Colors.grey.shade500),
                        right:
                            BorderSide(width: 1, color: Colors.grey.shade500)),
                    color: index == selectedIndex
                        ? Colors.white
                        : Colors.grey.shade700,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      _tags[index],
                      style: TextStyle(
                          color: index == selectedIndex
                              ? Colors.grey.shade900
                              : Colors.white),
                    ),
                  ),
                ));
          }),
    );
  }
}
