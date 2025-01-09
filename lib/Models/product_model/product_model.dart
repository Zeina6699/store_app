import 'package:equatable/equatable.dart';

import 'rating.dart';

class ProductModel extends Equatable {
	final int id;
	final String title;
	final double price;
	final String description;
	final String category;
	final String image;
	final Rating rating;

	const ProductModel({
	required	this.id, 
	required	this.title, 
	required	this.price, 
	required	this.description, 
	required	this.category, 
	required	this.image, 
	required	this.rating, 
	});

	factory ProductModel.fromJson(json) => ProductModel(
				id: json['id'] ,
				title: json['title'] ,
				price: (json['price']).toDouble(),
				description: json['description'],
				category: json['category'],
				image: json['image'],
				rating:Rating.fromJson(json['rating']),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'title': title,
				'price': price,
				'description': description,
				'category': category,
				'image': image,
				'rating': rating.toJson(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				title,
				price,
				description,
				category,
				image,
				rating,
		];
	}
}
