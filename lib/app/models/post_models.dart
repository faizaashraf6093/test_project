import 'dart:convert';

class PostModel {
  final bool? status;
  final String? message;
  final List<Post>? posts;

  PostModel({
    this.status,
    this.message,
    this.posts,
  });

  factory PostModel.fromJson(String str) => PostModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostModel.fromMap(Map<String, dynamic> json) => PostModel(
        status: json["status"],
        message: json["message"],
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toMap())),
      };

  @override
  String toString() {
    return 'PostModel(status: $status, message: $message, posts: $posts)';
  }
}

class Post {
  final int? postId;
  final int? userId;
  final int? typeId;
  final int? payType;
  final int? price;
  final dynamic currency;
  final int? status;
  final String? website;
  final int? isPromote;
  final int? promotDuration;
  final dynamic campaignType;
  final String? campDate;
  final String? campTime;
  final String? description;
  final String? postVideo;
  final String? hashtags;
  final String? hashtagTitles;
  final dynamic postType;
  final String? profileImage;
  final String? name;
  final int? countryId;
  final Country? country;
  final Flag? flag;
  final String? currencyFlag;
  final int? laqtaCoins;
  final String? postTitle;
  final int? displaySaltaries;
  final dynamic content;
  final List<Image>? images;
  final int? likes;
  final int? shares;
  final int? comments;
  final int? offers;
  final Type? type;
  final dynamic survey;

  Post({
    this.postId,
    this.userId,
    this.typeId,
    this.payType,
    this.price,
    this.currency,
    this.status,
    this.website,
    this.isPromote,
    this.promotDuration,
    this.campaignType,
    this.campDate,
    this.campTime,
    this.description,
    this.postVideo,
    this.hashtags,
    this.hashtagTitles,
    this.postType,
    this.profileImage,
    this.name,
    this.countryId,
    this.country,
    this.flag,
    this.currencyFlag,
    this.laqtaCoins,
    this.postTitle,
    this.displaySaltaries,
    this.content,
    this.images,
    this.likes,
    this.shares,
    this.comments,
    this.offers,
    this.type,
    this.survey,
  });

  factory Post.fromJson(String str) => Post.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        postId: json["post_id"],
        userId: json["user_id"],
        typeId: json["type_id"],
        payType: json["pay_type"],
        price: json["price"],
        currency: json["currency"],
        status: json["status"],
        website: json["website"],
        isPromote: json["is_promote"],
        promotDuration: json["promot_duration"],
        campaignType: json["campaign_type"],
        campDate: json["camp_date"],
        campTime: json["camp_time"],
        description: json["description"],
        postVideo: json["post_video"],
        hashtags: json["hashtags"],
        hashtagTitles: json["hashtag_titles"],
        postType: json["post_type"],
        profileImage: json["profile_image"],
        name: json["name"],
        countryId: json["country_id"],
        country:
            json["country"] != null ? countryValues.map[json["country"]] : null,
        flag: json["flag"] != null ? flagValues.map[json["flag"]] : null,
        currencyFlag: json["currency_flag"],
        laqtaCoins: json["laqta_coins"],
        postTitle: json["post_title"],
        displaySaltaries: json["display_saltaries"],
        content: json["content"],
        images: json["images"] != null
            ? List<Image>.from(json["images"]!.map((x) => Image.fromMap(x)))
            : [],
        likes: json["likes"],
        shares: json["shares"],
        comments: json["comments"],
        offers: json["offers"],
        type: json["type"] != null ? typeValues.map[json["type"]] : null,
        survey: json["survey"],
      );

  Map<String, dynamic> toMap() => {
        "post_id": postId,
        "user_id": userId,
        "type_id": typeId,
        "pay_type": payType,
        "price": price,
        "currency": currency,
        "status": status,
        "website": website,
        "is_promote": isPromote,
        "promot_duration": promotDuration,
        "campaign_type": campaignType,
        "camp_date": campDate,
        "camp_time": campTime,
        "description": description,
        "post_video": postVideo,
        "hashtags": hashtags,
        "hashtag_titles": hashtagTitles,
        "post_type": postType,
        "profile_image": profileImage,
        "name": name,
        "country_id": countryId,
        "country": country != null ? countryValues.reverse[country] : null,
        "flag": flag != null ? flagValues.reverse[flag] : null,
        "currency_flag": currencyFlag,
        "laqta_coins": laqtaCoins,
        "post_title": postTitle,
        "display_saltaries": displaySaltaries,
        "content": content,
        "images": images != null
            ? List<dynamic>.from(images!.map((x) => x.toMap()))
            : [],
        "likes": likes,
        "shares": shares,
        "comments": comments,
        "offers": offers,
        "type": type != null ? typeValues.reverse[type] : null,
        "survey": survey,
      };

  @override
  String toString() {
    return 'Post(postId: $postId, userId: $userId, typeId: $typeId, payType: $payType, price: $price, currency: $currency, status: $status, website: $website, isPromote: $isPromote, promotDuration: $promotDuration, campaignType: $campaignType, campDate: $campDate, campTime: $campTime, description: $description, postVideo: $postVideo, hashtags: $hashtags, hashtagTitles: $hashtagTitles, postType: $postType, profileImage: $profileImage, name: $name, countryId: $countryId, country: $country, flag: $flag, currencyFlag: $currencyFlag, laqtaCoins: $laqtaCoins, postTitle: $postTitle, displaySaltaries: $displaySaltaries, content: $content, images: $images, likes: $likes, shares: $shares, comments: $comments, offers: $offers, type: $type, survey: $survey)';
  }
}

enum Country { EMPTY, UNITED_ARAB_EMIRATES }

final countryValues = EnumValues(
    {"": Country.EMPTY, "United Arab Emirates": Country.UNITED_ARAB_EMIRATES});

enum Flag { ASSETS_MEDIA_COUNTRIES_Y2_UJMU0_P_16938969577492_PNG, EMPTY }

final flagValues = EnumValues({
  "assets/media/countries/y2ujmu0p_1693896957_7492.png":
      Flag.ASSETS_MEDIA_COUNTRIES_Y2_UJMU0_P_16938969577492_PNG,
  "": Flag.EMPTY
});

class Image {
  final String? image;
  final int? isFirstPic;

  Image({
    this.image,
    this.isFirstPic,
  });

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        image: json["image"],
        isFirstPic: json["is_first_pic"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "is_first_pic": isFirstPic,
      };

  @override
  String toString() {
    return 'Image(image: $image, isFirstPic: $isFirstPic)';
  }
}

class SurveyClass {
  final int? id;
  final int? advertisementId;
  final String? question;
  final String? option1;
  final String? option2;
  final String? option3;
  final String? option4;

  SurveyClass({
    this.id,
    this.advertisementId,
    this.question,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
  });

  factory SurveyClass.fromJson(String str) =>
      SurveyClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SurveyClass.fromMap(Map<String, dynamic> json) => SurveyClass(
        id: json["id"],
        advertisementId: json["advertisement_id"],
        question: json["question"],
        option1: json["option_1"],
        option2: json["option_2"],
        option3: json["option_3"],
        option4: json["option_4"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "advertisement_id": advertisementId,
        "question": question,
        "option_1": option1,
        "option_2": option2,
        "option_3": option3,
        "option_4": option4,
      };

  @override
  String toString() {
    return 'SurveyClass(id: $id, advertisementId: $advertisementId, question: $question, option1: $option1, option2: $option2, option3: $option3, option4: $option4)';
  }
}

enum Type { ads, post }

final typeValues = EnumValues({"ads": Type.ads, "post": Type.post});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
