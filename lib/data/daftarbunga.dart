class bunga {
  String name, harga, des, image;

  bunga(
      {required this.name,
      required this.harga,
      required this.des,
      required this.image});
}

List<bunga> dataBunga = [
  bunga(
      name: 'Mawar',
      harga: '50k',
      des: 'Bunga mawar segar dalam pot',
      image: 'images/mawar.jpg'),
  bunga(
      name: 'Anggrek',
      harga: '60k',
      des: 'Bunga anggrek segar dalam pot',
      image: 'images/anggrek.jpg'),
  bunga(
      name: 'Matahari',
      harga: '80k',
      des: 'Bunga matahari segar dalam pot',
      image: 'images/matahari.jpg'),
  bunga(
      name: 'Kaktus',
      harga: '30k',
      des: 'Bunga kaktus segar dalam pot',
      image: 'images/kaktus.jpg'),
];
