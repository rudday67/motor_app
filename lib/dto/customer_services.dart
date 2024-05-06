class CustomerService  {
  final int idCustomerService;
  final String nim;
  final String titleIssues;
  final String descriptionIssues;
  final int rating;
  final String imageUrl;
  final dynamic divisionTarget;
  final dynamic priority;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  CustomerService({
    required this.idCustomerService,
    required this.nim,
    required this.titleIssues,
    required this.descriptionIssues,
    required this.rating,
    required this.imageUrl,
    required this.divisionTarget,
    required this.priority,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory CustomerService.fromJson(Map<String, dynamic> json) => CustomerService(
        idCustomerService: json["id_customer_service"],
        nim: json["nim"],
        titleIssues: json["title_issues"],
        descriptionIssues: json["description_issues"],
        rating: json["rating"],
        imageUrl: json["image_url"],
        divisionTarget: json["division_target"],
        priority: json["priority"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );
}
