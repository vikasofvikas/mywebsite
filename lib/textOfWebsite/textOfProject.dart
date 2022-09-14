

class Category {

  final String projectTitle;
  final String gifLink;
  final String projectDescription;
 // final Widget widget;

  Category({
    required this.projectTitle,
    required this.gifLink,
    required this.projectDescription,
  //  required this.widget
  });
}

List<Category> categories = [

Category(
    projectTitle: "Plant disease identification",
//widget: DetailsScreen(),
    gifLink: "assets/GIF/plant.gif",
    projectDescription: "- Use of bloc for state management.\n- Local data storage using shared preferences.\n- Intuitive UI.\n- Firebase connectivity to display articles.\n- Machine learning using tensorflow lite."
),

  Category(
      projectTitle: "Quiz App",
      gifLink: "assets/GIF/quiz.gif",
      projectDescription: "- Dark mode for readers.\n- Local data storage for implementing 'change fontsize' feature \n- Firebase connectivity to display articles. "
  ),


  Category(
      projectTitle: "Object detection",
      gifLink: "assets/GIF/object.gif",
      projectDescription: "- Tensorflow lite models for object detection \n- Unique UI for reducing number of actions performed by the user to select options\n- User can learn about machine learning models used in detection."
  ),


  Category(
      projectTitle: "Focus time keeper",
      gifLink: "assets/GIF/foucs.gif",
      projectDescription: "- Similar to forest app in the playstore.\n- Unlike the popular alternative user can change the plant for free\n- Minimalistic UI that is helping the app to fulfill its purpose"
  ),

  Category(
      projectTitle: "fouxa.com",
      gifLink: "assets/GIF/fouxa.gif",
      projectDescription: "- Students can learn about a topic from the best resources available on the internet.\n- Curated curriculum for students to follow to grasp subject.",
  ),

  Category(
      projectTitle: "Rise philosophy",
      gifLink: "assets/GIF/rise.gif",
      projectDescription: "- Dark mode for making night reading comfortable.\n- User can change font size.\n- User can see her/his course completion process. "
  ),




];





