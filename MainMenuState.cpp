#include "stdafx.h"
#include "MainMenuState.h"

//	Initializer Functions
void MainMenuState::initVariables()
{

}

void MainMenuState::initFonts()
{
	if (!this->font.loadFromFile("Fonts/tahoma.ttf")) {
		throw("ERROR::MAINMENUSTATE::COULD NOT LOAD FONT");
	}

}

void MainMenuState::initKeybinds()
{
	
	std::ifstream ifs("Config/mainmenustate_keybinds.ini");

	if (ifs.is_open()) {
		std::string key = "";
		std::string key2 = "";
		int key_value = 0;
		while (ifs >> key >> key2) {
			this->keybinds[key] = this->supportedKeys->at(key2);
		}
	}
	ifs.close();
	
}

void MainMenuState::initGui()
{
	const sf::VideoMode& vm = this->stateData->gfxSettings->resolution;

	this->background.setSize(
		sf::Vector2f(
			static_cast<float>(vm.width),
			static_cast<float>(vm.height)
		)
	);

	if (!this->backgroundTexture.loadFromFile("Resources/Images/Backgrounds/bg1.png")) {
		throw "ERROR::MAINMENUSTATES::FAILED_TO_LOAD_BACKGROUND_TEXTURE";
	}

	this->background.setTexture(&this->backgroundTexture);

	btnBackground.setSize(sf::Vector2f(
		static_cast<float>(vm.width / 5),
		static_cast<float>(vm.height)
	));

	this->btnBackground.setPosition(gui::p2pX(11.f, vm), 0.f);
	this->btnBackground.setFillColor(sf::Color(10, 10, 10, 220));

	this->buttons["GAME_STATE"] = new gui::Button(gui::p2pX(50.f, vm) - gui::p2pX(15.f / 2.f, vm), gui::p2pY(60.f, vm) - gui::p2pY(7.f / 2.f, vm), gui::p2pX(15.f, vm), gui::p2pY(7.f, vm),
		&this->font, "New Game", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
	this->buttons["SETTINGS_STATE"] = new gui::Button(gui::p2pX(50.f, vm) - gui::p2pX(15.f / 2.f, vm), gui::p2pY(67.f, vm) - gui::p2pY(7.f / 2.f, vm), gui::p2pX(15.f, vm), gui::p2pY(7.f, vm),
		&this->font, "Settings", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
	this->buttons["EDITOR_STATE"] = new gui::Button(gui::p2pX(50.f, vm) - gui::p2pX(15.f / 2.f, vm), gui::p2pY(74.f, vm) - gui::p2pY(7.f / 2.f, vm), gui::p2pX(15.f, vm), gui::p2pY(7.f, vm),
		&this->font, "Editor", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
	this->buttons["EXIT_STATE"] = new gui::Button(gui::p2pX(50.f, vm) - gui::p2pX(15.f / 2.f, vm), gui::p2pY(81.f, vm) - gui::p2pY(7.f / 2.f, vm), gui::p2pX(15.f, vm), gui::p2pY(7.f, vm),
		&this->font, "Quit", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
}

void MainMenuState::resetGui()
{
	for (auto it = this->buttons.begin(); it != buttons.end(); it++) {
		delete it->second;
	}
	this->buttons.clear();
	this->initGui();
}


MainMenuState::MainMenuState(StateData* state_data)
	: State(state_data)
{
	this->initVariables();
	this->initFonts();
	this->initKeybinds();
	this->initGui();
	this->resetGui();
}

MainMenuState::~MainMenuState()
{
	for (auto it = this->buttons.begin(); it != buttons.end(); it++) {
		delete it->second;
	}
}

void MainMenuState::updateInput(const float & dt)
{

}

void MainMenuState::updateButtons()
{
	/*Update all the buttons in the state and handles their functionality*/
	for (auto &it : this->buttons) {
		it.second->update(this->mousePosWindow);
	}

	//	New game
	if (this->buttons["GAME_STATE"]->isPressed()) {
		this->states->push(new GameState(this->stateData));
	}

	//	Settings
	if (this->buttons["SETTINGS_STATE"]->isPressed()) {
		this->states->push(new SettingsState(this->stateData));
	}

	//	Editor
	if (this->buttons["EDITOR_STATE"]->isPressed()) {
		this->states->push(new EditorState(this->stateData));
	}

	//	Quit the game
	if (this->buttons["EXIT_STATE"]->isPressed()) {
		this->endState();
	}
}

void MainMenuState::update(const float& dt)
{
	this->updateMousePositions();
	this->updateInput(dt);
	this->updateButtons();
}

void MainMenuState::renderButtons(sf::RenderTarget & target)
{
	for (auto &it : this->buttons) {
		it.second->render(target);
	}
}

void MainMenuState::render(sf::RenderTarget* target)
{
	if (!target) {
		target = this->window;
	}
	target->draw(this->background);
	target->draw(this->btnBackground);
	this->renderButtons(*target);

	//sf::Text mouseText;
	//mouseText.setPosition(this->mousePosView);
	//mouseText.setFont(this->font);
	//mouseText.setCharacterSize(12);
	//std::stringstream ss;
	//ss << this->mousePosView.x << " " << this->mousePosView.y;
	//mouseText.setString(ss.str());
	//target->draw(mouseText);
}
