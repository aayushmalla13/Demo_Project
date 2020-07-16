import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class Model {
  dynamic productId;
  String productName;
  String manufactureName;
  String model;
  String size;
  dynamic price;
  String description;
  dynamic inStock;
  // List<Asset> images;

  Model({
    this.productId,
    this.productName,
    this.manufactureName,
    this.model,
    this.size,
    this.price,
    this.description,
    this.inStock,
  });
}
