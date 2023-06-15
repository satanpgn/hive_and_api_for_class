import 'package:equatable/equatable.dart';

class BatchEntity extends Equatable {
  final String? batchId;
  final String batchName;

  const BatchEntity({
    this.batchId,
    required this.batchName,
  });

  factory BatchEntity.fromJson(Map<String, dynamic> json) => BatchEntity(
        batchId: json["batchId"],
        batchName: json["batchName"],
      );

  @override
  List<Object?> get props => [batchId, batchName];
}
