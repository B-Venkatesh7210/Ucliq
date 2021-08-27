class AddressListItemClass {
  String? addressType;
  String? address;
  AddressListItemClass({this.address, this.addressType});
}

List<AddressListItemClass> address = [
  AddressListItemClass(
      address: 'Bangalore, Karnataka-560019', addressType: 'Default Address'),
  AddressListItemClass(
      address: 'Bangalore, Karnataka-560019', addressType: 'New Address'),
  AddressListItemClass(
      address: 'Bangalore, Karnataka-560019', addressType: 'New Address')
];
