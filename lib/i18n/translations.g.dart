
/*
 * Generated file. Do not edit.
 *
 * Locales: 1
 * Strings: 24 
 *
 * Built on 2023-07-08 at 20:31 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn _t = _currLocale.translations;
_TranslationsEn get t => _t;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_t = _currLocale.translations;

		// force rebuild if TranslationProvider is used
		_translationProviderKey.currentState?.setLocale(_currLocale);

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _TranslationsEn _translationsEn = _TranslationsEn.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_TranslationsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_TranslationsEn build() {
		switch (this) {
			case AppLocale.en: return _TranslationsEn.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _TranslationsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build();

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	String get APP_NAME => 'Radio';
	late final _TranslationsButtonEn BUTTON = _TranslationsButtonEn._(_root);
	late final _TranslationsTitleEn TITLE = _TranslationsTitleEn._(_root);
	late final _TranslationsHintEn HINT = _TranslationsHintEn._(_root);
	late final _TranslationsBottomNavbarEn BOTTOM_NAVBAR = _TranslationsBottomNavbarEn._(_root);
	late final _TranslationsLabelEn LABEL = _TranslationsLabelEn._(_root);
	late final _TranslationsErrrMessagesEn ERRR_MESSAGES = _TranslationsErrrMessagesEn._(_root);
	late final _TranslationsMessagesEn MESSAGES = _TranslationsMessagesEn._(_root);
}

// Path: BUTTON
class _TranslationsButtonEn {
	_TranslationsButtonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get CLOSE_APP => 'Close the app';
	String get CONFIRM => 'Confirm';
	String get CANCEL => 'Cancel';
	String get CLOSE => 'Close';
	String get PLAT_PODCAST => 'Reproducir';
	String get MORE_INFO => 'Mas info';
	String get SHARE => 'Compartir';
	String get SeeComplete => 'Ver completa';
	String get RETURN => 'Volver';
	String get DownLoad => 'Descargar';
}

// Path: TITLE
class _TranslationsTitleEn {
	_TranslationsTitleEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get Player_podcast => 'Reproductor Podcast';
}

// Path: HINT
class _TranslationsHintEn {
	_TranslationsHintEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get SHARE_PODCAST => 'Podcast compartido:';
}

// Path: BOTTOM_NAVBAR
class _TranslationsBottomNavbarEn {
	_TranslationsBottomNavbarEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get NEWS => 'Noticias';
	String get PODCAST => 'Podcasts';
}

// Path: LABEL
class _TranslationsLabelEn {
	_TranslationsLabelEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get CHANNEL => 'Channel';
	String get PUBDATE => 'Publicado';
	String get DURATION => 'Duración';
}

// Path: ERRR_MESSAGES
class _TranslationsErrrMessagesEn {
	_TranslationsErrrMessagesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsErrrMessagesOfflineEn OFFLINE = _TranslationsErrrMessagesOfflineEn._(_root);
	late final _TranslationsErrrMessagesAppDisableEn APP_DISABLE = _TranslationsErrrMessagesAppDisableEn._(_root);
}

// Path: MESSAGES
class _TranslationsMessagesEn {
	_TranslationsMessagesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get APP_CLOSE => 'Confirm you want to close the app. The playback will be stopped';
	String get AUTO_OFF => 'Playback will stop at:';
}

// Path: ERRR_MESSAGES.OFFLINE
class _TranslationsErrrMessagesOfflineEn {
	_TranslationsErrrMessagesOfflineEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Your\'s device is offline';
	String SUB_TITLE({required Object appname}) => 'Please try to connect with internet to enjoy the stream from $appname';
}

// Path: ERRR_MESSAGES.APP_DISABLE
class _TranslationsErrrMessagesAppDisableEn {
	_TranslationsErrrMessagesAppDisableEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'App is disable, please contact with station';
	String get SUBTITLE => '';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'APP_NAME': 'Radio',
			'BUTTON.CLOSE_APP': 'Close the app',
			'BUTTON.CONFIRM': 'Confirm',
			'BUTTON.CANCEL': 'Cancel',
			'BUTTON.CLOSE': 'Close',
			'BUTTON.PLAT_PODCAST': 'Reproducir',
			'BUTTON.MORE_INFO': 'Mas info',
			'BUTTON.SHARE': 'Compartir',
			'BUTTON.SeeComplete': 'Ver completa',
			'BUTTON.RETURN': 'Volver',
			'BUTTON.DownLoad': 'Descargar',
			'TITLE.Player_podcast': 'Reproductor Podcast',
			'HINT.SHARE_PODCAST': 'Podcast compartido:',
			'BOTTOM_NAVBAR.NEWS': 'Noticias',
			'BOTTOM_NAVBAR.PODCAST': 'Podcasts',
			'LABEL.CHANNEL': 'Channel',
			'LABEL.PUBDATE': 'Publicado',
			'LABEL.DURATION': 'Duración',
			'ERRR_MESSAGES.OFFLINE.TITLE': 'Your\'s device is offline',
			'ERRR_MESSAGES.OFFLINE.SUB_TITLE': ({required Object appname}) => 'Please try to connect with internet to enjoy the stream from $appname',
			'ERRR_MESSAGES.APP_DISABLE.TITLE': 'App is disable, please contact with station',
			'ERRR_MESSAGES.APP_DISABLE.SUBTITLE': '',
			'MESSAGES.APP_CLOSE': 'Confirm you want to close the app. The playback will be stopped',
			'MESSAGES.AUTO_OFF': 'Playback will stop at:',
		};
	}
}
