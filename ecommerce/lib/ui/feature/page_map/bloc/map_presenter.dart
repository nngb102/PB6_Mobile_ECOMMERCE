import 'dart:async';

import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'map_state.dart';

class MapPresenter extends Cubit<MapState> {
  MapPresenter(
    this.payPresenter, {
    @visibleForTesting MapState? state,
  }) : super(
          state ?? MapState.initial(),
        );
  final PayPresenter payPresenter;
  final Completer<GoogleMapController> controller = Completer();
  TextEditingController textEditingController = TextEditingController();

  LocationData? currentLocation;
  late LatLng latLngCurrentLocation;

  var sourceLocation = const LatLng(
    16.056969039155955,
    108.17348822822422,
  );
  Future<void> getCurrentLocation() async {
    final location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    currentLocation = await location.getLocation();

    await changeLocation(
        LatLng(currentLocation!.latitude!, currentLocation!.longitude!));

    await getNameLocation(
        currentLocation!.latitude!, currentLocation!.longitude!);
    emit(
      state.copyWith(
          latitude: currentLocation!.latitude,
          longitude: currentLocation!.longitude,
          mapStatus: MapStatus.success),
    );
  }

  // Future<List<LocationModel>> search(String query) async {
  //   final url =
  //       'https://maps.googleapis.com/maps/api/place/textsearch/json?query=\$$query&key=AIzaSyCCjOouriMMXY1GukXfwWftlgt1kIRxYCM';
  //   final response = await Dio().get(url);
  //   notifyListeners();

  //   return LocationModel.parseLocationList(response.data);
  // }

  // void locationSelected(LocationModel? location) {
  //   changeLocation(LatLng(location!.lat!, location.lng!));
  //   getNameLocation(location.lat!, location.lng!);
  //   notifyListeners();
  // }

  void onCamera(LatLng latLng) {
    emit(
      state.copyWith(mapStatus: MapStatus.inProgress),
    );
    changeLocation(latLng);
    getNameLocation(latLng.latitude, latLng.longitude);
    emit(
      state.copyWith(
          latitude: latLng.latitude,
          longitude: latLng.longitude,
          mapStatus: MapStatus.success),
    );
  }

  Future getNameLocation(double latitude, double longitude) async {
    final coordinates = Coordinates(latitude, longitude);
    final addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    final first = addresses.first;
    textEditingController.text = '${first.addressLine}';
    emit(
      state.copyWith(address: textEditingController.text),
    );
  }

  Future changeLocation(LatLng latLng) async {
    latLngCurrentLocation = latLng;
    final googleMapController = await controller.future;
    await googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          zoom: 15.5,
          target: latLngCurrentLocation,
        ),
      ),
    );
  }

  void onBack() {
    payPresenter.getAddress(state.address);
  }
}
