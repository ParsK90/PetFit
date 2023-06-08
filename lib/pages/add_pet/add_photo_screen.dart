import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class AddPhotoPetScreen extends StatefulWidget {
  static String routeName = "/addphoto";
  const AddPhotoPetScreen({Key? key}) : super(key: key);

  @override
  _AddPhotoPetScreenScreenState createState() =>
      _AddPhotoPetScreenScreenState();
}

class _AddPhotoPetScreenScreenState extends State<AddPhotoPetScreen> {
  final List<dynamic> _images = [];
  final picker = ImagePicker();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future getImage(ImageSource source) async {
    if (_images.length >= 15) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Maksimum 15 resim eklenebilir.'),
        duration: Duration(seconds: 2),
      ));
      return;
    }

    List<Asset> resultList = [];

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 15 - _images.length,
        enableCamera: false,
        selectedAssets: _images.whereType<Asset>().toList(),
        cupertinoOptions: const CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: const MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Galeriden Resim Seç",
          allViewTitle: "Tüm Resimler",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      print(e);
    }

    if (!mounted) return;

    if (_images.length + resultList.length > 15) {
      resultList = resultList.sublist(0, 15 - _images.length);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Maksimum 15 resim eklenebilir.'),
        duration: Duration(seconds: 2),
      ));
    }

    setState(() {
      _images.addAll(resultList);
    });
  }

  String formatImageLabel(String? path, int index) {
    if (path == null) {
      return '';
    }
    String label = index == 0 ? 'Kapak Resmi' : path.split('/').last;
    if (label.length > 15) {
      label = '${label.substring(0, 15)}...';
    }
    return label;
  }

  Future<void> requestPermissions() async {
    PermissionStatus cameraStatus = await Permission.camera.request();
    PermissionStatus microphoneStatus = await Permission.microphone.request();
    PermissionStatus photosStatus = await Permission.photos.request();

    print('Kamera izni: $cameraStatus');
    print('Mikrofon izni: $microphoneStatus');
    print('Fotoğraf kitaplığı izni: $photosStatus');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: _images.isEmpty
            ? const Text(
                'Evcil Hayvanınızın Resimini Yükleyin',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            : const Text(
                'Resimleri sürükleyerek sıralayabilirsiniz',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check_circle_sharp,
                color: kPrimaryColor,
              ))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _images.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.add_a_photo, size: 50),
                        SizedBox(height: 10),
                        Text("Lütfen resim ekleyiniz",
                            style: TextStyle(fontSize: 16))
                      ],
                    ),
                  )
                : ReorderableGridView.builder(
                    itemCount: _images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var image = _images[index];
                      return GridTile(
                        key: Key(image.toString()),
                        footer: Container(
                          color: Colors.black54,
                          child: Text(
                            formatImageLabel(
                                image is Asset ? image.name : image.path,
                                index),
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        child: Stack(
                          children: [
                            image is Asset
                                ? AssetThumb(
                                    asset: image, width: 300, height: 300)
                                : Image.file(image, fit: BoxFit.cover),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                icon: const Icon(Icons.delete,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    _images.removeAt(index);
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Resim silindi.'),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    onReorder: (oldIndex, newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        final item = _images.removeAt(oldIndex);
                        _images.insert(newIndex, item);
                      });
                    },
                  ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF17203A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
                  onPressed: () => getImage(ImageSource.gallery),
                  child: Row(
                    children: const [
                      Icon(Icons.photo_library_outlined),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Galeriden Resim Seç'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
                  onPressed: () => getImage(ImageSource.camera),
                  child: Row(
                    children: const [
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Fotoğraf Çek'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
