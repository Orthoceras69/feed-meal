class Ingredient {
  String? text;
  List<Parsed>? parsed;

  Ingredient({this.text, this.parsed});

  Ingredient.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['parsed'] != null) {
      parsed = <Parsed>[];
      json['parsed'].forEach((v) {
        parsed!.add(new Parsed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    if (this.parsed != null) {
      data['parsed'] = this.parsed!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parsed {
  Food? food;

  Parsed({this.food});

  Parsed.fromJson(Map<String, dynamic> json) {
    food = json['food'] != null ? new Food.fromJson(json['food']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.food != null) {
      data['food'] = this.food!.toJson();
    }
    return data;
  }
}

class Food {
  String? foodId;
  String? label;
  Nutrients? nutrients;
  String? category;
  String? categoryLabel;
  String? image;

  Food(
      {this.foodId,
      this.label,
      this.nutrients,
      this.category,
      this.categoryLabel,
      this.image});

  Food.fromJson(Map<String, dynamic> json) {
    foodId = json['foodId'];
    label = json['label'];
    nutrients = json['nutrients'] != null
        ? new Nutrients.fromJson(json['nutrients'])
        : null;
    category = json['category'];
    categoryLabel = json['categoryLabel'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodId'] = this.foodId;
    data['label'] = this.label;
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients!.toJson();
    }
    data['category'] = this.category;
    data['categoryLabel'] = this.categoryLabel;
    data['image'] = this.image;
    return data;
  }
}

class Nutrients {
  int? eNERCKCAL;
  double? pROCNT;
  double? fAT;
  double? cHOCDF;
  double? fIBTG;

  Nutrients({this.eNERCKCAL, this.pROCNT, this.fAT, this.cHOCDF, this.fIBTG});

  Nutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'];
    pROCNT = json['PROCNT'];
    fAT = json['FAT'];
    cHOCDF = json['CHOCDF'];
    fIBTG = json['FIBTG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ENERC_KCAL'] = this.eNERCKCAL;
    data['PROCNT'] = this.pROCNT;
    data['FAT'] = this.fAT;
    data['CHOCDF'] = this.cHOCDF;
    data['FIBTG'] = this.fIBTG;
    return data;
  }
}
