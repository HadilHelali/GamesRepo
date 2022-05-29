import 'package:example/mind_games/Sudoku_game/screens/solve_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/example_boards.dart';
import 'models/sudoku_grid.dart';

class SudokuGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SudokuGrid>(
      create: (context) => SudokuGrid.fromTemplate(easyBoard),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sudoku Solver',
        initialRoute: 'solve',
        routes: {
          'solve': (context) => SolveScreen(),
        },
      ),
    );
  }
}
