import 'package:elite/screens/courses_screen/state.dart';
import 'package:get/get.dart';

class CoursesScreenController extends GetxController {
  CoursesScreenController();

  final title = "Elite Training & Consultancy";
  final state = CoursesScreenState();

  var dropdownValue;

  // menu bar strings ///////////////

  final double menuBarFontSize = 16.0;
  final double menuItemWidth = 100.0;
  final double menuItemCourseWidth = 130.0;
  final double menuItemConsultancyWidth = 160.0;

  static final courseMenuList = [
    'HSE Courses',
    'IT Courses',
    'Managment Courses',
    'Highfield Courses',
  ];
  static final consultancyMenuList = [
    'Managment Consultancy',
    'Recruiement Consultancy',
    'Buisiness Setup Consultancy',
  ];

  final String homeMenu = "Home";
  final aboutMenu = "About";
  final contactMenu = "Contact";

  // Slider Items. ///////////////////

  final List<String> webSliderImageList = [
    'http://www.igf-international.com/staticfiles/desktopslider1.png',
    'http://www.igf-international.com/staticfiles/desktopslider2.png',
    'http://www.igf-international.com/staticfiles/desktopslider3.png',
    'http://www.igf-international.com/staticfiles/desktopslider4.png',
  ];

  final logoURL = "http://www.eliteqatar.qa/staticfiles/logo.png";

  final basicTrainingList = [
    'https://eliteqatar.qa/staticfiles/basictrainings/holewatcher.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/cossh.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/scaffoldingsafety.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/handandpowertoolssafety.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/excavationsafety.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/riskassesment.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/workpermit.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/defensivedriving.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/firstaid.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/firewarden.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/confinedspace.png',
    'https://eliteqatar.qa/staticfiles/basictrainings/workatheight.png',
  ];

  final habcTrainingsImagesList = [
    'https://eliteqatar.qa/staticfiles/habcpics/Food1.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food2.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food3.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food4.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food5.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food6.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food7.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food8.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food9.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food10.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food11.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food12.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food13.png',
    'https://eliteqatar.qa/staticfiles/habcpics/Food14.png',
  ];

  final basicTrainingTitleList = [
    'Hole Watcher Training',
    'COSSH',
    'Scaffolding Safety Training',
    'Hand Power Tools Safety',
    'Exacavator Safety',
    'Risk Assesment',
    'Work Permit',
    'Defensive Driving',
    'First Aid',
    'Fire Warden',
    'Confined Space',
    'Work at Height',
  ];

  final habcCourses = [
    'HABC Level 3 Award in Food Safety in (Catering, Manufacturing or Retail)',
    'Hygiene Sense at Sea',
    'HABC L2 Food Safety (Catering)',
    'HABC Level 3 International Award in Delivering Training (IADT)',
    'HABC L3 Food Safety Qualification (Manufecturing)',
    'HABC L4 Food Safety Qualifications (Menufecturing or Retail)',
    'HABC L2 Award in Healthy Food and Special Diets RQF',
    'HABC Level 3 International Award in Nutrition and Health',
    'Highfield Level 2 Award in Food Allergen Awareness and Control in Catering (RQF)',
    'HABC L4 Award in Health and Safety in the Workplace',
    'HABC L3 International Award in First Aid at Work and The Safe Use of an AED',
    'HABC Level 2 Award In Understanding Stewarding at Spectator',
    'HABC Level 2 pool lifeguarding',
    'HABC Level 3 Beach Lifeguarding qualification',
  ];

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("Home Page Controller ");
  }
}
