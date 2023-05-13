import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class NoticeItem extends StatelessWidget {
  final String date;
  final String kids;
  final String content;
  final List<String> photo;
  final Function() onPressed;

  const NoticeItem({required this.date, required this.kids, required this.content, required this.photo, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.white,
              foregroundColor: textColor,
              minimumSize: Size(double.infinity, 120),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0)
          ),
          child: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(date),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: Image.asset('assets/images/notice/calendar2.png', width: 20,),
                        )
                      ],
                    ),
                    Text(kids,
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                  child: Divider(thickness: 1, height: 1, color: Colors.grey,),
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(content,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        photo.isEmpty ? SizedBox() :
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.network(photo[0], height: 40, fit: BoxFit.cover,)
                        )
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
