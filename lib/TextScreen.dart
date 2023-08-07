import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  final int curr_index=1;

  Txt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(

                  children: const [
                    Text("أذكار الصلاة",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                    Text("أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله",style: TextStyle(fontSize: 35.0),textAlign: TextAlign.end,),
                    SizedBox(height: 20.0,),
                    Text(" اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",style: TextStyle(fontSize: 35.0),textAlign: TextAlign.end,),
                    SizedBox(height: 20.0,),
                    Text("بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
                    Text("اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]",style: TextStyle(fontSize: 35.0),textAlign: TextAlign.end,),
                    Text("سُـبْحانَ اللهِ ٣٣ مرة ، والحَمْـدُ لله ٣٣ مرة ، واللهُ أكْـبَر ٣٣ مرة",style: TextStyle(fontSize: 35.0),textAlign: TextAlign.end,),
                    SizedBox(height: 20.0,),
                    Text("لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون",style: TextStyle(fontSize: 35.0),textAlign: TextAlign.end,),
                    SizedBox(height: 20.0,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
