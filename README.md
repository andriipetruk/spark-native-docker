The repository this points to k8s4spark/spark.

# Steps to build the docker image

## 1. Build your spark distribution (typically from sources) with kubernetes support.

./dev/make-distribution.sh --tgz -Pkubernetes -Phadoop-2.4 -Darguments="-DskipTests" -Dhadoop.version=2.4.0

Copy the distribution as `spark-distro.tgz` into your local directory.

## 2. `make` and then `make push` if you have write access to the k8s4spark repo.

## 3. Use the newly pushed image in launching a new Spark Job with k8s support using spark-submit.


