import 'package:flutter/material.dart';
import 'package:lazy_data_table/lazy_data_table.dart';

class SimpleTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple table"),
      ),
      body: LazyDataTable(
        rows: 100,
        columns: 100,
        tableDimensions: LazyDataTableDimensions(
          cellHeight: 50,
          cellWidth: 100,
          topHeaderHeight: 50,
          leftHeaderWidth: 75,
        ),
        topHeaderBuilder: (i) => Center(child: Text("Column: ${i + 1}")),
        leftHeaderBuilder: (i) => Center(child: Text("Row: ${i + 1}")),
        dataCellBuilder: (i, j) => Center(child: Text("Cell: $i, $j")),
        topLeftCornerWidget: Center(child: Text("Corner")),
      ),
    );
  }
}
