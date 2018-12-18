import java.util.ArrayList;

import moa.clusterers.AbstractClusterer;
import com.yahoo.labs.samoa.instances.DenseInstance;

class StreamMOA {
  public static void update(AbstractClusterer clusterer, double[][] points) {
    DenseInstance p = null;

    for(int i=1; i<points.length; i++) {
        p = new DenseInstance(1.0, points[i]);
        clusterer.trainOnInstanceImpl(p);
    }
  }
}
