import 'package:equatable/equatable.dart';

abstract class AggregateRoot<Id, Model> extends Equatable {
  final Id id;
  final Model model;

  @override
  List<Object?> get props => [
    id,
    model,
  ];

  const AggregateRoot({
    required this.id,
    required this.model,
  });

  Future<void> save();

  Future<void> delete();
}