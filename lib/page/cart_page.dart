import 'package:flutter/material.dart';
import 'package:thefoodstore/page/delivery.dart';
import 'package:thefoodstore/widgets/card_payment.dart';
import 'package:thefoodstore/widgets/drawer.dart';

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> with TickerProviderStateMixin {
  TabController _tabController;
  TabController deliverycontrolller;
  int count = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    deliverycontrolller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var hsize = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          "Gulshan,R 28 H",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.supervisor_account,
                color: Color(0xFF3a3737),
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: hsize / 4,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text('kayu Pista Roll'),
                          SizedBox(
                            width: 40,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count--;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '$count',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                }),
                          ),
                          Spacer(),
                          Text(
                            '625',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              bill('Price', '625'),
              bill('Vat', '10'),
              bill('Delivery Charge', '30'),
              Divider(
                color: Colors.grey,
              ),
              bill('Total', '665'),
              Divider(
                color: Colors.grey,
              ),
                  SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Additional Note/Information",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.add),
                    hintText: "Promo code",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              //tab bar design
              TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 24),
                  // indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: <Widget>[
                    Text("Bkash"),
                    Text("Cash"),
                    Text("Card"),
                  ]),
   SizedBox(
                height: 10,
              ),
              Container(
                height: hsize * 0.60,
                child: TabBarView(controller: _tabController, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.add),
                              hintText: "Enter Your Transaction ID",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Delivery Address:"),
                        SizedBox(
                          height: 10,
                        ),
                        TabBar(
                            controller: deliverycontrolller,
                            isScrollable: true,
                            unselectedLabelColor: Colors.grey,
                            unselectedLabelStyle: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                            labelColor: Colors.black,
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 24),
                            // indicatorSize: TabBarIndicatorSize.tab,
                            labelPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            tabs: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.home,
                                    size: 30,
                                  ),
                                  Text("Home")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.beach_access,
                                    size: 30,
                                  ),
                                  Text("Other")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.card_giftcard,
                                    size: 30,
                                  ),
                                  Text("Gift")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.new_releases,
                                    size: 30,
                                  ),
                                  Text("New")
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_city,
                                    size: 30,
                                  ),
                                  Text("Current Location")
                                ],
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Container(
                            height: hsize * 0.30,
                            child: TabBarView(
                                controller: deliverycontrolller,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Home Address",
                                        border: OutlineInputBorder()),
                                  ),
                                  // Placeholder(),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Home Address",
                                        border: OutlineInputBorder()),
                                  ),
                                  // Placeholder(),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Home Address",
                                        border: OutlineInputBorder()),
                                  ),
                                  // Placeholder(),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Home Address",
                                        border: OutlineInputBorder()),
                                  ),
                                  //todo Current location
                                  SingleChildScrollView(
                                    child: Container(
                                      height: hsize,
                                      // color: Colors.red,
                                      child: Column(
                                        children: <Widget>[
                                          Text("Get Location"),
                                          TextField(
                                            decoration: InputDecoration(
                                                hintText: "Account pin number",
                                                border: OutlineInputBorder()),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Deliverypage()));
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              padding: EdgeInsets.all(15),
                                              decoration: BoxDecoration(
                                                  color: Colors.amberAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Center(
                                                  child: Text("Confirm Order")),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  //Todo cash in
                  Center(child: Text("Cash in Delivery")),
                  //Todo card add
                  Cardpayment(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bill(String text, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[Text("$text"), Spacer(), Text("$price")],
      ),
    );
  }
}
