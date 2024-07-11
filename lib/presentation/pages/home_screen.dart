import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/config/extensions.dart';
import 'package:test_project/cubit/data_cubit.dart';
import 'package:test_project/cubit/data_state.dart';

import '../../bloc/auth_bloc.dart';
import '../../data/model/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return OrientationBuilder(
      builder: (context, orientation) {
        return BlocBuilder<DataCubit, DataState>(builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Home'),
              centerTitle: true,
              actions: [
                Text(user.userName),
                20.pw,
              ],
            ),
            body: orientation == Orientation.portrait
                ? Column(
                    children: [
                      Expanded(child: PieChart()),
                      Expanded(child: DataTableWidget()),
                    ],
                  )
                : Center(child: DataTableWidget()),
          );
        });
      },
    );
  }
}

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ChartData> data = [
      // ChartData('A', 25),
      // ChartData('B', 75),
    ];
    for (int i = 0;
        i < BlocProvider.of<DataCubit>(context).state.datas.length;
        i++) {
      data.add(ChartData(
          BlocProvider.of<DataCubit>(context).state.datas[i].countryName,
          BlocProvider.of<DataCubit>(context).state.datas[i].percentageInWorldEconomy));
    }
    var series = [
      charts.Series(
        id: 'Sales',
        domainFn: (ChartData data, _) => data.label,
        measureFn: (ChartData data, _) => data.value,
        data: data,
      ),
    ];

    return charts.PieChart(
      series,
      animate: true,
    );
  }
}

class ChartData {
  final String label;
  final int value;

  ChartData(this.label, this.value);
}

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        horizontalMargin: 0,
        columnSpacing: 15,
        columns: [
          DataColumn(label: Text('Country')),
          DataColumn(label: Text('World Rating')),
          DataColumn(label: Text('Percentage Economy')),
        ],
        rows: [
          ...BlocProvider.of<DataCubit>(context)
              .state
              .datas
              .map((e) => DataRow(cells: [
                    DataCell(Text(e.countryName)),
                    DataCell(Text(e.worldRating.toString())),
                    DataCell(Text(e.percentageInWorldEconomy.toString())),
                  ]))
              .toList(),
          // DataRow(cells: [
          //   DataCell(Text('Alice')),
          //   DataCell(Text('25')),
          // ]),
          // DataRow(cells: [
          //   DataCell(Text('Bob')),
          //   DataCell(Text('30')),
          // ]),
        ],
      ),
    );
  }
}
