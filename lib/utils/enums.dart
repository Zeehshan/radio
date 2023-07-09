/// Enums variables used throughout the application

enum ButtonUIActionAnimation { none, inProgress, success, failure }

// This handles building the widget in response to new states.
// Use in [BlocBuilder] or [BlocConsumer].
enum BlocStateUIStatus { loading, loaded, error }

// Invokes the listener in response to state changes in the bloc.
// It should be used for functionality that needs to occur once per state change
// such as navigation, showing a SnackBar, showing a Dialog, etc...
// Use in [BlocListener] or [BlocConsumer].
enum BlocStateUIActionType {
  none,
  inProgress,
  completed,
  failure,
  navigateToNext,
  navigateToBack,
}

enum NetworkType { wifi, mobile, unknown }

enum PlayerType { radio, podcast }

enum ContactType {
  direccion,
  telefono,
  adicional,
  web,
  email,
  email2,
  whatsapp,
  texto
}
