class ListResponse {
  List<ExoPlanet> items;
  bool more;
  int total;
  int page;
  int perPage;

  static ListResponse fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    ListResponse responseBean = ListResponse();
    responseBean.items = List()..addAll(
      (map['items'] as List ?? []).map((o) => ExoPlanet.fromMap(o))
    );
    responseBean.more = map['more'];
    responseBean.total = map['total'];
    responseBean.page = map['page'];
    responseBean.perPage = map['per_page'];
    return responseBean;
  }

  Map toJson() => {
    "items": items,
    "more": more,
    "total": total,
    "page": page,
    "per_page": perPage,
  };
}

class ExoPlanet {
  int id;
  String plHostname;
  String plLetter;
  String displayName;
  String description;
  String discoveryDate;
  String url;
  String title;
  String featureTitle;
  String massDisplay;
  String planetType;
  int stDist;
  double stOptmag;
  double plRadj;
  double plRade;
  double plMassj;
  String plDiscmethod;
  String image;
  String listImage;
  String shortDescription;
  String rangerFeatureId;
  String rangerSystemId;
  bool rangerSystem;
  String exoId;
  String subtitle;
  List<dynamic> categories;
  bool plKepflag;
  String plFacility;

  static ExoPlanet fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    ExoPlanet itemsBean = ExoPlanet();
    itemsBean.id = map['id'];
    itemsBean.plHostname = map['pl_hostname'];
    itemsBean.plLetter = map['pl_letter'];
    itemsBean.displayName = map['display_name'];
    itemsBean.description = map['description'];
    itemsBean.discoveryDate = map['discovery_date'];
    itemsBean.url = map['url'];
    itemsBean.title = map['title'];
    itemsBean.featureTitle = map['feature_title'];
    itemsBean.massDisplay = map['mass_display'];
    itemsBean.planetType = map['planet_type'];
    itemsBean.stDist = map['st_dist'];
    itemsBean.stOptmag = map['st_optmag'];
    itemsBean.plRadj = map['pl_radj'];
    itemsBean.plRade = map['pl_rade'];
    itemsBean.plMassj = map['pl_massj'];
    itemsBean.plDiscmethod = map['pl_discmethod'];
    itemsBean.image = map['image'];
    itemsBean.listImage = map['list_image'];
    itemsBean.shortDescription = map['short_description'];
    itemsBean.rangerFeatureId = map['ranger_feature_id'];
    itemsBean.rangerSystemId = map['ranger_system_id'];
    itemsBean.rangerSystem = map['ranger_system'];
    itemsBean.exoId = map['exo_id'];
    itemsBean.subtitle = map['subtitle'];
    itemsBean.categories = map['categories'];
    itemsBean.plKepflag = map['pl_kepflag'];
    itemsBean.plFacility = map['pl_facility'];
    return itemsBean;
  }

  Map toJson() => {
    "id": id,
    "pl_hostname": plHostname,
    "pl_letter": plLetter,
    "display_name": displayName,
    "description": description,
    "discovery_date": discoveryDate,
    "url": url,
    "title": title,
    "feature_title": featureTitle,
    "mass_display": massDisplay,
    "planet_type": planetType,
    "st_dist": stDist,
    "st_optmag": stOptmag,
    "pl_radj": plRadj,
    "pl_rade": plRade,
    "pl_massj": plMassj,
    "pl_discmethod": plDiscmethod,
    "image": image,
    "list_image": listImage,
    "short_description": shortDescription,
    "ranger_feature_id": rangerFeatureId,
    "ranger_system_id": rangerSystemId,
    "ranger_system": rangerSystem,
    "exo_id": exoId,
    "subtitle": subtitle,
    "categories": categories,
    "pl_kepflag": plKepflag,
    "pl_facility": plFacility,
  };
}