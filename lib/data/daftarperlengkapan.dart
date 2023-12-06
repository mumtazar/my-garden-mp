class perlengkapan {
  String name, harga, des, image;

  perlengkapan(
      {required this.name,
      required this.harga,
      required this.des,
      required this.image});
}

List<perlengkapan> dataPerlengkapan = [
  perlengkapan(
      name: 'Pot',
      harga: '25k',
      des: 'Pot tanah liat ukuran sedang',
      image: 'images/pot.jpg'),
  perlengkapan(
      name: 'Pupuk organik',
      harga: '20k',
      des: 'Pupuk organik 1kg',
      image: 'images/pupuk.jpg'),
  perlengkapan(
      name: 'Alat siram',
      harga: '15k',
      des: 'Alat siram tanaman plastik',
      image: 'images/siraman.jpg'),
];
