import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wiztecbd/my_drawer_header.dart';

class TableData extends StatefulWidget {
  const TableData({super.key});

  @override
  State<TableData> createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {

  final scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF10AB83),
        centerTitle: true,
        title: Text("Table data",),
      ),
      drawer: Drawer(
       child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
                 ExpansionTile(
                  iconColor: Color(0xFF10AB83),
                  textColor: Color(0xFF10AB83),
                    title: Text("Purchase",),
                    leading: Icon(Icons.shopping_cart),
                    childrenPadding: EdgeInsets.only(left:60),
                    children: [
                      ListTile(
                        title: Text("Purchase List"),
                        onTap: (){
                        },
                      ),

                      ListTile(
                        title: Text("Order List"),
                        onTap: (){
                        },
                      ),
                      ListTile(
                        title: Text("VAT List"),
                        onTap: (){
                        },
                      ),
                      ListTile(
                        title: Text("Product Unit"),
                        onTap: (){
                        },
                      ),
                      ListTile(
                        title: Text("Purchase Report"),
                        onTap: (){        
                        },
                      ),

                    ],
                  ),
                  ListTile(
                    title: Text("Sell",),
                    leading: Icon(Icons.shopping_bag_outlined),
                     trailing: Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                  ListTile(
                    title: Text("Stock/Inventory",),
                    leading: Icon(Icons.maps_home_work_outlined),
                    trailing: Icon(Icons.keyboard_arrow_down_outlined),
                  ),
            ],
          ),
        ),
       ),
      ),
      body:  Container(
            padding: EdgeInsets.all(15),
            child:Table(
            border: TableBorder.all(width:1, color:Colors.black45),
            children: [     
                 TableRow(
                   children: [
                      TableCell(child: Text("Dues"),),
                   ]
                 ),

                 TableRow(
                   children: [
                      TableCell(child: Text("Previous Due 01 January 2022",),
                      ),
                   ]
                 ),
                 
                 TableRow(
                   children: [
                      TableCell(child: Text("Purchase")),

                   ]
                 ),

                 TableRow(
                   children: [
                      TableCell(child: Text("Invoice Date: 01 January 2022\nInvoice No.:  5386")),
                   ]
                 ),

            ],)
        ),
    );
  }
}