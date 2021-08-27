class SellerListItemClass {
  String? itemName;
  String? cityName;
  num? minOrderValue;
  num? numOfProducts;

  SellerListItemClass(
      {this.itemName, this.cityName, this.minOrderValue, this.numOfProducts});
}

List<SellerListItemClass> seller = [
  SellerListItemClass(
      itemName: 'Chicken',
      cityName: 'Banglore',
      minOrderValue: 1000,
      numOfProducts: 6),
  SellerListItemClass(
      itemName: 'Fruits',
      cityName: 'Banglore',
      minOrderValue: 1000,
      numOfProducts: 6),
  SellerListItemClass(
      itemName: 'Chicken',
      cityName: 'Banglore',
      minOrderValue: 1000,
      numOfProducts: 6),
  SellerListItemClass(
      itemName: 'Chicken',
      cityName: 'Banglore',
      minOrderValue: 1000,
      numOfProducts: 6)
];
