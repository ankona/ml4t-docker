# ml4t-docker
This repository defines a docker image to run projects for CS 7646 (machine learning for trading).

# basic usage

## prerequisites
1. install docker
2. download the utility/grading modules (ML4T_2020Spring.zip) and project zips for your semester.
3. unzip the items from 2 in the directory containing the dockerfile.
4. edit the dockerfile as needed.
    - if you only want a single project on the machine, comment out ADD lines in the dockerfile for the projects you do not want.

## getting started
1. at your terminal, run `sh build.sh`
2. at your terminal, run `sh run.sh`
3. you will now be in the container. run `cd /ml4t/optimize_something` then `python3 grade_optimization.py`

## WARNING
The actual projects may not be shared and any images may not be published to dockerhub or any public repository without risking an honor code violation.