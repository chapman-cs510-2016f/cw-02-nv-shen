import subprocess

def test_helloworld():
	OUTPUT=subprocess.check_output("./helloworld.sh")
	assert 'Hello World.\n'== OUTPUT, 'The output of helloworld.sh is: '+OUTPUT+',but not "Hello World.\\n"'	

test_helloworld()
