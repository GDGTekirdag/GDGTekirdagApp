class Repos {
  final String aciklama;
  final String ad;
  final String katilimciSayisi;
  final List<String> konusmacilar = null;
  final String meetUp;
  final String tarih;

  Repos({this.aciklama,this.ad,this.katilimciSayisi,this.meetUp,this.tarih});

  factory Repos.fromJson(Map<String, dynamic> json){
   return Repos(
      aciklama: json['Aciklama'] as String,
      ad:json['Ad'] as String,
      katilimciSayisi:json['KatilimciSayisi'] as String,
      meetUp:json['MeetUp'] as String,
      tarih:json['Tarih'] as String,
  );
  }

}


