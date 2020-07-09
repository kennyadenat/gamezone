class Ticket {
  final String id;
  final String sourceStation;
  final String destinationStation;
  final String sourceCity;
  final String destinationCity;
  final String departureTime;
  final String arrivalTime;
  final String terminal;
  final String game;
  final String boardingTime;

  Ticket(
      {this.id,
      this.sourceStation,
      this.destinationStation,
      this.sourceCity,
      this.destinationCity,
      this.departureTime,
      this.arrivalTime,
      this.terminal,
      this.game,
      this.boardingTime});
}

final ticketList = [
  Ticket(
      id: '1',
      sourceStation: 'LHR',
      destinationStation: 'SXF',
      sourceCity: 'London',
      destinationCity: 'New York',
      departureTime: '15:00',
      arrivalTime: '07:00',
      terminal: '12',
      game: 'F62',
      boardingTime: '14:30'),
  Ticket(
      id: '2',
      sourceStation: 'DHR',
      destinationStation: 'LOS',
      sourceCity: 'New Delhi',
      destinationCity: 'Los Angelos',
      departureTime: '09:00',
      arrivalTime: '23:59',
      terminal: '4',
      game: 'U21',
      boardingTime: '08:25'),
  Ticket(
      id: '3',
      sourceStation: 'ABJ',
      destinationStation: 'ENG',
      sourceCity: 'Abuja City',
      destinationCity: 'Enugu City',
      departureTime: '09:00',
      arrivalTime: '23:59',
      terminal: '9',
      game: 'T32',
      boardingTime: '08:25'),
  Ticket(
      id: '4',
      sourceStation: 'ABJ',
      destinationStation: 'ENG',
      sourceCity: 'Abuja City',
      destinationCity: 'Enugu City',
      departureTime: '09:00',
      arrivalTime: '23:59',
      terminal: '9',
      game: 'T32',
      boardingTime: '08:25'),
  Ticket(
      id: '5',
      sourceStation: 'KAN',
      destinationStation: 'ABJ',
      sourceCity: 'Kano City',
      destinationCity: 'Abuja City',
      departureTime: '09:00',
      arrivalTime: '10:59',
      terminal: '5',
      game: 'T62',
      boardingTime: '08:25')
];
