import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/features/Home/data/models/book_moudel/book_moudel.dart';
import 'package:my_bookly/features/Home/presentation/manger/featch_similar_cubit/fetch_similar_cubit.dart';
import 'package:my_bookly/features/Home/presentation/view/widget/book_details_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookMoudel});
  final BookMoudel bookMoudel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarCubit>(
      context,
    ).fetchSimilarBooks(gateGory: widget.bookMoudel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BookdetailsBody()));
  }
}
