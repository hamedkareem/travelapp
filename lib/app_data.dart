import 'package:flutter/material.dart';
import './models/category.dart';
import './models/trip.dart';

const Categories_data =  [
  Category(
    id: 'a1',
    title: 'جبال',
    imageUrl:
        'https://img.playbuzz.com/image/upload/c_crop,h_1125,w_1500,x_0,y_0/q_auto:good,f_auto,fl_lossy,w_640,c_limit,dpr_2.5/v1503055797/rsxs8wrofst1ie3z9beo.jpg',
  ),
  Category(
    id: 'a2',
    title: 'مصايف',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/3/39/Kurd_2012_%284%29.JPG',
  ),
  Category(
    id: 'a3',
    title: 'أهور',
    imageUrl:
        'https://d2wqffb2bc8st5.cloudfront.net/resources/files/2016/MARSH.jpg',
  ),
  Category(
    id: 'a4',
    title: 'بحيرات',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/4/40/5._Lake_Dukan%2C_Sulaymaniyah_Governorate%2C_Iraqi_Kurdistan.jpg',
  ),
  Category(
    id: 'a5',
    title: 'صحارى',
    imageUrl:
        'https://www.ibelieveinsci.com/wp-content/uploads/b934d255-f6ef-4331-bb8c-1cbecc6bd7f3-1440x984.jpg',
  ),
  Category(
    id: 'a6',
    title: 'أثار',
    imageUrl:
        'https://static.dw.com/image/18301598_403.jpg',
  ),
  Category(
    id: 'a7',
    title: 'مقدسات',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/4/45/Karbala_City_3.jpg',
  ),
  Category(
    id: 'a8',
    title: 'أخرى',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/3/3a/Shar_Park_%286556994591%29.jpg',
  ),
];
const Trips_data = [
  Trip(
    id: 'm1',
    categories: [ 'a1', ],
    title: 'قمة جبل شيخا دار',
    tripType: TripType.Exploration,
    //season: Season.Winter,
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/b/bd/Cheekhedar.jpg",
    duration: 20,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء', 'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: false,
    isInIrbil: true,
    location:LocaTion.Erbil,
      isShort:false,
    isLarge: true,
    subTitle: "بابل الحلة شارع ٦٠ جسر نادر",
    price: 50,
     ),
  Trip( id: 'm2',
    categories: [ 'a1', ],
    title: 'جبل زوزك غرب رواندز',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/P20502-154828.jpg/1280px-P20502-154828.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a1', ],
    title: 'جبل متين',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/ar/4/45/%D8%AC%D8%A8%D9%84_%D9%85%D8%AA%D9%8A%D9%86_%D9%83%D8%B1%D8%AF%D8%B3%D8%AA%D8%A7%D9%86.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a1', ],
    title: 'جبل كورك',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Korak_Mountain_and_Khalifan_city.jpg/420px-Korak_Mountain_and_Khalifan_city.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a2', ],
    title: 'بيخال',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/0/07/Bekhal.JPG",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a2', ],
    title: 'شرانش',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Sharanish.jpg/306px-Sharanish.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a3', ],
    title: 'هور الحمّار',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://ar.wikipedia.org/wiki/%D9%85%D9%84%D9%81:%D8%B5%D9%8A%D8%A7%D8%AF_%D8%B3"
        "%D9%85%D9%83_%D9%81%D9%8A_%D9%87%D9%88%D8%B1_%D8%A7%D9%84%D8%AD%D9%85%D9%91%D8%A7%D8%B1.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a3', ],
    title: 'شرانش',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Sharanish.jpg/306px-Sharanish.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a3', ],
    title: 'هور المالح',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/%D9%87%D9%88%D8%B1_%D8%A7%D9%84%D9%85%D8%A7%D9%84%D8%AD_%D9%81%D9%8A_%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D8%B1%D8%A9.jpg/390px-%D9%87%D9%88%D8%B1_%D8%A7%D9%84%D9%85%D8%A7%D9%84%D8%AD_%D9%81%D9%8A_%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D8%B1%D8%A9.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a4', ],
    title: 'بحيرة المالح',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/%D9%87%D9%88%D8%B1_%D8%A7%D9%84%D9%85%D8%"
        "A7%D9%84%D8%AD-%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D8%B1%D8%A9.jpg/1280px-%D9%87%D9%88%D8%B1_%D8%A7%D9%84%D9%85%D8%A7%D9%84%D8%AD-%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D8%B1%D8%A9.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a4', ],
    title: 'بحيرة دوكان',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lake_Dukan_CPT_photo.jpg/1280px-Lake_Dukan_CPT_photo.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a4', ],
    title: 'بحيرة الحبانية',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Inbound6060317719622477625.jpg/390px-Inbound6060317719622477625.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a7', ],
    title: 'رقد الإمام علي ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Meshed_ali_usnavy_%28PD%29.jpg/1280px-Meshed_ali_usnavy_%28PD%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a7', ],
    title: ' مرقد الأمام الحسين ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/c/c4/Karbala_-_26_August_2007_%2814_8606040599_L600%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a7', ],
    title: 'رقد الإمام علي ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Meshed_ali_usnavy_%28PD%29.jpg/1280px-Meshed_ali_usnavy_%28PD%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a7', ],
    title: ' مرقد الأمام الحسين ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/c/c4/Karbala_-_26_August_2007_%2814_8606040599_L600%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a7', ],
    title: 'رقد الإمام علي ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Meshed_ali_usnavy_%28PD%29.jpg/1280px-Meshed_ali_usnavy_%28PD%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a6', ],
    title: 'مرقد الإمام علي ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Meshed_ali_usnavy_%28PD%29.jpg/1280px-Meshed_ali_usnavy_%28PD%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),
  Trip( id: 'm2',
    categories: [ 'a8', ],
    title: ' مرقد الأمام الحسين ع',
    tripType: TripType.Exploration,
    //season: Season.Autumn,
    imageUrl:"https://upload.wikimedia.org/wikipedia/commons/c/c4/Karbala_-_26_August_2007_%2814_8606040599_L600%29.jpg",
    duration: 1,
    activities: [ 'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية' ],
    program: [ 'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.', ],
    isInDhoik: true,
    isInIrbil: false,
    location:LocaTion.Dihok,
    isShort:true,
    isLarge: false,
    subTitle: "بابل الحلة شارع ٤٠",
    price: 100 ,
  ),



];