import 'package:flutter/material.dart';
import 'package:posegal/common/ticket_card.dart';
import 'package:posegal/models/ticket.dart';

import '../image_asset.dart';

class TicketDetail extends StatefulWidget {
  final Ticket ticket;
  const TicketDetail({Key key, @required this.ticket}) : super(key: key);

  @override
  _TicketDetailState createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[500],
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: InkWell(
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Hero(
            tag: widget.ticket.id,
            child: TicketCardWidget(ticket: widget.ticket, showQR: false),
          ),
          Spacer(),
          Hero(
            tag: "qrcode ",
            child: Stack(
              children: <Widget>[
                Image.asset(qr, width: 140.0),
              ],
            ),
          ),
          SizedBox(height: 80.0)
        ],
      ),
    );
  }
}
