#include "stdafx.h"
#include "SettingsState.h"



//	Initializer Functions
void SettingsState::initVariables()
{
	this->modes = sf::VideoMode::getFullscreenModes();
}

void SettingsState::initFonts()
{
	if (!this->font.loadFromFile("Fonts/Inconsolata-Bold.ttf")) {
		throw("ERROR::MAINMENUSTATE::COULD NOT LOAD FONT");
	}
}

void SettingsState::initKeybinds()
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

void SettingsState::initGui()
{
	const sf::VideoMode& vm = this->stateData->gfxSettings->resolution;

	//	Background
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

	//	Buttons
	this->buttons["BACK"] = new gui::Button(
		gui::p2pX(90.f, vm) - gui::p2pX(15.f / 2.f, vm),
		gui::p2pY(20.f, vm) - gui::p2pY(7.f / 2.f, vm),
		gui::p2pX(15.f, vm),
		gui::p2pY(7.f, vm),
		&this->font, "Back", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
	this->buttons["APPLY"] = new gui::Button(
		gui::p2pX(90.f, vm) - gui::p2pX(15.f / 2.f, vm),
		gui::p2pY(80.f, vm) - gui::p2pY(7.f / 2.f, vm),
		gui::p2pX(15.f, vm),
		gui::p2pY(7.f, vm),
		&this->font, "Apply", 2 * gui::calcCharSize(vm),
		sf::Color(70, 70, 70, 200),
		sf::Color(250, 250, 250, 200),
		sf::Color(20, 20, 20, 200),
		sf::Color(112, 146, 190, 200),
		sf::Color(112, 146, 190, 255),
		sf::Color(112, 146, 190, 200)
	);
	std::vector<std::string> modes_str;
	for (auto& i : this->modes) {
		modes_str.push_back(std::to_string(i.width) + " x " + std::to_string(i.height));
	}
	this->dropDownLists["RESOLUTION"] = new gui::DropDownList(
		gui::p2pX(25.f, vm),
		gui::p2pY(15.f, vm),
		gui::p2pX(15.f, vm),
		gui::p2pY(3.5f, vm),
		font, 
		modes_str.data(), modes_str.size()
	);

	//	Text init
	this->optionsText.setFont(font);
	this->optionsText.setPosition(sf::Vector2f(gui::p2pX(7.f, vm), gui::p2pY(15.f, vm)));
	this->optionsText.setCharacterSize(gui::calcCharSize(vm, 75.f));
	this->optionsText.setFillColor(sf::Color(255, 255, 255, 200));

	this->optionsText.setString(
		"Resolution \nFullscreen \nVsync \nAntialiasing \n"
	);
}

void SettingsState::resetGui()
{
	for (auto it = buttons.begin(); it != buttons.end(); it++) {
		delete it->second;
	}
	this->buttons.clear();

	for (auto it = buttons.begin(); it != buttons.end(); it++) {
		delete it->second;
	}
	this->dropDownLists.clear();
	this->initGui();
}

//		CONSTRUCTOR / DESTRUCTOR

SettingsState::SettingsState(StateData* state_data)
	:	State(state_data)
{
	this->initVariables();
	this->initFonts();
	this->initKeybinds();
	this->initGui();
}


SettingsState::~SettingsState()
{
	for (auto it = this->buttons.begin(); it != buttons.end(); ++it) {
		delete it->second;
	}
	for (auto it = this->dropDownLists.begin(); it != dropDownLists.end(); ++it) {
		delete it->second;
	}
}





void SettingsState::updateInput(const float & dt)
{

}

void SettingsState::updateGui(const float& dt)
{
	/*Update all the GUI elements in the state and handles their functionality*/
	//	Buttons
	for (auto &it : this->buttons) {
		it.second->update(this->mousePosWindow);
	}

	//	Button Functionality
	//	Quit the game
	if (this->buttons["BACK"]->isPressed()) {
		this->endState();
	}

	//	Apply selected settings
	if (this->buttons["APPLY"]->isPressed()) {
		this->stateData->gfxSettings->resolution = this->modes[this->dropDownLists["RESOLUTION"]->getActiveElementId()];
		this->window->create(this->stateData->gfxSettings->resolution, this->stateData->gfxSettings->title, sf::Style::Default);
		this->resetGui();
	}

	//	Drop Down Lists
	for (auto &it : this->dropDownLists) {
		it.second->update(this->mousePosWindow, dt);
	}

	//	Dropdown Lists functionality

}

void SettingsState::update(const float& dt)
{
	this->updateMousePositions();
	this->updateInput(dt);
	this->updateGui(dt);

}

void SettingsState::renderGui(sf::RenderTarget & target)
{
	for (auto &it : this->buttons) {
		it.second->render(target);
	}

	for (auto &it : this->dropDownLists) {
		it.second->render(target);
	}
}

void SettingsState::render(sf::RenderTarget* target)
{
	if (!target) {
		target = this->window;
	}
	target->draw(this->background);
	this->renderGui(*target);

	target->draw(this->optionsText);

	//sf::Text mouseText;
	//mouseText.setPosition(this->mousePosView);
	//mouseText.setFont(this->font);
	//mouseText.setCharacterSize(12);
	//std::stringstream ss;
	//ss << this->mousePosView.x << " " << this->mousePosView.y;
	//mouseText.setString(ss.str());
	//target->draw(mouseText);
}



