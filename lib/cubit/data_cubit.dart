import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/cubit/data_state.dart';
import 'package:test_project/data/model/data_model.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit()
      : super(TodoInitial([
       DataModel('Uzbekistan', 30, 2),
       DataModel('USA', 1, 30),
       DataModel('China', 2, 25),
       DataModel('Russia', 8, 15),
       DataModel('Germany', 5, 20),
        ]));
}
