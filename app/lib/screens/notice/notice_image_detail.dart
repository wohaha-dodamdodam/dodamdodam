import 'package:app/components/common/title_appBar.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NoticeImageDetail extends StatefulWidget {
  const NoticeImageDetail({Key? key, required this.images, required this.index}) : super(key: key);
  final List<String> images;
  final int index;

  @override
  State<NoticeImageDetail> createState() => _NoticeImageDetailState();
}

class _NoticeImageDetailState extends State<NoticeImageDetail> {
  final CarouselController _controller = CarouselController();
  int idx = -1;
  List<Widget> imageWidgets = [];
  @override
  void initState() {
    super.initState();
    idx = widget.index;
    imageWidgets = widget.images.map((img) => Image.network(img, height: 200, fit: BoxFit.contain,)).toList();
    _controller.animateToPage(widget.index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightNavy,
      appBar: TitleAppBar(title: '',),
      body: Row(
        children: [
          Expanded(child: SizedBox()),
          Flexible(
              flex: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text('${idx+1} / ${widget.images.length}', style: TextStyle(fontSize: buttonTextSize),),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: textColor,
                            ),
                            onPressed: (){
                              GallerySaver.saveImage(widget.images[idx]
                              ).then((value) => print('성공?')
                              ).catchError((e){
                                print(e);
                              });
                            },
                            child: Icon(Icons.save_alt_outlined)
                        ),
                      ]
                  ),
                  Container(
                      color: Color(0x10000000),
                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      width: double.infinity,
                      height: 380,
                      child: CarouselSlider(
                        items: imageWidgets,
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          height: double.infinity,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              idx = index;
                            });
                          },
                        ),
                        carouselController: _controller,
                      )
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                    ),
                      children: [
                        for(int i=0; i<widget.images.length; i++)
                          Container(
                            decoration: BoxDecoration(
                                border: idx == i ? Border.all(color: darkNavy, width: 4) : null
                            ),
                            child: InkWell(
                                onTap: () {setState(() {
                                  idx = i;
                                  _controller.animateToPage(i);
                                });},
                                child: Image.network(widget.images[i], fit: BoxFit.cover,)
                            ),
                          ),
                        // Image.network('https://dodamdodam.s3.ap-northeast-2.amazonaws.com/kidProfile/3d0aaa2f-f539-437f-bc02-50c391ef0fd6.jpg', fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
