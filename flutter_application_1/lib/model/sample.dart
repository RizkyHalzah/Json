class sample {
    final String? name;
    final int? age;
    final List<String>? hobby;
  
    sample({this.name, this.age, this.hobby});
  
    factory sample.fromJson(Map<String, dynamic> json) {
      return sample(
        name: json["name"] ?? '',
        age: json["age"] ?? '',
        hobby: List<String>.from(json["hobby"] ?? [])
      );
    }
  
    @override
    String toString() => 'sample(name: $name, age: $age, hobby: $hobby)';
  }

class Github {
  final String username;
  final int repositories;
  final bool isGDE;

  Github({required this.username, required this.repositories, required this.isGDE,});

  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
      username: json["username"],
      repositories: json["repositories"],
      isGDE: json["isGDE"],
    );
  }

  @override
  String toString() =>
     'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
}

class Article {
  final int? id;
  final String? title;
  final String? subtitle;
  
  Article({
    this.id,
    this.title,
    this.subtitle,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json["id"] ?? 0,
      title: json["title"] ?? '',
      subtitle: json["subtitle"] ?? '',
    );
  }

  @override
  String toString() => 'Article(id: $id, title: $title, subtitle: $subtitle)';
}