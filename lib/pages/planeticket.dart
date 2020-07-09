import 'package:flutter/material.dart';
import 'package:posegal/common/custom_app_bar.dart';
import 'package:posegal/common/ticket_card.dart';
import 'package:posegal/common/toggle_widget.dart';
import 'package:posegal/models/ticket.dart';

class PlaneTicketPage extends StatefulWidget {
  const PlaneTicketPage({Key key}) : super(key: key);

  @override
  _PlaneTicketPageState createState() => _PlaneTicketPageState();
}

class _PlaneTicketPageState extends State<PlaneTicketPage> {
  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Plane Ticket'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: ToggleWidget(
                  firstOption: 'Not Used',
                  secondOption: 'Already Used',
                  thirdOption: 'Closed'),
            ),
            SizedBox(
              height: 20,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              controller: _controller,
              children: <Widget>[
                for (var i = 0; i < ticketList.length; i++)
                  Hero(
                    tag: ticketList[i].id,
                    child: TicketCardWidget(
                      ticket: ticketList[i],
                      showQR: true,
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
