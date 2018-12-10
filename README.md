Flowable (V6)
========

[Maven Central:  
    ![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.flowable/flowable-engine/badge.svg)](https://maven-badges.herokuapp.com/maven-central/org.flowable/flowable-engine)

[Docker Images:  
    ![Docker Hub](https://images.microbadger.com/badges/version/flowable/flowable-rest.svg)](https://hub.docker.com/u/flowable/)

[Travis CI:  
	![build status badge](https://travis-ci.org/flowable/flowable-engine.svg?branch=master)](https://travis-ci.org/flowable/flowable-engine)

[License:  
	![license](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/flowable/flowable-engine/blob/master/LICENSE)


Homepage: http://www.flowable.org/

## flowable / flowəb(ə)l /
* a compact and highly efficient workflow and Business Process Management (BPM) platform for developers, system admins and business users.
* a lightning fast, tried and tested BPMN 2 process engine written in Java.  It is Apache 2.0 licensed open source, with a committed community.
* can run embedded in a Java application, or as a service on a server, a cluster, and in the cloud.  It integrates perfectly with Spring.  With a rich Java and REST API, it is the ideal engine for orchestrating human or system activities.

## Introduction

### License

Flowable is distributed under the Apache V2 license (http://www.apache.org/licenses/LICENSE-2.0.html).

### Download

The Flowable downloads can be found on http://www.flowable.org/downloads.html.

### Sources

The distribution contains most of the sources as jar files. The source code of Flowable can be found on https://github.com/flowable/flowable-engine.

### JDK 8+

Flowable runs on a JDK higher than or equal to version 8. Go to http://www.oracle.com/technetwork/java/javase/downloads/index.html and click on button "Download JDK".  There are installation instructions on that page as well. To verify that your installation was successful, run "java -version" on the command line.  That should print the installed version of your JDK.

### Contributing

Contributing to Flowable: https://github.com/flowable/flowable-engine/wiki.

### Reporting problems

Every self-respecting developer should have read this link on how to ask smart questions: http://www.catb.org/~esr/faqs/smart-questions.html.

After you've done that you can post questions and comments on http://forum.flowable.org and create issues in https://github.com/flowable/flowable-engine/issues.

### QA server

There's a Jenkins server running the Flowable unit tests on http://qa.flowable.org.


Propersoft Branch
=================

This branch provides two customized JAR based on Flowable, they are:

1. com.proper.enterprise.platform:flowable-ui-common:6.4.0-SNAPSHOT
1. com.proper.enterprise.platform:flowable-web-designer:6.4.0-SNAPSHOT

Use `Gradle` build system to pack these JAR files, and could upload new version using next commands:

    # get a clean package
    $ ./gradlew clean
    # and then build and upload jar files
    $ ./gradlew upload


Customize flowable-ui-common
----------------------------

We don't want to use Flowable with Spring Security and develop it with mysql, so exclude these two configurations in `flowable-ui-common` Jar file.


Pack web designer in jar
------------------------

Pack Flowable front-end static resources from `flowable-ui-modeler-app` module into `flowable-web-designer-xxx.jar` as `Flowable Web Designer`.

Static resources are packed under `META-INF/resources/` in the jar, which could be used as a dependency of the main web app.

### How to pack

    # get a clean package
    $ ./gradlew clean pack

and you could find the `flowable-web-designer-xxx.jar` at `modules/flowable-ui-modeler/flowable-ui-modeler-app/build/libs`


Current version
---------------

Now this branch has merged [flowable-6.4.0](https://github.com/flowable/flowable-engine/tree/flowable-6.4.0) tag, and you can find diff [here](https://github.com/flowable/flowable-engine/compare/flowable-6.4.0...propersoft-cn:proper-6.4.0)
