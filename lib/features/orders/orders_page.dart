import 'package:demo/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders Page"),
      ),
      body: Center(
      child: Column(
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, count) =>
                Center(child: Text('Counter current : $count')),
          ),
          SizedBox(height: 20),
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () => context.read<CounterCubit>().increment(),
              ),
              const SizedBox(height: 4),
              FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () => context.read<CounterCubit>().decrement(),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
