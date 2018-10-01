class Repos {
  final String aciklama;
  final String ad;
  final String katilimciSayisi;
  final String workshop;
  final String sunum;
  final Konum konum;
  final List<String> konusmacilar = null;
  final String meetUp;
  final String tarih;

  Repos({this.aciklama,this.ad,this.katilimciSayisi,this.meetUp,this.tarih,this.workshop,this.sunum,this.konum});

  factory Repos.fromJson(Map<String, dynamic> json){
   return Repos(
      aciklama: json['Aciklama'] as String,
      ad:json['Ad'] as String,
      katilimciSayisi:json['KatilimciSayisi'] as String,
      workshop: json['Workshop'] as String,
      sunum:json['Sunum'] as String,
      meetUp:json['MeetUp'] as String,
      tarih:json['Tarih'] as String,
      konum: Konum.fromJson(json['Konum']) as Konum,
  );
  }

}

class Konum {
  String lati;
  String long;

  Konum({this.lati,this.long});

  factory Konum.fromJson(Map<String,dynamic> json){
    return Konum(
      lati: json["X"] as String,
      long: json["Y"] as String
    );
  }

}


