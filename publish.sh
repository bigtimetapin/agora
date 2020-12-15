#!/usr/bin/env bash

aws s3 sync assets/images/ s3://dev.thetapin.net/images/ --profile tap-in
aws s3 sync assets/css/ s3://dev.thetapin.net/css/ --profile tap-in
aws s3 cp assets/index.html s3://dev.thetapin.net --profile tap-in
aws s3 cp assets/elm.min.js s3://dev.thetapin.net --profile tap-in