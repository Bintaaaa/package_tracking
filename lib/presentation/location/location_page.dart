import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_clean_code/application/location/location_bloc.dart';
import 'package:latihan_clean_code/domain/location/location_req.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';
import 'package:latihan_clean_code/injection.dart';
import 'package:latihan_clean_code/presentation/location/widget/dropdown_widget.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String? _errorMessage;
  ProvinceResponse? _provinceResponse;
  List<DropdownMenuItem<LocationResultData>>? _provinceFromListItem;
  List<DropdownMenuItem<LocationResultData>>? _cityFromListItem;
  LocationResultData? _selectedFromProvince;
  LocationResultData? _selectedFromCity;
  List<DropdownMenuItem<LocationResultData>>? _provinceToListItem;
  List<DropdownMenuItem<LocationResultData>>? _cityToListItem;
  LocationResultData? _selectedToProvince;
  LocationResultData? _selectedToCity;
  TextEditingController _weightPackage = TextEditingController(text: '');
  String? _selectedCorier;
  @override
  void initState() {
    initializeFromData();
    initializeToData();
    super.initState();
  }

  void initializeFromData() {
    _errorMessage = "";
    _provinceResponse = null;
    _provinceFromListItem = [];
    _selectedFromProvince = null;
    _selectedFromCity = null;
    _cityFromListItem = [];
  }

  void initializeToData() {
    _errorMessage = "";
    _provinceResponse = null;
    _provinceToListItem = [];
    _selectedToProvince = null;
    _selectedToCity = null;
    _cityToListItem = [];
  }

  void locationFromListener(BuildContext context, LocationState state) {
    state.maybeMap(
      orElse: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Data Kosong",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      cityDataOptions: (e) => e.cityProvince.fold(
        () => {},
        (a) => a.fold(
            (l) => l.map(
                  notFound: (e) => _errorMessage = e.message.toString(),
                  badRequest: (e) => _errorMessage = e.message.toString(),
                  serverError: (e) => _errorMessage = "server error",
                ), (r) {
          _cityFromListItem = r.results
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("${e.type} ${e.cityName}"),
                ),
              )
              .toList();
        }),
      ),
      provinceDataOptions: (e) => e.dataProvince.fold(
        () {},
        (a) => a.fold(
          (l) {
            l.map(
              notFound: (e) => _errorMessage = e.message.toString(),
              badRequest: (e) => _errorMessage = e.message.toString(),
              serverError: (e) => _errorMessage = "server error",
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
          (r) {
            _provinceResponse = r;
            _provinceFromListItem = r.results
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.province),
                  ),
                )
                .toList();
          },
        ),
      ),
    );
  }

  void locationToListener(BuildContext context, LocationState state) {
    state.maybeMap(
      orElse: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Data Kosong",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      cityDataOptions: (e) => e.cityProvince.fold(
        () => {},
        (a) => a.fold(
            (l) => l.map(
                  notFound: (e) => _errorMessage = e.message.toString(),
                  badRequest: (e) => _errorMessage = e.message.toString(),
                  serverError: (e) => _errorMessage = "server error",
                ), (r) {
          _cityToListItem = r.results
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text("${e.type} ${e.cityName}"),
                ),
              )
              .toList();
        }),
      ),
      provinceDataOptions: (e) => e.dataProvince.fold(
        () {},
        (a) => a.fold(
          (l) {
            l.map(
              notFound: (e) => _errorMessage = e.message.toString(),
              badRequest: (e) => _errorMessage = e.message.toString(),
              serverError: (e) => _errorMessage = "server error",
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
          (r) {
            _provinceResponse = r;
            _provinceToListItem = r.results
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.province),
                  ),
                )
                .toList();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cek Harga Ongkos Kirim"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(24),
              child: Form(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Berat paket",
                    suffixText: "gram",
                  ),
                  controller: _weightPackage,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: DropDownLocation(
                hint: "Pilih Ekspedisi",
                listItem: [
                  DropdownMenuItem(
                    child: Text("JNE"),
                    value: "jne",
                  ),
                  DropdownMenuItem(
                    child: Text("POS INDONESIA"),
                    value: "pos",
                  ),
                  DropdownMenuItem(
                    child: Text("TIKI"),
                    value: "tiki",
                  ),
                ],
                onChanged: (courier) {
                  setState(() {
                    _selectedCorier = courier.toString();
                  });
                },
                resultData: _selectedCorier,
              ),
            ),
            Container(
              child: BlocProvider(
                create: (context) => getIt<LocationBloc>()
                  ..add(LocationEvent.getLocationProvince()),
                child: BlocConsumer<LocationBloc, LocationState>(
                  listener: locationFromListener,
                  builder: (context, state) {
                    return BlocBuilder<LocationBloc, LocationState>(
                      builder: (context, state) {
                        return Container(
                          margin: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Text(
                                "Asal Kota : ",
                                style: TextStyle(fontSize: 24),
                              ),
                              DropDownLocation<LocationResultData>(
                                  listItem: _provinceFromListItem,
                                  onChanged: (province) {
                                    setState(() {
                                      _selectedFromProvince = province;
                                      _selectedFromCity = null;
                                      _cityFromListItem = null;
                                    });
                                    context.read<LocationBloc>()
                                      ..add(
                                        LocationEvent.getLocationCity(
                                            provinceId: province!.provinceId),
                                      );
                                  },
                                  hint: "Pilih Provinsi",
                                  resultData: _selectedFromProvince),
                              DropDownLocation<LocationResultData>(
                                  listItem: _cityFromListItem,
                                  onChanged: (city) {
                                    setState(() {
                                      _selectedFromCity = city;
                                    });
                                  },
                                  hint: "Pilih Kota",
                                  resultData: _selectedFromCity)
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              child: BlocProvider(
                create: (context) => getIt<LocationBloc>()
                  ..add(LocationEvent.getLocationProvince()),
                child: BlocConsumer<LocationBloc, LocationState>(
                  listener: locationToListener,
                  builder: (context, state) {
                    return BlocBuilder<LocationBloc, LocationState>(
                      builder: (context, state) {
                        return Container(
                          margin: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Text(
                                "Kota Tujuan : ",
                                style: TextStyle(fontSize: 24),
                              ),
                              DropDownLocation<LocationResultData>(
                                  listItem: _provinceToListItem,
                                  onChanged: (province) {
                                    setState(() {
                                      _selectedToProvince = province;
                                      _selectedToCity = null;
                                      _cityToListItem = null;
                                    });
                                    context.read<LocationBloc>()
                                      ..add(
                                        LocationEvent.getLocationCity(
                                            provinceId: province!.provinceId),
                                      );
                                  },
                                  hint: "Pilih Provinsi",
                                  resultData: _selectedToProvince),
                              DropDownLocation<LocationResultData>(
                                  listItem: _cityToListItem,
                                  onChanged: (city) {
                                    setState(() {
                                      _selectedToCity = city;
                                    });
                                  },
                                  hint: "Pilih Kota",
                                  resultData: _selectedToCity)
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              child: BlocProvider(
                create: (context) => getIt<LocationBloc>(),
                child: BlocListener<LocationBloc, LocationState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      costsDataOptions: (e) => e.costData.fold(
                        () {},
                        (a) => a.fold(
                          (l) => print("Something Wrong Error"),
                          (r) => showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                    title: Text("Hasil Pencarian"),
                                    children: (r.results.length == 0 ||
                                            r.results.isEmpty)
                                        ? [Text("No Data Shown")]
                                        : r.results[0].costs
                                            .map((e) => listItemOfServices(e))
                                            .toList());
                              }),
                        ),
                      ),
                    );
                  },
                  child: BlocBuilder<LocationBloc, LocationState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<LocationBloc>().add(
                                LocationEvent.getCosts(
                                  fromData: _selectedFromCity!,
                                  toData: _selectedToCity!,
                                  weight: int.parse(_weightPackage.text),
                                  courier: _selectedCorier!,
                                ),
                              );
                        },
                        child: Text("Cek Ongkir"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) =>
                                states.contains(MaterialState.pressed)
                                    ? Colors.greenAccent
                                    : Colors.greenAccent,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded listProvince(ProvinceResponse r) {
    return Expanded(
      child: ListView.builder(
        itemCount: r.results.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            r.results[index].province,
          ),
        ),
      ),
    );
  }

  Container failureError(String msg) {
    return Container(
      child: Text(msg),
    );
  }

  Widget listItemOfServices(Costs e) => ListTile(
        title: Text(e.service),
        trailing: Text(e.cost[0].value.toString()),
        subtitle: Text(e.cost[0].etd.toString() + " Hari"),
      );
}
