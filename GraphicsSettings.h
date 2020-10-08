#pragma once

class GraphicsSettings {
public:
	GraphicsSettings(); 	//	Variables
	std::string title = "DEFAULT";
	sf::VideoMode resolution;
	bool fullscreen;
	bool verticalSync;
	unsigned framerateLimit;
	sf::ContextSettings contextSettings;
	std::vector<sf::VideoMode> videoModes;

	//	Functions
	void saveToFile(const std::string path);
	void loadFromFile(const std::string path);

};