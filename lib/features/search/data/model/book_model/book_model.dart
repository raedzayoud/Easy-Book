import 'package:book/features/home/data/model/book_model/accessInfo_model.dart';
import 'package:book/features/home/data/model/book_model/sale_info_model.dart';
import 'package:book/features/home/data/model/book_model/search_info_model.dart';
import 'package:book/features/home/data/model/book_model/volume_info_model.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo});

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? new VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = json['saleInfo'] != null
        ? new SaleInfo.fromJson(json['saleInfo'])
        : null;
    accessInfo = json['accessInfo'] != null
        ? new AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? new SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['id'] = this.id;
    data['etag'] = this.etag;
    data['selfLink'] = this.selfLink;
    if (this.volumeInfo != null) {
      data['volumeInfo'] = this.volumeInfo!.toJson();
    }
    if (this.saleInfo != null) {
      data['saleInfo'] = this.saleInfo!.toJson();
    }
    if (this.accessInfo != null) {
      data['accessInfo'] = this.accessInfo!.toJson();
    }
    if (this.searchInfo != null) {
      data['searchInfo'] = this.searchInfo!.toJson();
    }
    return data;
  }
}

