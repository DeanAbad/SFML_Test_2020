all: compile link

compile: 
	g++ -c main.cpp -I"src\include" -DSFML_STATIC

link:
	g++ main.o -o SFML_Test_2020 -L"src\lib" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -mwindows -lsfml-main

clean:
	rm -f main *.o