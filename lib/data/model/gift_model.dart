// To parse this JSON data, do
//
//     final responseGiftMovies = responseGiftMoviesFromMap(jsonString);

import 'dart:convert';

class ResponseGiftMovies {
    ResponseGiftMovies({
        this.data,
        this.pagination,
        this.meta,
    });

    List<Datum>? data;
    Pagination? pagination;
    Meta? meta;

    factory ResponseGiftMovies.fromJson(String str) => ResponseGiftMovies.fromMap(json.decode(str));

   
    factory ResponseGiftMovies.fromMap(Map<String, dynamic> json) => ResponseGiftMovies(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        pagination: Pagination.fromMap(json["pagination"]),
        meta: Meta.fromMap(json["meta"]),
    );

  
}

class Datum {
    Datum({
        this.type,
        this.id,
        this.url,
        this.slug,
        this.bitlyGifUrl,
        this.bitlyUrl,
        this.embedUrl,
        this.username,
        this.source,
        this.title,
    
        this.contentUrl,
        this.sourceTld,
        this.sourcePostUrl,
        this.isSticker,
        this.importDatetime,
        this.trendingDatetime,
        this.images,
        this.analyticsResponsePayload,
        this.analytics,
        this.user,
    });

    Type? type;
    String? id;
    String? url;
    String? slug;
    String? bitlyGifUrl;
    String? bitlyUrl;
    String? embedUrl;
    String? username;
    String? source;
    String? title;
   
    String? contentUrl;
    String? sourceTld;
    String? sourcePostUrl;
    int? isSticker;
    DateTime? importDatetime;
    String? trendingDatetime;
    Images? images;
    String? analyticsResponsePayload;
    Analytics? analytics;
    User? user;

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
      
        id: json["id"],
        url: json["url"],
        slug: json["slug"],
        bitlyGifUrl: json["bitly_gif_url"],
        bitlyUrl: json["bitly_url"],
        embedUrl: json["embed_url"],
        username: json["username"],
        source: json["source"],
        title: json["title"],
       
        contentUrl: json["content_url"],
        sourceTld: json["source_tld"],
        sourcePostUrl: json["source_post_url"],
        isSticker: json["is_sticker"],
        importDatetime: DateTime.parse(json["import_datetime"]),
        trendingDatetime: json["trending_datetime"],
        images: Images.fromMap(json["images"]),
        analyticsResponsePayload: json["analytics_response_payload"],
        analytics: Analytics.fromMap(json["analytics"]),
        user: json["user"] == null ? null : User.fromMap(json["user"]),
    );

}

class Analytics {
    Analytics({
        this.onload,
        this.onclick,
        this.onsent,
    });

    Onclick? onload;
    Onclick? onclick;
    Onclick? onsent;

    factory Analytics.fromJson(String str) => Analytics.fromMap(json.decode(str));

    
    factory Analytics.fromMap(Map<String, dynamic> json) => Analytics(
        onload: Onclick.fromMap(json["onload"]),
        onclick: Onclick.fromMap(json["onclick"]),
        onsent: Onclick.fromMap(json["onsent"]),
    );

   
}

class Onclick {
    Onclick({
        this.url,
    });

    String? url;

    factory Onclick.fromJson(String str) => Onclick.fromMap(json.decode(str));

  
    factory Onclick.fromMap(Map<String, dynamic> json) => Onclick(
        url: json["url"],
    );

 
}

class Images {
    Images({
        this.original,
        this.downsized,
        this.downsizedLarge,
        this.downsizedMedium,
        this.downsizedSmall,
        this.downsizedStill,
        this.fixedHeight,
        this.fixedHeightDownsampled,
        this.fixedHeightSmall,
        this.fixedHeightSmallStill,
        this.fixedHeightStill,
        this.fixedWidth,
        this.fixedWidthDownsampled,
        this.fixedWidthSmall,
        this.fixedWidthSmallStill,
        this.fixedWidthStill,
        this.looping,
        this.originalStill,
        this.originalMp4,
        this.preview,
        this.previewGif,
        this.previewWebp,
        this.the480WStill,
        this.hd,
    });

    FixedHeight? original;
    The480WStill? downsized;
    The480WStill? downsizedLarge;
    The480WStill? downsizedMedium;
    DownsizedSmall? downsizedSmall;
    The480WStill? downsizedStill;
    FixedHeight? fixedHeight;
    FixedHeight? fixedHeightDownsampled;
    FixedHeight? fixedHeightSmall;
    The480WStill? fixedHeightSmallStill;
    The480WStill? fixedHeightStill;
    FixedHeight? fixedWidth;
    FixedHeight? fixedWidthDownsampled;
    FixedHeight? fixedWidthSmall;
    The480WStill? fixedWidthSmallStill;
    The480WStill? fixedWidthStill;
    Looping? looping;
    The480WStill? originalStill;
    DownsizedSmall? originalMp4;
    DownsizedSmall? preview;
    The480WStill? previewGif;
    The480WStill? previewWebp;
    The480WStill? the480WStill;
    DownsizedSmall? hd;

    factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

   
    factory Images.fromMap(Map<String, dynamic> json) => Images(
        original: FixedHeight.fromMap(json["original"]),
        downsized: The480WStill.fromMap(json["downsized"]),
        downsizedLarge: The480WStill.fromMap(json["downsized_large"]),
        downsizedMedium: The480WStill.fromMap(json["downsized_medium"]),
        downsizedSmall: DownsizedSmall.fromMap(json["downsized_small"]),
        downsizedStill: The480WStill.fromMap(json["downsized_still"]),
        fixedHeight: FixedHeight.fromMap(json["fixed_height"]),
        fixedHeightDownsampled: FixedHeight.fromMap(json["fixed_height_downsampled"]),
        fixedHeightSmall: FixedHeight.fromMap(json["fixed_height_small"]),
        fixedHeightSmallStill: The480WStill.fromMap(json["fixed_height_small_still"]),
        fixedHeightStill: The480WStill.fromMap(json["fixed_height_still"]),
        fixedWidth: FixedHeight.fromMap(json["fixed_width"]),
        fixedWidthDownsampled: FixedHeight.fromMap(json["fixed_width_downsampled"]),
        fixedWidthSmall: FixedHeight.fromMap(json["fixed_width_small"]),
        fixedWidthSmallStill: The480WStill.fromMap(json["fixed_width_small_still"]),
        fixedWidthStill: The480WStill.fromMap(json["fixed_width_still"]),
        looping: Looping.fromMap(json["looping"]),
        originalStill: The480WStill.fromMap(json["original_still"]),
        originalMp4: DownsizedSmall.fromMap(json["original_mp4"]),
        preview: DownsizedSmall.fromMap(json["preview"]),
        previewGif: The480WStill.fromMap(json["preview_gif"]),
        previewWebp: The480WStill.fromMap(json["preview_webp"]),
        the480WStill: The480WStill.fromMap(json["480w_still"]),
        hd: json["hd"] == null ? null : DownsizedSmall.fromMap(json["hd"]),
    );

   
}

class The480WStill {
    The480WStill({
        this.height,
        this.width,
        this.size,
        this.url,
    });

    String? height;
    String? width;
    String? size;
    String? url;

    factory The480WStill.fromJson(String str) => The480WStill.fromMap(json.decode(str));

  
    factory The480WStill.fromMap(Map<String, dynamic> json) => The480WStill(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
    );

  
}

class DownsizedSmall {
    DownsizedSmall({
        this.height,
        this.width,
        this.mp4Size,
        this.mp4,
    });

    String? height;
    String? width;
    String? mp4Size;
    String? mp4;

    factory DownsizedSmall.fromJson(String str) => DownsizedSmall.fromMap(json.decode(str));

   
    factory DownsizedSmall.fromMap(Map<String, dynamic> json) => DownsizedSmall(
        height: json["height"],
        width: json["width"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
    );

 
}

class FixedHeight {
    FixedHeight({
        this.height,
        this.width,
        this.size,
        this.url,
        this.mp4Size,
        this.mp4,
        this.webpSize,
        this.webp,
        this.frames,
        this.hash,
    });

    String? height;
    String? width;
    String? size;
    String? url;
    String? mp4Size;
    String? mp4;
    String? webpSize;
    String? webp;
    String? frames;
    String? hash;

    factory FixedHeight.fromJson(String str) => FixedHeight.fromMap(json.decode(str));



    factory FixedHeight.fromMap(Map<String, dynamic> json) => FixedHeight(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
        mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
        mp4: json["mp4"] == null ? null : json["mp4"],
        webpSize: json["webp_size"],
        webp: json["webp"],
        frames: json["frames"] == null ? null : json["frames"],
        hash: json["hash"] == null ? null : json["hash"],
    );


}

class Looping {
    Looping({
        this.mp4Size,
        this.mp4,
    });

    String? mp4Size;
    String? mp4;

    factory Looping.fromJson(String str) => Looping.fromMap(json.decode(str));

   
    factory Looping.fromMap(Map<String, dynamic> json) => Looping(
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
    );

   
}



class User {
    User({
        this.avatarUrl,
        this.bannerImage,
        this.bannerUrl,
        this.profileUrl,
        this.username,
        this.displayName,
        this.description,
        this.instagramUrl,
        this.websiteUrl,
        this.isVerified,
    });

    String? avatarUrl;
    String? bannerImage;
    String? bannerUrl;
    String? profileUrl;
    String? username;
    String? displayName;
    String? description;
    String? instagramUrl;
    String? websiteUrl;
    bool? isVerified;

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    factory User.fromMap(Map<String, dynamic> json) => User(
        avatarUrl: json["avatar_url"],
        bannerImage: json["banner_image"],
        bannerUrl: json["banner_url"],
        profileUrl: json["profile_url"],
        username: json["username"],
        displayName: json["display_name"],
        description: json["description"],
        instagramUrl: json["instagram_url"],
        websiteUrl: json["website_url"],
        isVerified: json["is_verified"],
    );

  
}

class Meta {
    Meta({
        this.status,
        this.msg,
        this.responseId,
    });

    int? status;
    String? msg;
    String? responseId;

    factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  
    factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        status: json["status"],
        msg: json["msg"],
        responseId: json["response_id"],
    );

    
}

class Pagination {
    Pagination({
        this.totalCount,
        this.count,
        this.offset,
    });

    int? totalCount;
    int? count;
    int? offset;

    factory Pagination.fromJson(String str) => Pagination.fromMap(json.decode(str));

  

    factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        totalCount: json["total_count"],
        count: json["count"],
        offset: json["offset"],
    );

  
}


