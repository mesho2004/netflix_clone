import 'dart:convert';

class Genre {
  int? id;
  String? name;

  Genre({this.id, this.name});

  factory Genre.fromMap(Map<String, dynamic> data) => Genre(
        id: data['id'] as int?,
        name: data['name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Genre].
  factory Genre.fromJson(String data) {
    return Genre.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Genre] to a JSON string.
  String toJson() => json.encode(toMap());

  Genre copyWith({
    int? id,
    String? name,
  }) {
    return Genre(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
