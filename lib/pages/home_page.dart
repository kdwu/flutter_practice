import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double topPadding = MediaQuery.of(context).padding.top;

    List<Widget> children = [
      _buildTopWidget(),
      _buildNoticeWidget(),
      _buildAppNameWidget(),
      _buildCardWidget(sWidth),
      _buildButtonWidget(),
      _buildBottomHotlineWidget(),
    ];

    Widget mWidget = ListView(
      padding: EdgeInsets.only(top: topPadding),
      children: children,
    );

    return Stack(
      children: [
        Image.asset(
          "res_images/top_bg.png",
          width: sWidth,
          height: sWidth * 300.0 / 375.0,
        ),
        mWidget
      ],
    );
  }

  // 顶部右侧图标
  _buildTopWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
            child: Image.asset("res_images/home_refresh.png",
                width: 22, height: 22),
          ),
        ),
      ],
    );
  }

  // notice
  _buildNoticeWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 15),
      decoration: const BoxDecoration(
        color: Color(0xFFFFF2DC),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 15, top: 0, bottom: 0, right: 0),
            child: Image.asset(
              "res_images/home_notice_icon.png",
              width: 15,
              height: 14,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 15, top: 8.5, bottom: 8.5, right: 15),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Notice: You have a ",
                      style: TextStyle(color: Color(0xFFF67B29), fontSize: 15),
                    ),
                    TextSpan(
                      text: "1000.00MMK",
                      style: TextStyle(
                          color: Color(0xFFFF480B),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: " coupon to use!",
                      style: TextStyle(color: Color(0xFFF67B29), fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // app 名字
  _buildAppNameWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 18, top: 5, right: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Pigeon Loan',
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF333333),
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'Fast and quick,Safe and reliable',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }

  // 中间
  _buildCardWidget(double width) {
    return Card(
      color: Colors.white,
      shadowColor: const Color(0x170570F7),
      elevation: 0.5,
      margin: const EdgeInsets.fromLTRB(18, 25, 18, 0),
      child: Container(
        width: width,
        height: 0.54 * width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: Column(
                children: const [
                  Text(
                    '300000MMK',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFFF8007),
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      'available_credit_upto',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            _buildIntroductionWidget(),
          ],
        ),
      ),
    );
  }

  // 渐变色按钮
  Widget _buildButtonWidget() {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 25, 18, 0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffFF6958),
            Color(0xffFF911A),
          ],
        ), // 渐变色
        borderRadius: BorderRadius.circular(1),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: 50,
          child: const Text(
            "Let's get the cash!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  // 底部电话号码和邮箱
  _buildBottomHotlineWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "res_images/hotline_icon.png",
                width: 12,
                height: 12,
              ),
              const SizedBox(
                width: 2.5,
              ),
              const Text(
                '09765495988',
                style: TextStyle(color: Color(0xFF041726), fontSize: 13),
              ),
            ],
          ),
          const Text(
            "Email: Pigeon6895@gmaal.com",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF999999),
            ),
          ),
        ],
      ),
    );
  }
}

_buildIntroductionWidget() {
  return Container(
    height: 36.5,
    margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color(0xFFFFF2DC)),
    child: Row(
      children: [
        const SizedBox(
          width: 10.5,
        ),
        Image.asset(
          "res_images/home_tip_icon1.png",
          width: 13,
          height: 13,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'fast_and_quick',
          style: TextStyle(color: Color(0xFFFF8007), fontSize: 11),
        ),
        const Spacer(),
        Image.asset(
          "res_images/home_tip_icon2.png",
          width: 13,
          height: 13,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'safe_and_reliable',
          style: TextStyle(color: Color(0xFFFF8007), fontSize: 11),
        ),
        const SizedBox(
          width: 10.5,
        ),
      ],
    ),
  );
}
