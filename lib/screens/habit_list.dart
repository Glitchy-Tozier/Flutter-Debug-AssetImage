/* 
 * Githo – An app that helps you gradually form long-lasting habits.
 * Copyright (C) 2022 Florian Thaler
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart';

import 'package:debug_background/screens/habit_details.dart';
import 'package:debug_background/widgets/background.dart';

class HabitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<int> list = <int>[93];

    return Scaffold(
      body: Background(
        child: Center(
          // Turn Listview.builder into a regular Button and the bug disappears.

          /* child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<SingleHabitDisplay>(
                  builder: (BuildContext context) => SingleHabitDisplay(),
                ),
              );
            },
            child: const Text('This should work'),
          ), */

          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (BuildContext buildContex, int i) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<SingleHabitDisplay>(
                      builder: (BuildContext context) => SingleHabitDisplay(),
                    ),
                  );
                },
                child: Text(list[i].toString()),
              );
            },
          ),
        ),
      ),
    );
  }
}
