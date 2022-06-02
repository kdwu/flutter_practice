import 'package:flutter/material.dart';
import 'package:flutter_pratice/pages/profile_pages/separator_widget.dart';

class CouponsPage extends StatefulWidget {
  const CouponsPage({Key? key}) : super(key: key);

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {

  List<CouponData> _list = [
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
    new CouponData(endDate: '0', amount: '1000', amountLimitMin: '1', name: 'name', remark: '1', id: '1', type: '1', startDate: '1', status: '1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'my coupon',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF060518),
              fontSize: 18),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF000000),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFFF5F5F5),
        child: _getListView(),
      ),
    );
  }

  Widget _getListView() {
    return ListView.builder(
        itemCount: _list.length + 1,
        itemBuilder: (context, index) {
          if (index < _list.length) {
            CouponData data = _list[index];
            // bool selected = widget.amount != null && widget.couponIds != null;
            // bool currentSelected = false;
            // if (selected) {
            //   currentSelected = _selectCoupon.contains(data.id);
            // }
            // String validDate = getStringFromMap('valid_from_startDate_to_endDate');
            //validDate = validDate.replaceAll('startDate', '${data.startDate}');
           // validDate = validDate.replaceAll('endDate', '${data.endDate}');
            return GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 12, right: 12),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                data.amount,
                                style: TextStyle(
                                    fontSize: data.amount.length > 5 ? 20 : 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF8007)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 21.5),
                                  Text(
                                    data.name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF333333),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 4,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF999999),
                                            borderRadius:
                                            BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Expanded(
                                          child: Text(
                                            data.remark,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF666666)),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 4,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF999999),
                                            borderRadius:
                                            BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Expanded(
                                          child: Text(
                                            data.amountLimitMin,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF666666)),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 13.5,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 7.5,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(7.5),
                                      bottomRight: Radius.circular(7.5))),
                            ),
                            Expanded(
                              child: SeparatorWidget(
                                height: 0.5,
                                color: Color(0xFFDBDBDB),
                                dashWidth: 5,
                              ),
                            ),
                            Container(
                              width: 7.5,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7.5),
                                      bottomLeft: Radius.circular(7.5))),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'validDate',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF999999))),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   left: 22,
                  //   top: 20,
                  //   child: Offstage(
                  //     offstage: !selected,
                  //     child: Image.asset(
                  //       currentSelected
                  //           ? "res_images/type1_checked.png"
                  //           : "res_images/type1_unchecked.png",
                  //       width: 18,
                  //       height: 18,
                  //     ),
                  //   ),
                  // )
                ],
              ),
              onTap: () {
                //_onItemClicked(data);
              },
            );
          } else {
            //footer
            return _buildhidCoupon();
          }
        });
  }

  Widget _buildhidCoupon(){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('historical_coupon',
            style: TextStyle(
                fontSize: 15,
                color: Color(0xFF666666),
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center),
      ),

    );
  }



}

class CouponData {
  String endDate;
  String amount;
  String amountLimitMin;
  String name;
  String remark;
  String id;
  String type;
  String startDate;
  String status;

  CouponData({required this.endDate, required this.amount, required this.amountLimitMin, required this.name, required this.remark, required this.id, required this.type, required this.startDate,required this.status});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['end_date'] = this.endDate;
    data['amount'] = this.amount;
    data['amount_limit_min'] = this.amountLimitMin;
    data['name'] = this.name;
    data['remark'] = this.remark;
    data['id'] = this.id;
    data['type'] = this.type;
    data['start_date'] = this.startDate;
    data['status'] = this.status;
    return data;
  }
}
