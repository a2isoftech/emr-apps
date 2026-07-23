/// Blue Book Universal Shapes Tolerance Calculator using the values from
/// https://www.steelforlifebluebook.co.uk/tolerances/ec3-ukna/universal-shapes/
class BlueBookUniversalShapesToleranceCalculator {
  (double minus, double plus) heightTolerance(double h) {
    return (h <= 180)
        ? (-2.0, 3.0)
        : (h <= 400)
            ? (-2.0, 4.0)
            : (h <= 700)
                ? (-3.0, 5.0)
                : (-5.0, 5.0);
  }

  (double minus, double plus) flangeWidthTolerance(double b) {
    return (b <= 110)
        ? (-1.0, 4.0)
        : (b <= 210)
            ? (-2.0, 4.0)
            : (b <= 325)
                ? (-4.0, 4.0)
                : (-5.0, 6.0);
  }

  (double minus, double plus) webThicknessTolerance(double s) {
    return (s < 7)
        ? (-0.7, 0.7)
        : (s < 10)
            ? (-1.0, 1.0)
            : (s < 20)
                ? (-1.5, 1.5)
                : (s < 40)
                    ? (-2.0, 2.0)
                    : (s < 60)
                        ? (-2.5, 2.5)
                        : (-3.0, 3.0);
  }

  (double minus, double plus) flangeThicknessTolerance(double t) {
    return (t < 6.5)
        ? (-0.5, 1.5)
        : (t < 10)
            ? (-1.0, 2.0)
            : (t < 20)
                ? (-1.5, 2.5)
                : (t < 30)
                    ? (-2.0, 2.5)
                    : (t < 40)
                        ? (-2.5, 2.5)
                        : (t < 60)
                            ? (-3.0, 3.0)
                            : (-4.0, 4.0);
  }
}
