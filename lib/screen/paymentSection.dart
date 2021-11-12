import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:payment_section/screen/paymentSection.dart';
import 'package:sizer/sizer.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({Key? key}) : super(key: key);

  @override
  _PaymentSectionState createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel,
                size: 30,
                color: Colors.red,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: Container(
          child: ListView(
            children: [
              CustomBuildCard(),
              SizedBox(
                height: 10,
              ),
              PaymentMethodSection(),
              SizedBox(
                height: 10,
              ),
              PromoCodeSection(),
              SizedBox(
                height: 15.h,
              ),
              BottomSection(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )));
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total payment",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                "\$500",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              height: 7.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Pay",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                ),
              )),
        )
      ],
    );
  }
}

class PromoCodeSection extends StatelessWidget {
  const PromoCodeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Promo Code",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                      child: Container(
                    width: 4.w,
                    height: 7.5.h,
                    decoration: BoxDecoration(
                        color: Color(0xff424141),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ))
                ],
              )),
        )
      ],
    );
  }
}

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Choose payment method",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: Colors.black),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://i.pinimg.com/originals/ce/b8/63/ceb8632252376a23be9f689901b9e3d3.png",
              height: 8.h,
              width: 12.w,
            ),
            Image.network(
              "https://images.assettype.com/freepressjournal/2020-06/85479dab-ba32-4f5c-af57-df77c336d2d7/gpay.jpg?rect=0%2C0%2C3900%2C2194&w=1200&auto=format%2Ccompress&ogImage=true",
              height: 8.h,
              width: 12.w,
            ),
            Image.network(
              "https://www.logotaglines.com/wp-content/uploads/2018/11/PayPal-Logo-Tagline.jpg",
              height: 8.h,
              width: 12.h,
            ),
            Container(
              color: Colors.white,
              child: Image.network(
                "https://icons-for-free.com/iconfiles/png/512/credit+visa+icon-1320186683205089896.png",
                height: 8.h,
                width: 16.w,
              ),
            ),
            // Container(
            //   // color: Colors.white,
            //   child: Image.network(
            //     "https://w7.pngwing.com/pngs/397/885/png-transparent-logo-mastercard-product-font-mastercard-text-orange-logo.png",
            //     height: 50,
            //     width: 50,
            //   ),
            // ),
          ],
        )
      ],
    );
  }
}

class CustomBuildCard extends StatelessWidget {
  const CustomBuildCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Color(0xfffbfafa)),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 25.h,
          width: 80.w,
          decoration: BoxDecoration(
              color: Color(0xff424141),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  "Credit Card",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      "3763 4367 7346 0046",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Text(
                          "Shailesh Mishra",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Icon(
                            Icons.credit_card,
                            color: Color(0xff060606),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
