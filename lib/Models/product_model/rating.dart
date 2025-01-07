import 'package:equatable/equatable.dart';

class Rating extends Equatable {
	final double rate;
	final int count;

	const Rating({required this.rate,required this.count});

	factory Rating.fromJson(json) => Rating(
				rate: (json['rate']).toDouble(),
				count: json['count'],
			);

	Map<String, dynamic> toJson() => {
				'rate': rate,
				'count': count,
			};

	@override
	List<Object?> get props => [rate, count];
}
