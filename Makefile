all: compile link
compile:
	g++ -I source/include -c headers/class.hpp
	g++ -I source/include -c src/class.cpp
	g++ -I source/include -c src/main.cpp
link:
	g++ main.o -o main src/class.cpp -L source/lib -l sfml-graphics -l sfml-window -l sfml-system -l sfml-audio -l sfml-network