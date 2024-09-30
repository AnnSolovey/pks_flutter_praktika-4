class Item{
  final String img;
  final String name;
  final String cost;
  final String durationMin;
  final String durationSec;
  final String releaseDate;
  final String trackList;

  Item(this.img, this.name, this.cost, this.durationMin, this.durationSec, this.releaseDate, this.trackList);
}

List<Item> albums = [
  Item(
      'https://avatars.mds.yandex.net/i?id=3837e316f1776b9f111624bcd7ecdf3e_l-12674500-images-thumbs&n=13',
      'INTO THE BLUE',
      '30',
      '41',
      '20',
      'October 7, 2022',
      'Into The Blue\nWe\'re Not In Orbit Yet...\nInvisible Exit\nLove On The Run\nOne Night\nSaturdays\nForgotten Boy\nThe Chase\nFade Away'
  ),

  Item(
      'https://yandex-images.clstorage.net/vl9Q74Z19/cf01df8jcOW/tSyAGf2mVeWyKRm0CKhwPc4iO3i-7pNR9TGta91amF1WWCETrV022TkZBwY7xVF4Hm23mAFSE7Bt-RrGPAtXR6M_1IhqN5Xk9zvbJw4rdDidJWu97mjSUCNyuKVHUgXBj8bsz7AXKMp5jIdT6EOBKdEjM5bQSwXodWFTSeKSDpp74gwXfDHarXC-2bSNqjo2XeS5cS1hRNr9aOlvjtOHAA2Jqga4F2EBdEPDl69SiSFTLKmQnQvPJfmpVAwlU0rWsyIFmD8_lej-cRMxyq93Mxeidjxv70YWsOJp78VRwEDFB27PMVmnxPJOBBprVgYoF-wqXRyHjW4-Y5lBKxaIXzxihJYycVOt9znVNIvte3VVZ_A57yxPW_Tvb2dBUwkLiUGlDTzQLw78SYUQq1jNYValb1rcRQKhtWTcRKbYStN4bUwYOTWXaPr_V3ID7zJ5HW23-e4kCBF-Y6bqQZNLC4MNqwc6U-9OOM5D3u2UTi-fLKfZ28INpnqjXMQkHIgWvKFBkDN2VG18PpSyyqL6-J0jOvhpYMxX964pqklZD4LKRaWNelGphXXNTxiiXMlmkqrmW9HPgqV-ZhiO6p9FW7jkwRg_fVwuPDbaOsYoNHGbJPN_ZOAE23ZvaGDD3g-FCsluzv0ZZg9zhAIRpVmOIJRtodzVBQMguyGbTGlcwNu2qUiYeDzW5nOz3rfAIfk3ESJ4sSTghh056-gniVgGhYUMoYB8W-UO8kaOF62RBiwdLCbdUMWIpDyk2U8t2oZZfeHJHfg4HSC8_5e0iCUyP14hPvHpKokaMOMhbAkfCYIDjGPPcBZpwbPCjpZt2M7o0GUl1dgEA2Q7LBkIbd9PU3bpzlY7MJWnNTPddwlqujgU6fp-72QNmnbuZqIBEQ3NDQuuD3GRaIA6BI8YJJxP4VStIlXdDoytuK_ZBeOURhB0p4yQtf0bpzuwFDZCYzA5n-v5PCbthBj2riIswk',
      'GOOD LUCK',
      '8',
      '3',
      '27',
      'September 27, 2019',
      'Good Luck'
  ),

  Item(
      'https://avatars.yandex.net/get-music-content/2390047/b8551758.a.6225075-4/m1000x1000?webp=false',
      'SHELTER',
      '8',
      '3',
      '59',
      'December 7, 2018',
      'Shelter'
  ),

  Item(
      'https://t2.genius.com/unsafe/966x0/https%3A%2F%2Fimages.genius.com%2F22492d0afceb515f64c9ab1f45e0ce04.1000x1000x1.jpg',
      'AFTER THE DISCO',
      '18',
      '45',
      '53',
      'January 13, 2014',
      'Perfect World\nAfter The Disco\nHolding on for Life\nLeave It Alone\nThe Changing Lights\nControl\nLazy Wonderland\nMedicine\nNo Matter What You\'re Told\nThe Angel and the Fool\nThe Remains of Rock & Roll'
  ),

  Item(
      'https://avatars.mds.yandex.net/i?id=4dfd2f8069ccbec4ce4ba5913be02a0d_l-10139706-images-thumbs&n=13',
      'MEYRIN FIELDS EP',
      '40',
      '11',
      '39',
      'March 29, 2011',
      'Meyrin Fields\nWindows\nAn Easy Life\nHeartless Empire'
  ),

  Item(
      'https://is2-ssl.mzstatic.com/image/thumb/Music/10/45/1e/mzi.iwytyuur.jpg/600x600bf-60.jpg',
      'BROKEN BELLS',
      '20',
      '40',
      '20',
      'March 5, 2010',
      'The High Road\nVaporize\nYour Head Is On Fire\nThe Ghost Inside\nSailing to Nowhere\nTrap Doors\nCitizen\nOctober\nMongrel Heart\nThe Mall & Misery\nAn Easy Life'
  ),
];