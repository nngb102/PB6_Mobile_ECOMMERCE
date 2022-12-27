import 'dart:async';

import 'package:ecommerce/ui/feature/page_map/bloc/map_presenter.dart';
import 'package:ecommerce/ui/feature/page_map/bloc/map_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import 'components/input_address.dart';

class PageMap extends BasePage {
  const PageMap({Key? key}) : super(key: key);

  @override
  State<PageMap> createState() => _PageMapState();
}

class _PageMapState extends BasePageState<PageMap> {
  final mapPresenter = injector.get<MapPresenter>();

  @override
  bool get resizeToAvoidBottomInset => true;

  @override
  Future<bool> onWillPop() async {
    mapPresenter.onBack();
    Future.delayed(const Duration(seconds: 1));
    return super.onWillPop();
  }

  @override
  void initState() {
    mapPresenter.getCurrentLocation();
    super.initState();
  }

  @override
  Widget buildBody(BuildContext context) => Scaffold(
          body: BlocBuilder<MapPresenter, MapState>(
        bloc: mapPresenter,
        // buildWhen: (previous, current) =>
        //     previous.currentLocation != current.currentLocation,
        builder: (context, state) => Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: mapPresenter.sourceLocation,
                zoom: 14.5,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('source'),
                  position: (state.latitude == null && state.longitude == null)
                      ? mapPresenter.sourceLocation
                      : LatLng(
                          state.latitude!,
                          state.longitude!,
                        ),
                ),
              },
              onMapCreated: (mapController) {
                if (!mapPresenter.controller.isCompleted) {
                  mapPresenter.controller.complete(mapController);
                } else {
                  //other calling, later is true,
                  //don't call again completer()
                }
              },
              onTap: (onTap) {
                mapPresenter.onCamera(onTap);
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        const Text(
                          'Chọn Địa Chỉ',
                          style: TextStyle(fontSize: 23),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(
                                child: InputAddress(mapPresenter: mapPresenter),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                // onTap: () => AutoRouter.of(context)
                                //     .pop(value.textEditingController.text),

                                child: const Icon(
                                  Icons.cloud_upload,
                                  size: 40,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
}
