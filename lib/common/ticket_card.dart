import 'package:flutter/material.dart';
import 'package:posegal/models/ticket.dart';
import 'package:posegal/pages/ticket_detail.dart';
import 'package:posegal/styleguide/ticket_styles.dart';

import '../image_asset.dart';
import 'fade_page_route.dart';

class TicketCardWidget extends StatelessWidget {
  final Ticket ticket;
  final bool showQR;
  const TicketCardWidget({Key key, @required this.ticket, this.showQR})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      padding: showQR
          ? EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)
          : EdgeInsets.all(0.0),
      child: Material(
          color: Colors.amber[500],
          elevation: showQR ? 8.0 : 0.0,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(FadePageRoute(widget: TicketDetail(ticket: ticket)));
            },
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            LocationWidget(
                                stationName: ticket.sourceStation,
                                cityName: ticket.sourceCity,
                                time: ticket.departureTime),
                            Spacer(),
                            Icon(
                              Icons.train,
                              color: Colors.white,
                              size: 40.0,
                            ),
                            Spacer(),
                            LocationWidget(
                                stationName: ticket.destinationStation,
                                cityName: ticket.destinationCity,
                                time: ticket.arrivalTime),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(height: 0.5, color: Colors.white),
                        SizedBox(
                          height: 16.0,
                        ),
                        AirportDetailWidget(
                            terminal: ticket.terminal,
                            boarding: ticket.boardingTime,
                            game: ticket.game),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  showQR ? Image.asset(qr, width: 80.0) : Container(),
                ],
              ),
            ),
          )),
    );
  }
}

class AirportDetailWidget extends StatelessWidget {
  final String terminal, boarding, game;
  const AirportDetailWidget({Key key, this.terminal, this.boarding, this.game})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildDetailColumn("terminal", terminal),
        Spacer(),
        buildDetailColumn("game", game),
        Spacer(),
        buildDetailColumn("boarding", boarding),
      ],
    );
  }

  Widget buildDetailColumn(String label, String value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(label.toUpperCase(), style: smallTextStyle),
          Text(value, style: smallBoldTextStyle),
        ],
      );
}

class LocationWidget extends StatelessWidget {
  final String stationName, cityName, time;
  const LocationWidget(
      {Key key,
      @required this.stationName,
      @required this.cityName,
      @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(stationName.toUpperCase(), style: bigTextStyle),
        SizedBox(height: 2.0),
        Text(cityName, style: smallTextStyle),
        SizedBox(height: 2.0),
        Text(time, style: mediumTextStyle),
      ],
    );
  }
}
