import 'package:alpha_brand/Presentation/login/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/dio_helper.dart';
import '../../../models/end_points.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required int id,
    required String firstname,
    required String lastname,
    required String urlImage,
    required String phonenumber,
    required String  dialCode,
    required String cityId,
    required String address,

  })
  {
emit(LoginLoadingState());
    DioHelper.postData(
      url: loginEndpoints,
      data: {
        'Id': id,
        'FirstName': firstname,
        'LastName' : lastname,
        'UrlImage' : urlImage,
        'PhoneNumber': phonenumber,
        'DialCode'  : dialCode,
        // 'CityId'   :,
        // 'Address'  :,
        // 'Street'  :,
        // 'ProfileImage':

      },
    ).then((value) {
      print(value.data);
      emit(LoginSuccessState());
    }

    ).catchError((error){
      emit(LoginErrorState(error.toString()));
    });
  }
}
