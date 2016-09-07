import subprocess

def test_helloworld():
	OUTPUT=subprocess.check_output("./helloworld.sh")
	assert 'Hello World.\n'== OUTPUT, 'The output of helloworld.sh is: '+OUTPUT+',but not "Hello World.\\n"'	

def test_countup():
	OUTPUT=subprocess.check_output(["./countup.sh","5"]) 
	assert '1 2 3 4 5\n' == OUTPUT, 'The output of countup.sh is: '+OUTPUT+',but not "1 2 3 4 5\\n"'


test_helloworld()
test_countup()
