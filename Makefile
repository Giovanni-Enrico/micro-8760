MYDIR := .
java-projects := $(shell ls $(MYDIR) | grep fj33 | awk '!/ui/')
all-projects := $(shell ls $(MYDIR) | grep fj33)


build: 
	@for file in $(java-projects); do cd $${file} && mvn install && cd .. ; done

clean:
	@for file in $(java-projects); do cd $${file} && mvn clean && cd .. ; done


ng-build: ng-clean
	cd fj33-eats-ui && npm install && npm run build

ng-clean:
	cd fj33-eats-ui && rm -rf dist

docker-build:
	@for file in $(all-projects); do cd $${file} && docker build -t giovannienrico/$${PWD##*/} . && cd .. ; done

