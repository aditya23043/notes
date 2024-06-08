#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include <SFML/Graphics/Drawable.hpp>
#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <SFML/Window/VideoMode.hpp>
#include <SFML/Window/Window.hpp>
#include <iostream>

int main(int argc, char *argv[]) {

  // Window
  sf::Window window(sf::VideoMode(640, 480), "Some Random Title",
                    sf::Style::Default);
  sf::Event event;

  while (window.isOpen()) {           // Game Loop
    while (window.pollEvent(event)) { // Event polling
      switch (event.type) {
      case sf::Event::Closed:
        window.close();
        break;
      }
    }
  }

  // End

  return 0;
}
