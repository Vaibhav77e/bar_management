import 'package:flutter/material.dart';
import '../../typography/Apptypography.dart';
import '../../utils/AppColors.dart';

class TestDashBoardScreen extends StatefulWidget {
  const TestDashBoardScreen({Key? key}) : super(key: key);

  @override
  State<TestDashBoardScreen> createState() => _TestDashBoardScreenState();
}

class _TestDashBoardScreenState extends State<TestDashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Dashboard', style: AppTypography.mediumHeading),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildCardBody(
                                title: '2000+',
                                subtitle: 'Daily Happy Customers',
                                assetName:
                                    'assets/images/dashboard-images/heart.png'),
                            SizedBox(width: 10),
                            buildCardBody(
                                title: '3456789',
                                subtitle: 'Stocks Bottles',
                                assetName:
                                    'assets/images/dashboard-images/wine-bottle.png'),
                            SizedBox(width: 10),
                            buildCardBody(
                                title: 'Kingfisher Beer',
                                subtitle: 'Low Inventory Alert',
                                assetName:
                                    'assets/images/dashboard-images/save-water.png'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Recent Orders',
                          style: AppTypography.smallHeading.copyWith(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Table(
                                border: TableBorder(
                                    bottom: BorderSide(width: 0.1)),
                                children: [
                                  TableRow(children: [
                                    buildTableRow(title: 'Order Id'),
                                    buildTableRow(title: 'Product'),
                                    buildTableRow(title: 'Price'),
                                    buildTableRow(title: 'Quantity'),
                                    buildTableRow(title: 'Total Amount'),
                                  ]),
                                ],
                              ),
                              SizedBox(
                                height: 200, // Set a maximum height or use Expanded
                                child: ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (context, index) => Table(
                                    children: [
                                      TableRow(children: [
                                        buildTableRow(title: '3423423'),
                                        buildTableRow(
                                          title: 'Amstel Bier',
                                          topSpacing: 15,
                                        ),
                                        buildTableRow(title: '₹ 250'),
                                        buildTableRow(title: '20'),
                                        buildTableRow(title: '₹ 5500'),
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('Top Sellers of the Week',
                            style: AppTypography.smallHeading.copyWith(
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 10),
                        topSellerCard(
                          assetName: 'assets/images/replace-images/kingfisher_ultra.png',
                          price: '130',
                          title: 'Kingfisher Strong',
                          unitsSold: '5000',
                        ),
                        SizedBox(height: 10),
                        topSellerCard(
                          assetName: 'assets/images/replace-images/heineken.png',
                          price: '135',
                          title: 'Heineken',
                          unitsSold: '4500',
                        ),
                        SizedBox(height: 10),
                        topSellerCard(
                          assetName: 'assets/images/replace-images/Kingfisher.png',
                          price: '170',
                          title: 'Kingfisher Ultra ',
                          unitsSold: '4000',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardBody(
      {required String title,
      required String subtitle,
      required String assetName}) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Image.asset(assetName, color: Colors.green),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(subtitle),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTableRow({required String title, double topSpacing = 0}) {
    return Padding(
      padding: EdgeInsets.only(top: topSpacing),
      child: Text(title),
    );
  }

  Widget topSellerCard(
      {required String assetName,
      required String title,
      required String price,
      required String unitsSold}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(assetName, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(title),
            Text('₹ $price'),
            Text('No. of Units Sold: $unitsSold'),
          ],
        ),
      ),
    );
  }
}
