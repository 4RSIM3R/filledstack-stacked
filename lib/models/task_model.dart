import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  
  final String title;
  final String subtitle;

  const TaskModel({required this.title, required this.subtitle});
  
  @override
  // TODO: implement props
  List<Object?> get props => [title, subtitle]; 



}