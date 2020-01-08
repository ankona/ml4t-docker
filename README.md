# ml4t-docker
This repository defines a docker image to run projects for CS 7646 (machine learning for trading).

# basic usage

## prerequisites
1. install docker
2. download the utility/grading modules (ML4T_2020Spring.zip) and project zips for your semester.
3. unzip the items from 2.
    - first unzip the utility archive
    - next, unzip projects so they are in the ML4T_2020Spring directory
4. modify run.sh to have the proper local path to your ML4T_2020Spring from (3)
    - replace /path/to/ML4T_2020Spring with your local path

## getting started
1. at your terminal, run `sh build.sh`
2. at your terminal, run `sh run.sh`
3. you will now be in the container in the /ml4t directory. 
4. test your image.
    - run `cd optimize_something` then `python grade_optimization.py`

## WARNING
The actual projects may not be shared and any images may not be published to dockerhub or any public repository without risking an honor code violation.

## todo:
1. document how to connect using visual studio code and debug 'remotely.'
