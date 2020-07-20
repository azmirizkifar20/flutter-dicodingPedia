class LearningPath {
  String nama, icon, platform;

  LearningPath({this.nama, this.icon, this.platform});
}

List<LearningPath> listLearningPath = [
  LearningPath(
      nama: 'Android Developer',
      icon: 'images/android.png',
      platform: 'Android'),
  LearningPath(nama: 'iOS Developer', icon: 'images/ios.png', platform: 'iOS'),
  LearningPath(nama: 'Web Developer', icon: 'images/web.png', platform: 'Web'),
  LearningPath(
      nama: 'AR/VR Developer', icon: 'images/ar.png', platform: 'AR/VR'),
  LearningPath(
      nama: 'Multi-Platform App Developer',
      icon: 'images/flutter.png',
      platform: 'Multi-Platform'),
];
