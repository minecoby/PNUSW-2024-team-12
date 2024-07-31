import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brr/view/main_page/main_page_view.dart';
import 'package:brr/view/list_match_page/match_list_view.dart';
import 'package:brr/layout/main_layout.dart';
import 'package:brr/view/mypage_page/mypage_page_view.dart';
import 'package:brr/view/schedule_page/schedule_page_view.dart';
import 'package:brr/view/matching_page/fast_matching_view_page.dart';

class MainRouter {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => MainLayout(
        child: MainPageView(),
      ),
    ),
    GetPage(
      name: '/matchlist',
      page: () => const MainLayout(
        child: MatchinglistPageView(),
      ),
    ),
    GetPage(
      name: '/mypage',
      page: () => const MainLayout(
        child: MypagePageView(),
      ),
    ),
    GetPage(
      name: '/schedule',
      page: () => const MainLayout(
        child: SchedulePageView(),
      ),
    ),
    GetPage(
      name: '/fastmatch',
      page: () => const MainLayout(
        child: FastMatchingPageView(),
      ),
    ),
  ];
}
