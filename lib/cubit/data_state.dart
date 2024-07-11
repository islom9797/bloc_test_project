import '../data/model/data_model.dart';

 class DataState{

  final List<DataModel> datas;
  DataState(this.datas);
}
class TodoInitial extends DataState{
  final List<DataModel> datas;
  TodoInitial(this.datas):super(datas);


}