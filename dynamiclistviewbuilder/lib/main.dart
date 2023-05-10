import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }


}

// ignore: must_be_immutable
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  // ignore: non_constant_identifier_names
  var MyItems=[
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=7qBZ1xYNCvIAX8oCQXg&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDIKVIPIOic3TYh1RNnP7M6WTgBdGyZ7YJbGpG3yk0XiA&oe=6462FE57", "title":"Taohid"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/341252209_6483412315025900_5024241380903132109_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEq6I7oqwven5BcdFV_Wb0KucSe-GGl0Mu5xJ74YaXQy4GjAvS73iorvppGqO_zpnwRHmf_Sro5AjEDFddiqbzJ&_nc_ohc=14U8ve587l8AX_GT7wW&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDnSPU246PfsRFDxUHlTnvhcmirSAOu6I4F7NyIjdygSw&oe=6440B068", "title":"Razakar"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/322485953_1308830543230040_1578053185442811487_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEn73_zgYWan1SNbZoGUKHwg6TRD687E5aDpNEPrzsTlpIVwA5xnD6OqRK_bXAnw-R3I8uYv-gQR0ZnKi1RAemG&_nc_ohc=WbaohyEN8AIAX-krv7V&_nc_ht=scontent.fdac41-1.fna&oh=00_AfD57LrShRSISg00c9sqst9TbExZaH4xqotGnFtnxmS6UQ&oe=6440D2F9", "title":"Poltu Rani"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/336372081_1347798716063562_4806633801032209229_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFsFiNVzq3JaHz9ceVytpVxxieR8xwNKgDGJ5HzHA0qAKaC3e23ZgxFi0E21VLHVlMQ8HPdO6vgZPKr32DGQkNn&_nc_ohc=TzcBTRAe0HAAX-sq9VO&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDZOMjvDfIS-ljbDG9HxvFI-SYBIp9Y3a9-HxFy7T4KXQ&oe=644175D5", "title":"Hasan"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/128981019_3280070222101616_2550480751249210990_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH4YEwxam6XioTKIGnfVU1R2jFea746SXvaMV5rvjpJe81WKxqUwdRiTpRVHkLGUClMjZTRYPb_6vLYzTSCRnzN&_nc_ohc=BF5klos3iQMAX_waKtE&_nc_ht=scontent.fdac41-1.fna&oh=00_AfCR1YtPfelEwxO06tSo-5tj3A9om2EDosUxn3lWaGIy0w&oe=6462EF0C", "title":"Azim"},
    {"img":"https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/153502372_4244221135608033_7288577887670117892_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEoIgwiDLTHK4g47NKa8XBwckcF_xXHg81yRwX_FceDzXLDk0I_vPx1OdwQdqPdAManzEAvFNWJSJZ8N0115Ffm&_nc_ohc=CBpGrb3TrjYAX_sVdL5&_nc_ht=scontent.fdac41-1.fna&oh=00_AfB4KqFw3h-q20-ksX05ZYBAcYYGx9qdv0xrk7c9sWyPxA&oe=6462E3D1", "title":"Nahid"}
  ];

  mySnackBar(context, msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text("Dynamic List View Builder")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          childAspectRatio: 1,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
           onTap: (){mySnackBar(context,MyItems[index]['title']);},
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(border:Border.fromBorderSide(BorderSide(color: Colors.amber, width: 4))),
              //width: 250,
              //height: 250,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill),
            ),
          );
        },

      ),

    );
  }
}
