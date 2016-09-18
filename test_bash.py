import subprocess

def test_helloworld():
	OUTPUT=subprocess.check_output("./helloworld.sh")
	assert 'Hello World.\n'== OUTPUT, 'The output of helloworld.sh is: '+OUTPUT+',but not "Hello World.\\n"'	

def test_countup():
	OUTPUT=subprocess.check_output(["./countup.sh","5"]) 
	assert '1 2 3 4 5\n' == OUTPUT, 'The output of countup.sh is: '+OUTPUT+',but not "1 2 3 4 5\\n"'


test_helloworld()
test_countup()

### INSTRUCTOR COMMENTS
# Remember to include docstrings for both your module and your functions. 
# This is a good habit to get into, and will help users of your code use
# the python help system to figure out what your code does and why it is there.
#
# Do not execute code at the end of your test script (the last two lines).
# Instead, the command "nosetests" when run from a bash shell will look for
# files starting with "test" and run all functions starting with "test" 
# automatically. Also, if you need to run executable code in a script in the
# future, be sure to put it inside an if __name__ == "__main__" block.
