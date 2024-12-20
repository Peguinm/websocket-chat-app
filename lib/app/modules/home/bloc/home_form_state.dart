part of 'home_form_bloc.dart';

enum HomeFormStatus {
  data,
  invalid,
  valid,
}

class HomeFormState extends Equatable {
  final HomeFormStatus state;
  final List<GlobalKey<FormState>> formStates;
  final Map<String, TextEditingController> textControllers;

  const HomeFormState({
    required this.state,
    required this.formStates,
    required this.textControllers,
  });

  HomeFormState updateController(String key, TextEditingController controller) {
    final Map<String, TextEditingController> updatedControllers = Map<String, TextEditingController>.from(textControllers);
    updatedControllers[key] = controller;

    return copyWith(
      textControllers: updatedControllers,
    );
  }

  HomeFormState copyWith({
    HomeFormStatus? state,
    List<GlobalKey<FormState>>? formStates,
    Map<String, TextEditingController>? textControllers,
  }) {
    return HomeFormState(
      state: state ?? this.state,
      formStates: formStates ?? this.formStates,
      textControllers: textControllers ?? this.textControllers,
    );
  }

  @override
  List<Object?> get props => [state, formStates, textControllers];
}
