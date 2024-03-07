import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';

class TestDashBoardScreen extends StatefulWidget {
  const TestDashBoardScreen({Key? key}) : super(key: key);

  @override
  State<TestDashBoardScreen> createState() => _TestDashBoardScreenState();
}

class _TestDashBoardScreenState extends State<TestDashBoardScreen> {
  @override
  Widget build(BuildContext context) {
  MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return Scaffold(
      backgroundColor: AppColors.cardBackgroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(
                horizontal: mediaQueryHelper.getWidthPercentage(2),
                vertical:mediaQueryHelper.getHeightPercentage(2)
                ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dashboard',style: AppTypography.mediumHeading,),
            SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCardBody(title: '2000+',subtitle:'Daily Happy Customers'),
                buildCardBody(title: '3456789',subtitle:'Stocks Bottles'),
                buildCardBody(title: '15000+',subtitle:'Sales Bottle'),
                buildCardBody(title: '100 Kingfisher Premium Beer',subtitle:'Low Inventory Alert'),
              ],
            ),
            SizedBox(height: mediaQueryHelper.getHeightPercentage(3),),
            Text('Recent Orders',style: AppTypography.smallHeading.copyWith(fontWeight:FontWeight.w600),),
            SizedBox(height: mediaQueryHelper.getHeightPercentage(3),),
              Table(
              border: TableBorder(bottom: BorderSide(width: 0.1)),
                      children: [
                        TableRow(
                           children: [
                            buildTableRow(title:'Order Id',bottomSpacing: 10),
                            buildTableRow(title:'Product' ,bottomSpacing: 10),
                            buildTableRow(title:'Price' ,bottomSpacing: 10),
                            buildTableRow(title:'Quantity',bottomSpacing: 10 ),
                            buildTableRow(title:'Total Amount',bottomSpacing: 10 ),
                  ],
                ),
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)=>
              Table(

                children: [
                  TableRow(
                    children: [
                      Text('3423423'),
                      SizedBox(
                      width: mediaQueryHelper.getWidthPercentage(20),
                      child: Row(
                        children: [
                          Container(
                            height: mediaQueryHelper.getHeightPercentage(8),
                            decoration: BoxDecoration(
                            color: AppColors.greyColor,
                            borderRadius: BorderRadius.circular(12)),
                            child: ClipRRect(borderRadius:  BorderRadius.circular(12),
                            child: Image.network('https://www.unitedbreweries.com/images/our-brands/amstel_bier.jpg',fit: BoxFit.fill,),),
                          ),
                          SizedBox(width: mediaQueryHelper.getWidthPercentage(0.5)),
                          Text('Amstel Bier')
                        ],
                      ),),
                      Text('₹ 250'),
                      Text('20'),
                      Text('₹ 5500')
                    ],
                  ),
                  
                ],
              )
              ),
            )
          ],
        ),
      ),
    );
  }



  Widget buildCardBody({required String title,required String subtitle }){
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return  Container(
                  height: mediaQueryHelper.getHeightPercentage(10),
                  width: mediaQueryHelper.getWidthPercentage(18),
                  decoration: BoxDecoration(
                    border: Border.all( color: AppColors.vineGreenColor,),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16)
                      )
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
                      CircleAvatar(
                        backgroundColor: AppColors.lightGreenColor,
                        child: Icon(Icons.favorite,color: AppColors.greenColor,),
                      ),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: mediaQueryHelper.getWidthPercentage(12),
                            child: Text(title,style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700,fontSize: 17),)),
                          Text(subtitle,style: AppTypography.normalSmallText.copyWith(fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],
                  ),
                );
  }

  Widget buildTableRow({
  double bottomSpacing=0,
  double topSpacing=0,
  double rightSpacing=0,
  double leftSpacing=0,
  TextAlign? textAlign,
  required String title}){
    return Padding(
          padding: EdgeInsets.only(
          bottom:bottomSpacing,
          top: topSpacing,
          right: rightSpacing,
          left: leftSpacing
          ),
          child: Text(title,textAlign:textAlign,),
    );
  }


}