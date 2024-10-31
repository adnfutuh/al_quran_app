// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTimeModelImpl _$$PrayerTimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerTimeModelImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      data: PrayerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerTimeModelImplToJson(
        _$PrayerTimeModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$PrayerDataImpl _$$PrayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PrayerDataImpl(
      timings: Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: DateInfo.fromJson(json['date'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerDataImplToJson(_$PrayerDataImpl instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_$TimingsImpl _$$TimingsImplFromJson(Map<String, dynamic> json) =>
    _$TimingsImpl(
      Fajr: json['Fajr'] as String,
      Sunrise: json['Sunrise'] as String,
      Dhuhr: json['Dhuhr'] as String,
      Asr: json['Asr'] as String,
      Sunset: json['Sunset'] as String,
      Maghrib: json['Maghrib'] as String,
      Isha: json['Isha'] as String,
      Imsak: json['Imsak'] as String,
      Firstthird: json['Firstthird'] as String,
      Lastthird: json['Lastthird'] as String,
      Midnight: json['Midnight'] as String,
    );

Map<String, dynamic> _$$TimingsImplToJson(_$TimingsImpl instance) =>
    <String, dynamic>{
      'Fajr': instance.Fajr,
      'Sunrise': instance.Sunrise,
      'Dhuhr': instance.Dhuhr,
      'Asr': instance.Asr,
      'Sunset': instance.Sunset,
      'Maghrib': instance.Maghrib,
      'Isha': instance.Isha,
      'Imsak': instance.Imsak,
      'Firstthird': instance.Firstthird,
      'Lastthird': instance.Lastthird,
      'Midnight': instance.Midnight,
    };

_$DateInfoImpl _$$DateInfoImplFromJson(Map<String, dynamic> json) =>
    _$DateInfoImpl(
      readable: json['readable'] as String,
      timestamp: json['timestamp'] as String,
      gregorian: Gregorian.fromJson(json['gregorian'] as Map<String, dynamic>),
      hijri: Hijri.fromJson(json['hijri'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DateInfoImplToJson(_$DateInfoImpl instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'gregorian': instance.gregorian,
      'hijri': instance.hijri,
    };

_$GregorianImpl _$$GregorianImplFromJson(Map<String, dynamic> json) =>
    _$GregorianImpl(
      date: json['date'] as String,
      format: json['format'] as String,
      day: json['day'] as String,
      weekday: Weekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: Month.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
      designation:
          Designation.fromJson(json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GregorianImplToJson(_$GregorianImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };

_$HijriImpl _$$HijriImplFromJson(Map<String, dynamic> json) => _$HijriImpl(
      date: json['date'] as String,
      format: json['format'] as String,
      day: json['day'] as String,
      weekday: Weekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: Month.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
      designation:
          Designation.fromJson(json['designation'] as Map<String, dynamic>),
      holidays:
          (json['holidays'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$HijriImplToJson(_$HijriImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'holidays': instance.holidays,
    };

_$WeekdayImpl _$$WeekdayImplFromJson(Map<String, dynamic> json) =>
    _$WeekdayImpl(
      en: json['en'] as String,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$WeekdayImplToJson(_$WeekdayImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

_$MonthImpl _$$MonthImplFromJson(Map<String, dynamic> json) => _$MonthImpl(
      number: (json['number'] as num).toInt(),
      en: json['en'] as String,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$MonthImplToJson(_$MonthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$DesignationImpl _$$DesignationImplFromJson(Map<String, dynamic> json) =>
    _$DesignationImpl(
      abbreviated: json['abbreviated'] as String,
      expanded: json['expanded'] as String,
    );

Map<String, dynamic> _$$DesignationImplToJson(_$DesignationImpl instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      method: Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String,
      midnightMode: json['midnightMode'] as String,
      school: json['school'] as String,
      offset: json['offset'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'method': instance.method,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
      'offset': instance.offset,
    };

_$MethodImpl _$$MethodImplFromJson(Map<String, dynamic> json) => _$MethodImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      params: json['params'] as Map<String, dynamic>,
      location: json['location'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MethodImplToJson(_$MethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };
