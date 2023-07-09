// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      result: json['resultado'] as String,
      app: json['app'] == null ? null : AppModel.fromJson(json['app']),
      streaming: json['streaming'] == null
          ? null
          : StreamingModel.fromJson(json['streaming']),
      secciones: (json['secciones'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, SectionModel.fromJson(e)),
      ),
      redes: (json['redes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, SocialModel.fromJson(e)),
      ),
      banners: json['banners'] == null
          ? null
          : BannersModel.fromJson(json['banners']),
      noticias: json['noticias'] == null
          ? null
          : NewsModel.fromJson(json['noticias']),
      podcasts: json['podcasts'] == null
          ? null
          : PodcastsModel.fromJson(json['podcasts']),
      mensaje: json['mensaje'] == null
          ? null
          : MessageModel.fromJson(json['mensaje']),
      acerca: (json['acerca'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, ContactModel.fromJson(e)),
      ),
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'resultado': instance.result,
      'app': instance.app,
      'streaming': instance.streaming,
      'secciones': instance.secciones,
      'redes': instance.redes,
      'banners': instance.banners,
      'noticias': instance.noticias,
      'podcasts': instance.podcasts,
      'mensaje': instance.mensaje,
      'acerca': instance.acerca,
    };

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      mostrar: json['mostrar'] as String,
      texto: json['texto'] as String,
      link: json['link'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'mostrar': instance.mostrar,
      'texto': instance.texto,
      'link': instance.link,
      'url': instance.url,
    };

_$_PodcastsModel _$$_PodcastsModelFromJson(Map<String, dynamic> json) =>
    _$_PodcastsModel(
      activo: json['activo'] as String?,
      multiple: json['multiple'] as String?,
      canal:
          json['canal'] == null ? null : PodCastModel.fromJson(json['canal']),
      canales: (json['canales'] as List<dynamic>?)
          ?.map(PodCastModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$_PodcastsModelToJson(_$_PodcastsModel instance) =>
    <String, dynamic>{
      'activo': instance.activo,
      'multiple': instance.multiple,
      'canal': instance.canal,
      'canales': instance.canales,
    };

_$_PodCastModel _$$_PodCastModelFromJson(Map<String, dynamic> json) =>
    _$_PodCastModel(
      nombre: json['nombre'] as String?,
      url: json['url'] as String?,
      limite: json['limite'] as String?,
    );

Map<String, dynamic> _$$_PodCastModelToJson(_$_PodCastModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'url': instance.url,
      'limite': instance.limite,
    };

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      mostrar: json['mostrar'] as String?,
      cms: json['cms'] as String?,
      rss: json['rss'] as String?,
      limite: json['limite'] as String?,
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'mostrar': instance.mostrar,
      'cms': instance.cms,
      'rss': instance.rss,
      'limite': instance.limite,
    };

_$_SectionModel _$$_SectionModelFromJson(Map<String, dynamic> json) =>
    _$_SectionModel(
      activo: json['activo'] as String?,
      boton: json['boton'] as String?,
      url: json['url'] as String?,
      tiempohtml: json['tiempohtml'] as String?,
      iconoGenerico: json['icono_generico'] as String?,
    );

Map<String, dynamic> _$$_SectionModelToJson(_$_SectionModel instance) =>
    <String, dynamic>{
      'activo': instance.activo,
      'boton': instance.boton,
      'url': instance.url,
      'tiempohtml': instance.tiempohtml,
      'icono_generico': instance.iconoGenerico,
    };

_$_BannersModel _$$_BannersModelFromJson(Map<String, dynamic> json) =>
    _$_BannersModel(
      activo: json['activo'] as String?,
      multiple: json['multiple'] as String?,
      frecuencia: json['frecuencia'] as String?,
      elemento: json['elemento'] == null
          ? null
          : BannerModel.fromJson(json['elemento']),
      elementos: (json['elementos'] as List<dynamic>?)
          ?.map(BannerModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$_BannersModelToJson(_$_BannersModel instance) =>
    <String, dynamic>{
      'activo': instance.activo,
      'multiple': instance.multiple,
      'frecuencia': instance.frecuencia,
      'elemento': instance.elemento,
      'elementos': instance.elementos,
    };

_$_BannerModel _$$_BannerModelFromJson(Map<String, dynamic> json) =>
    _$_BannerModel(
      url: json['url'] as String?,
      enlace: json['enlace'] as String?,
    );

Map<String, dynamic> _$$_BannerModelToJson(_$_BannerModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'enlace': instance.enlace,
    };

_$_SocialModel _$$_SocialModelFromJson(Map<String, dynamic> json) =>
    _$_SocialModel(
      nombre: json['nombre'] as String?,
      mostrar: json['mostrar'] as String?,
      url: json['url'] as String?,
      orden: json['orden'] as String?,
    );

Map<String, dynamic> _$$_SocialModelToJson(_$_SocialModel instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'mostrar': instance.mostrar,
      'url': instance.url,
      'orden': instance.orden,
    };

_$_ContactModel _$$_ContactModelFromJson(Map<String, dynamic> json) =>
    _$_ContactModel(
      mostrar: json['mostrar'] as String?,
      data: json['data'] as String?,
      texto: json['texto'] as String?,
      pais: json['pais'] as String?,
    );

Map<String, dynamic> _$$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'mostrar': instance.mostrar,
      'data': instance.data,
      'texto': instance.texto,
      'pais': instance.pais,
    };
