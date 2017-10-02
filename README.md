# Observe what an HTML server sees

## Installation instructions

1. Clone this repo into your C9 instance
2. cd into the the repo
3. run ./install.sh to prepare your C9 workspace with the necessary programs
4. run ./run-netcat-and-html-form.sh to start this simple server

## How do I use it?

Upon launch, the script will print a banner which counts the number of requests
it has served. It will then repeatedly serve the contents of http.headers and
index.html to any browser which connects with it.

You may edit either of http.headers and index.html as the program runs to observe the
effects of

	* Changing the type of HTTP method used
	* Sending different values to the server
	* Changing the types of input widgets used

