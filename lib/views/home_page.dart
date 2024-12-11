import 'package:counter_app/Cubit/counter_cubit.dart';
import 'package:counter_app/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                      style: const TextStyle(
                        fontSize: 125,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(161, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                  ]),
                  const SizedBox(
                    height: 490,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 22,
                      //endIndent: 2,
                    ),
                  ),
                  Column(children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                      style: const TextStyle(
                        fontSize: 125,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: const Size(161, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                  ]),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 60),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetScores();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }
}