import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/api/getalljobcards.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard_widgets.dart';
import '../../services/prefs.dart';

class SupervisorDashboard extends StatefulWidget {
  const SupervisorDashboard({Key? key}) : super(key: key);

  @override
  State<SupervisorDashboard> createState() => _SupervisorDashboardState();
}

class _SupervisorDashboardState extends State<SupervisorDashboard> {
  final jobsApi = GetAllJobCards();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getJobCards(0, 10);
    });
  }

  _getJobCards(pageOffset, pageCount) async {
    final prefs = await SardePreferences.getInstance();
    var accessToken = await prefs.token;
    var jobCardData = await jobsApi.getJobs(
        accessToken: accessToken, pageOffset: pageOffset, pageCount: pageCount);
    for (var element in jobCardData!.result!) {
      Widget jobCard = jobContainer(
        element.id ?? "",
        element.jobTitle ?? "",
      );
      jobCardDataList.add(jobCard);
    }
    setState(() {});
  }

  final List<Widget> jobCardDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          nameButton(),
          nameButton1(),
          SizedBox(
            height: 16.h,
          ),
          const SupervisorSlider(),
          Expanded(
            child: ListView.builder(
                reverse: true,
                shrinkWrap: false,
                itemCount: jobCardDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobCardDataList[index];
                }),
          ),
          Bottom_data(),
        ],
      ),
    );
  }
}
