class ProblemData {
  int problemNumber;
  String sysImageURL;
  int nMols;
  double xLen;
  double yLen;
  int optimalProc;
  int optimalXcount;
  int optimalYcount;
  String speedupImageURL;
  String carbonImageURL;
  String energyImageURL;

  ProblemData(
      {this.problemNumber = 0,
      this.sysImageURL = 'none',
      this.nMols = 0,
      this.xLen = 0.0,
      this.yLen = 0.0,
      this.optimalProc = 0,
      this.optimalXcount = 0,
      this.optimalYcount = 0,
      this.speedupImageURL = 'none',
      this.carbonImageURL = 'none',
      this.energyImageURL = 'none'});
}

List<ProblemData> dataList = [
  ProblemData(
      problemNumber: 0,
      sysImageURL: 'https://raw.githubusercontent.com/md-challenge/md-challenge.github.io/master/simulation_data/case_1/system.png',
      nMols: 500, // Number of Molecules
      xLen: 50.0, // X-Length of the system
      yLen: 50.0, // Y-Length of the system
      optimalProc: 4,
      optimalXcount: 2,
      optimalYcount: 2,
      speedupImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/blur-8032687_640.webp',
      carbonImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/flower-8041698_640.jpg',
      energyImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/flower-8068875_640.webp'),
  ProblemData(
      problemNumber: 1,
      sysImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/forest-4824759_640.webp',
      nMols: 600, // Number of Molecules
      xLen: 60.0, // X-Length of the system
      yLen: 60.0, // Y-Length of the system
      optimalProc: 8,
      optimalXcount: 4,
      optimalYcount: 2,
      speedupImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/man-8060589_1280.webp',
      carbonImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/men-8016782_640.jpg',
      energyImageURL:
          'https://raw.githubusercontent.com/vishnu-prasad-kurupath/web_test/main/icons/water-8053999_640.webp'),
];
