import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:flutter/material.dart';
import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';


class DashBoardScreen  extends StatefulWidget {
  const DashBoardScreen ({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Padding(
          padding:  EdgeInsets.symmetric(
                  horizontal: mediaQueryHelper.getWidthPercentage(2),
                  vertical:mediaQueryHelper.getHeightPercentage(2)
                  ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: mediaQueryHelper.getHeightPercentage(5),),
            Text('Dashboard',style: AppTypography.mediumHeading,),
            SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: mediaQueryHelper.getWidthPercentage(59),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,// const Icon(Icons.favorite,color: AppColors.greenColor,),
                          children: [
                          buildCardBody(title: '2000+',subtitle:'Daily Happy Customers',assetName:'assets/images/dashboard-images/heart.png'),
                          SizedBox(width: mediaQueryHelper.getWidthPercentage(1)),
                          buildCardBody(title: '3456789',subtitle:'Stocks Bottles',assetName:'assets/images/dashboard-images/wine-bottle.png'),
                          SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
                          buildCardBody(title: 'Kingfisher Beer',subtitle:'Low Inventory Alert',assetName:'assets/images/dashboard-images/save-water.png'),
                            ]
                          ),
                          ]
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                          Row(
                          children: [
                            Text('Recent Orders',style: AppTypography.smallHeading.copyWith(fontWeight:FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(2),),
                        SizedBox(
                        width: mediaQueryHelper.getWidthPercentage(80),
                        child: Column(
                          children: [
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
                        SizedBox(
                          height: mediaQueryHelper.getHeightPercentage(60),
                        width: mediaQueryHelper.getWidthPercentage(80),
                        child:  ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index)=>
                      Table(
                        //border: TableBorder(bottom: BorderSide(width:0.2)),
                        children: [
                          TableRow(
                        children: [
                        buildTableRow(title: '3423423',topSpacing: 15),
                        Padding(
                          padding:  EdgeInsets.only(bottom: mediaQueryHelper.getHeightPercentage(1),top: mediaQueryHelper.getHeightPercentage(1)),
                          child: SizedBox(
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
                        ),
                        buildTableRow(title: '₹ 250',topSpacing: 15),
                        buildTableRow(title: '20',topSpacing: 15),
                        buildTableRow(title: '₹ 5500',topSpacing: 15),
                                ],
                              ),
                            ],
                          )
                          ),
                        )
                        ]
                        ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mediaQueryHelper.getHeightPercentage(10)),
                        Text('Top Sellers of the Week',style: AppTypography.smallHeading.copyWith(fontWeight:FontWeight.w600),),
                        topSellerCard(assetName: 'assets/images/replace-images/kingfisher_ultra.png',
                        price: '130',
                        title: 'Kingfisher Strong',
                        unitsSold: '5000'
                        ),
                        topSellerCard(assetName: 'assets/images/replace-images/heineken.png',
                        price: '135',
                        title: 'Heineken',
                        unitsSold: '4500'
                        ),
                        topSellerCard(assetName: 'assets/images/replace-images/Kingfisher.png',
                        price: '170',
                        title: 'Kingfisher Ultra ',
                        unitsSold: '4000'
                        ),
                      ],
                    ),
                ],
              ),
            ],
          )
        );
  }
  Widget buildCardBody({required String title,required String subtitle,required String assetName}){
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    return  Container(
                  height: mediaQueryHelper.getHeightPercentage(10),
                  width: mediaQueryHelper.getWidthPercentage(16),
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
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(0.5),),
                      CircleAvatar(
                        backgroundColor: AppColors.lightGreenColor,
                        child: Container(
                        padding: const EdgeInsets.all(6),
                        height: mediaQueryHelper.getHeightPercentage(4),
                        child:Image.asset(assetName,color: AppColors.greenColor,)
                        )
                      ),
                      SizedBox(width: mediaQueryHelper.getWidthPercentage(0.5),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: mediaQueryHelper.getWidthPercentage(12),
                            child: Text(title,style: AppTypography.normalText.copyWith(fontWeight: FontWeight.w700,fontSize: 17),)),
                          SizedBox(
                             width: mediaQueryHelper.getWidthPercentage(12),
                            child: Text(subtitle,style: AppTypography.normalSmallText.copyWith(fontWeight: FontWeight.w600),))
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

  Widget topSellerCard({
    required String assetName,
    required String title,
    required String price,
    required String unitsSold
  }){
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return  Card(
          child: Padding( 
          padding: const EdgeInsets.all(8.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  children: [
                  Container(
                  height: mediaQueryHelper.getHeightPercentage(16),
                  width: mediaQueryHelper.getWidthPercentage(8),
                  decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(assetName,fit: BoxFit.cover,)),
                  ),
                  SizedBox(width: mediaQueryHelper.getWidthPercentage(1),),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(title),
                  Text('₹ $price'),
                  const Text('No. of Units Sold'),
                  Text(unitsSold)],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}