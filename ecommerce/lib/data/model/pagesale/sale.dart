class Sale {
  Sale({required this.id, required this.image});

  String image;
  int id;
}

List<Sale> sale = [
  Sale(
    id: 1,
    image: 'assets/images/sieu-giam-gia-shopee.jpg',
  ),
  Sale(
    id: 2,
    image: 'assets/images/KHUYEN-MAI.png',
  ),
  Sale(
    id: 3,
    image: 'assets/images/mediamart-bung-n-chuong-trinh-sieu-sale-cui-nam-gia-tt-cht-ngay-nao_e8c83448.jpg',
  ),
  Sale(
    id: 4,
    image: 'assets/images/san-voucher-giam-gia.jpg',
  ),
  Sale(
    id: 5,
    image: 'assets/images/mua-nhieu-gia-tot.png',
  ),
];
