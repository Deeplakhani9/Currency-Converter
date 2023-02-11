class Currency {
  final dynamic INR;
  final dynamic CDF;
  final dynamic USD;

  Currency({
    required this.INR, //The Indian Rupee
    required this.CDF, //Pakistani Rupee
    required this.USD, //United States Dollar
  });

  factory Currency.fromjson({required Map json}) {
    return Currency(
      INR: json["conversion_rates"]["INR"],
      CDF: json["conversion_rates"]["CDF"],
      USD: json["conversion_rates"]["USD"],
    );
  }
}
