#pragma once

#include "Gui.h"
#include "GameState.h"
#include "EditorState.h"
#include "SettingsState.h"
#include "GraphicsSettings.h"

class MainMenuState :
	public State
{
private:
	//	Variables
	
	sf::Texture backgroundTexture;
	sf::RectangleShape background;
	sf::Font font;

	sf::RectangleShape btnBackground;
	std::map<std::string, gui::Button*> buttons;

	//	Functions
	void initVariables();
	void initFonts();
	void initKeybinds();
	void initGui();
	void resetGui();
public:
	MainMenuState(StateData* state_data);
	virtual ~MainMenuState();

	//	Functions
	void updateInput(const float& dt);
	void updateButtons();
	void update(const float& dt);

	void renderButtons(sf::RenderTarget& target);
	void render(sf::RenderTarget* target = NULL);
};

