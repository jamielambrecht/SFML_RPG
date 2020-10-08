#pragma once
#include "EditorMode.h"

class EditorMode;
class State;
class StateData;
class TileMap;
class Tile;

class DefaultEditorMode :
	public EditorMode
{
private:
	sf::Text cursorText;
	sf::RectangleShape sidebar;
	sf::RectangleShape selectorRect;
	gui::TextureSelector* textureSelector;
	sf::IntRect textureRect;
	bool collision;
	short type;

	int layer;
	bool tileAddLock;

	//	Initializer functions
	void initVariables();
	void initGui();
public:
	//	Constructors / Destructors
	DefaultEditorMode(StateData* state_data, TileMap* tile_map, EditorStateData* editor_state_data);
	virtual ~DefaultEditorMode();

	//	Functions
	void updateInput(const float& dt);
	void updateGui(const float& dt);
	void update(const float& dt);

	void renderGui(sf::RenderTarget& target);
	void render(sf::RenderTarget& target);
};

