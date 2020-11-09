class Plant {
  String Name;
  String Image;
  String Price;
  String WaterReq;
  String Temperature;
  String PlantingWater;
  String Humidity;
  String Size;
  String Description;
  String Pot;
  String extra;

  Plant(
      {this.Name,
      this.Image,
      this.Price,
      this.WaterReq,
      this.Temperature,
      this.PlantingWater,
      this.Humidity,
      this.Size,
      this.Description,
      this.Pot,this.extra});
}

List<Plant> plantlist = [
  Plant(
      Name: "Orchid (Colour may vary)",
      extra: "10 inches pot",
      Image: "assets/images/Cymbidium.jpg",
      Price: "£12.20",
      WaterReq: "250 ml",
      Temperature: "19 degree C",
      PlantingWater: "Every 4 days",
      Humidity: "5.2%",
      Size: "12 Inches",
      Pot:
          '''Root-Control Nursery Seedling Planter Decorative Garden Flower Pot Container Green for Indoor Outdoor Bonsai Plants, Aloe, Herb, Orchid and More ''',
      Description:
          '''Cymbidium orchid plants are easy to grow as house plants. Get cymbidium orchid care tips and find out how to coax the most blooms. '''),

  Plant(
      Name: "Rose",
      extra: "18 inches pot",
      Image: "assets/images/rose.jpg",
      Price: "£8.20",
      WaterReq: "250 ml",
      Temperature: "22 degree C",
      PlantingWater: "Every 2 days",
      Humidity: " Upto 8.2%",
      Size: "23 Inches",
      Pot:
          '''Root-Control Nursery Seedling Planter Decorative Garden Flower Pot Container Green for Indoor Outdoor Bonsai Plants, Aloe, Herb, Orchid and More ''',
      Description:
          '''Your garden will be a riot of cheerful colours and wonderful fragrances with the rose (Rosa) 'Doris Tysterman'! The deliciously fragrant flowers are a cheerful orange. Plant the rose in the autumn. The flowers bloom in the summer until autumn. '''),
  Plant(
      Name: "Orchid (Colour may vary)",
      extra: "20 inches pot",
      Image: "assets/images/orchid.jpg",
      Price: "£12.20",
      WaterReq: "250 ml",
      Temperature: "19 degree C",
      PlantingWater: "Every 4 days",
      Humidity: "5.2%",
      Size: "12 Inches",
      Pot:
          '''Root-Control Nursery Seedling Planter Decorative Garden Flower Pot Container Green for Indoor Outdoor Bonsai Plants, Aloe, Herb, Orchid and More ''',
      Description:
          '''Cymbidium orchid plants are easy to grow as house plants. Get cymbidium orchid care tips and find out how to coax the most blooms. '''),
  Plant(
      Name: "Rose",
      Image: "assets/images/rose.jpg",
      extra: "8 inches pot",
      Price: "£8.20",
      WaterReq: "250 ml",
      Temperature: "22 degree C",
      PlantingWater: "Every 2 days",
      Humidity: " Upto 8.2%",
      Size: "23 Inches",
      Pot:
          '''Root-Control Nursery Seedling Planter Decorative Garden Flower Pot Container Green for Indoor Outdoor Bonsai Plants, Aloe, Herb, Orchid and More ''',
      Description:
          '''Your garden will be a riot of cheerful colours and wonderful fragrances with the rose (Rosa) 'Doris Tysterman'! The deliciously fragrant flowers are a cheerful orange. Plant the rose in the autumn. The flowers bloom in the summer until autumn. '''),
];
