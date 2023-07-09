import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../blocs/blocs.dart';
import '../data/repositories/repositories.dart';
import 'environment.dart';

final providers = [
  BlocProvider<NetWorkBloc>(
    lazy: false,
    create: (BuildContext context) => NetWorkBloc()..add(const NetWorkLoaded()),
  ),
  BlocProvider<AppConfigBloc>(
    lazy: false,
    create: (BuildContext context) =>
        AppConfigBloc(apiRepository: ApiRepository()),
  ),
  BlocProvider<ChannelBloc>(
    lazy: false,
    create: (BuildContext context) => ChannelBloc(),
  ),

  // NewsBloc
  BlocProvider<NewsBloc>(
    lazy: false,
    create: (BuildContext context) => NewsBloc(apiRepository: ApiRepository()),
  ),
  // PodcastBloc

  BlocProvider<PodcastBloc>(
    lazy: false,
    create: (BuildContext context) =>
        PodcastBloc(apiRepository: ApiRepository()),
  ),
  BlocProvider<ShutDownBloc>(
    lazy: false,
    create: (BuildContext context) => ShutDownBloc(),
  ),
];
