LOCAL_IMAGE=spark:snapshot
SPARK_IMAGE=k8s4spark/spark:snapshot
SPARK_DISTRO=spark-distro.tgz

.PHONY: build clean push create destroy

build:
	docker build -t $(LOCAL_IMAGE) .

clean:
	docker rmi $(LOCAL_IMAGE)

push: build
	docker tag $(LOCAL_IMAGE) $(SPARK_IMAGE)
	docker push $(SPARK_IMAGE)
