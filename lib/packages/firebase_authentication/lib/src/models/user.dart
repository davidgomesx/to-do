import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    this.name,
    this.email,
  });

  final String id;
  final String? email;
  final String? name;

  static const empty = User(id: '');
  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [
        id,
        email,
        name,
      ];
}
