import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_states.dart';

class PagesCubit extends Cubit<PagesStates> {
  String? title;
  PagesCubit() : super(SortedState());
  moveToRatedPage() {
    title = 'Rated';
    emit(RatedState());
  }

  moveToSortedPage() {
    title = 'Sorted';
    emit(SortedState());
  }

  moveToMalePage() {
    title = 'Male';
    emit(MaleState());
  }

  moveToFemalePage() {
    title = 'Female';
    emit(FemaleState());
  }

  moveToFavoriteDoctorsPage() {
    title = 'Favorite';
    emit(DoctorsFavoriteState());
  }

  moveToFavoriteServicesPage() {
        title = 'Favorite';
    emit(ServicesFavoriteState());
  }
}
