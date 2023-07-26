class Data {
  final Number? number;
  final String? scheme;
  final String? type;
  final String? brand;
  final Country? country;
  final Bank? bank;

  Data({
    this.number,
    this.scheme,
    this.type,
    this.brand,
    this.country,
    this.bank,
  });

  Data.fromJson(Map<String, dynamic> json)
      : number = (json['number'] as Map<String, dynamic>?) != null
            ? Number.fromJson(json['number'] as Map<String, dynamic>)
            : null,
        scheme = json['scheme'] as String?,
        type = json['type'] as String?,
        brand = json['brand'] as String?,
        country = (json['country'] as Map<String, dynamic>?) != null
            ? Country.fromJson(json['country'] as Map<String, dynamic>)
            : null,
        bank = (json['bank'] as Map<String, dynamic>?) != null
            ? Bank.fromJson(json['bank'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'number': number?.toJson(),
        'scheme': scheme,
        'type': type,
        'brand': brand,
        'country': country?.toJson(),
        'bank': bank?.toJson()
      };
}

class Number {
  Number.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

class Country {
  final String? numeric;
  final String? alpha2;
  final String? name;
  final String? emoji;
  final String? currency;
  final int? latitude;
  final int? longitude;

  Country({
    this.numeric,
    this.alpha2,
    this.name,
    this.emoji,
    this.currency,
    this.latitude,
    this.longitude,
  });

  Country.fromJson(Map<String, dynamic> json)
      : numeric = json['numeric'] as String?,
        alpha2 = json['alpha2'] as String?,
        name = json['name'] as String?,
        emoji = json['emoji'] as String?,
        currency = json['currency'] as String?,
        latitude = json['latitude'] as int?,
        longitude = json['longitude'] as int?;

  Map<String, dynamic> toJson() => {
        'numeric': numeric,
        'alpha2': alpha2,
        'name': name,
        'emoji': emoji,
        'currency': currency,
        'latitude': latitude,
        'longitude': longitude
      };
}

class Bank {
  final String? name;
  final String? url;
  final String? phone;

  Bank({
    this.name,
    this.url,
    this.phone,
  });

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        url = json['url'] as String?,
        phone = json['phone'] as String?;

  Map<String, dynamic> toJson() => {'name': name, 'url': url, 'phone': phone};
}
