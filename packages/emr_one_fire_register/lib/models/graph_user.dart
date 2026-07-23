class GraphUser {
  GraphUser({
    required this.cardId,
    required this.email,
    required this.firstName,
    required this.surname,
    required this.id,
  });

  final String id;
  final String firstName;
  final String? email;
  final String surname;
  final String? cardId;
}
