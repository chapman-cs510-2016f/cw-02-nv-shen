# CS510 CW 2

**Author(s):** _Nengyin (Helen) Zhu, Lance Clifner, Alexis Ford_

[![Build Status](https://travis-ci.org/chapman-cs510-2016f/cw-02-nv-shen.svg?branch=master)](https://travis-ci.org/chapman-cs510-2016f/cw-02-nv-shen)

**Due date:** 2016/09/13

## Specification

Complete the following exercises, saving your solutions in the indicated files. For Python files that include test functions, GitHub will automatically run your tests with ```nosetests``` on every commit, indicating any failures via the Travis framework in the build status image above.

1. Using vim, write a bash program ```helloworld.sh``` that simply prints "Hello world." (with a new line at the end) to the screen, and properly exits with the success code of 0. Make sure the top line of the program is the proper script line ```#!/bin/bash``` and make sure you change the permissions of the script to be executable. Verify that you can run the program as ```./helloworld.sh```. Commit this script to GitHub.
1. Using vim, write a bash program ```createfiles.sh``` that creates a directory ```tmpfiles``` in the working directory, then creates 100 files named ```file001.tmp``` to ```file100.tmp``` in that directory. After the files are created, append the line ```Temporary file XXX``` to each one, where "XXX" is the number in the filename. Make the script executable as in the previous exercise and verify that you can run the program as ```./createfiles.sh```. Commit the script to GitHub.
1. Using vim, write a bash program ```countup.sh``` that takes one command line argument, checks whether this argument n is a positive integer (exiting with code 1 if not), then prints the sequence of space-separated positive integers "1 2 3 4 ... n" ending with the chosen number. Make the script executable in the same way as the previous exercises and verify that it works. Commit the script to GitHub.
1. Create a python file ```test_bash.py``` that imports the module ```subprocess```. In a python function ```test_helloworld()```, use the function call ```subprocess.check_output("./helloworld.sh")``` to run the helloworld script and capture its output as a string. Use the ```assert``` command to compare this output to the expected output of the script. Commit the python file to GitHub and verify that Travis-ci properly runs this test.
1. In the same file ```test_bash.py``` create a second function ```test_countup()``` that uses a similar function call ```subprocess.check_output(["./countup.sh","5"])``` and ```assert``` to check the output of your bash script ```countup.sh```. Commit to GitHub and verify that Travis-ci properly runs both tests.

## Assessment

Analyze in this section what you found useful about this assignment in your own words. Include any lingering questions or comments that you may have.

**The classwork was a good way to get more experience with bash programs, provide an introduction to Python, and learn from more experienced team members.**

## Honor Pledge

I pledge that all the work in this repository is my own with only the following exceptions:

* Content of starter files supplied by the instructor;
* Code borrowed from another source, documented with correct attribution in the code and summarized here.

Signed,

**Nengyin (Helen) Zhu, Lance Clifner, Alexis Ford**
