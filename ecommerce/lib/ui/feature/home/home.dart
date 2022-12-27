import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/feature/home/bloc/home_presenter.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../injection/injector.dart';
import 'components/body.dart';

class Home extends BasePage {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final _homePresenter = injector.get<HomePresenter>();
  @override
  void initState() {
_homePresenter.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Body(homePresenter: _homePresenter,),
    );
  }
}
