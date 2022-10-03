import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProducerLookupPage extends StatefulWidget {
  const ProducerLookupPage({Key? key}) : super(key: key);

  @override
  State<ProducerLookupPage> createState() => _ProducerLookupPageState();
}

class _ProducerLookupPageState extends State<ProducerLookupPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        title: Text("검색바"),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('슬라이드메뉴'),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('전체지역'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('날짜'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(value) {
                            _isChecked = value;
                          }
                        }),
                    Text('할인쿠폰 주는 곳'),
                    Text('베스트 추천 순'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            child: ListView(
              children: [
                ListData(),
                ListData(),
                ListData(),
                ListData(),
                ListData(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 150,
              width: double.infinity, //가로 꽉 차게 설정	height: double.infinity,
              color: Colors.white,
              child:
                  Image.asset('assets/images/sample1.png', fit: BoxFit.fill)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('수유 파람 헤어'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SvgPicture.asset('assets/icon/comment.png',width: 30, height: 30),
              new Image.asset('assets/icon/comment.png', width: 15, height: 15),
              Text('수유동ㅣ#남자메이크업전문 #다수경력 #연예인스타일'),
            ],
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text("50000"),
                      Text("원"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: new SvgPicture.asset('assets/icon/love.svg',
                            width: 15, height: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("134"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: new Image.asset('assets/icon/comment.png',
                            width: 15, height: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("467346"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
