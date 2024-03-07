
import 'package:bar_management_system/typography/Apptypography.dart';
import 'package:bar_management_system/utils/AppColors.dart';
import 'package:bar_management_system/utils/MediaqueryHelper.dart';
import 'package:bar_management_system/widgets/SearchBar/CustomSearchBar.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomDropDown/CustomDropDown.dart';

  enum Generate {GenerateInvoice}

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  TextEditingController searchController =  TextEditingController();
   String initialValue = 'Option 1';

   String initalStatus = 'Delivered';
   List<String> status = ['Delivered', 'Cancelled'];

  Generate? selectedItem;

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper mediaQueryHelper =  MediaQueryHelper(context);
    return Container(
     // width: mediaQueryHelper.getWidthPercentage(50),
     color: AppColors.cardBackgroundColor,
       padding: EdgeInsets.symmetric(
        horizontal: mediaQueryHelper.getWidthPercentage(4),
        vertical: mediaQueryHelper.getHeightPercentage(2),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Orders',style: AppTypography.mainHeading.copyWith(fontWeight: FontWeight.w600),),
                SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                  SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(10),
                  height: mediaQueryHelper.getHeightPercentage(5),
                  child: CustomRoundedDropdown<String>(
                    items: [
                    DropdownMenuItem<String>(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                  ],
                  value: initialValue, 
                  onChanged: (value) {
                    print('Selected value: $value');
                    setState(() {
                      initialValue=value!;
                    });
                  },
                  ),
                  
                ),
                SizedBox(width: mediaQueryHelper.getWidthPercentage(2),),
                SizedBox(
                  width: mediaQueryHelper.getWidthPercentage(20),
                child: CustomSearchBar(searchController: searchController,)),
                
              ],
            ),
          SizedBox(height: mediaQueryHelper.getHeightPercentage(10)),
          
          Table(
              border: TableBorder(bottom: BorderSide(width: 0.1)),
                      children: [
                        TableRow(
                           children: [
                            buildTableRow(title:'Order Id',bottomSpacing: 10),
                            buildTableRow(title:'Created' ,bottomSpacing: 10),
                            buildTableRow(title:'Customer' ,bottomSpacing: 10),
                            buildTableRow(title:'Quantity',bottomSpacing: 10 ),
                            buildTableRow(title:'Total',bottomSpacing: 10 ),
                            buildTableRow(title:'Status',bottomSpacing: 10,textAlign: TextAlign.center ),
                            buildTableRow(title:'',bottomSpacing: 10 ),
                  ],
                ),
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
              return Table(
                border: TableBorder(bottom: BorderSide(width: 0.1)),
                children: [
                  TableRow(
                  children:[
                    buildTableRow(title: '342335233523',bottomSpacing: 15,topSpacing: 10),
                    buildTableRow(title: '2 min ago',bottomSpacing: 15,topSpacing: 10),
                    buildTableRow(title: 'Captain miller 4',bottomSpacing: 15,topSpacing: 10),
                    buildTableRow(title: 'Quantity',bottomSpacing: 15,topSpacing: 10),
                    buildTableRow(title: 'Total',bottomSpacing: 15,topSpacing: 10),
                    Padding(padding: EdgeInsets.only(bottom:15,top: 10 ),
                    child: CustomRoundedDropdown(
                      borderRadius: 24,
                      value: initalStatus,
                      onChanged: (value) {
                        print('Selected value: $value');
                        setState(() {
                          print('index : $index');
                            initalStatus=value!;
                        });
                      } ,
                      items:status.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList() ,
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10),
                      child: PopupMenuButton<Generate>(
                        initialValue: selectedItem,
                        onSelected: 
                        (Generate item) {
                          // setState(() {
                          //   selectedItem = item;
                          // });
                          if(selectedItem==Generate.GenerateInvoice){
                            showGenerateInvoiceDialog();
                          }
                        },
                        itemBuilder: (context)=><PopupMenuEntry<Generate>>[
                        const PopupMenuItem(value: Generate.GenerateInvoice,
                        child: Text('Generate'),
                        ),
                      ],
                    ),
                    )
                  ]
                  )
                ],
              );
            }))
        ],),
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


  void showGenerateInvoiceDialog(){
    MediaQueryHelper mediaQueryHelper = MediaQueryHelper(context);
    showDialog(context: context, builder: (context)=>AlertDialog(
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: Colors.transparent,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Invoice'),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}