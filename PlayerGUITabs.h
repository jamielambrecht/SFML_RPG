#pragma once

#include "Player.h"
#include "Gui.h"
#include "CharacterTab.h"

class PlayerGUITabs
{
private:

	CharacterTab characterTab;

	//	Core
	sf::VideoMode& vm;
	sf::Font& font;
	Player& player;
	sf::Clock keyTimer;
	float keyTimeMax;

	//	Tabs

	//	Character Tab

	//	Private functions
	void initKeyTime();



public:
	PlayerGUITabs(sf::VideoMode& vm, sf::Font& font, Player& player);
	virtual ~PlayerGUITabs();

	const bool getKeyTime();

	void update();
	void render(sf::RenderTarget& target);
};

