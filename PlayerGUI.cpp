#include "stdafx.h"
#include "PlayerGUI.h"


void PlayerGUI::initFont()
{
	this->font.loadFromFile("Fonts/Inconsolata-Regular.ttf");
}

void PlayerGUI::initLevelElement()
{
	float width = gui::p2pX(8.3f, this->vm);
	float height = gui::p2pY(3.7f, this->vm);
	float x = gui::p2pX(2.f, this->vm);
	float y = gui::p2pY(14.8f, this->vm);

	this->levelBarBack.setSize(sf::Vector2f(width, height));
	this->levelBarBack.setFillColor(sf::Color(50, 50, 50, 200));
	this->levelBarBack.setPosition(x, y);

	this->levelBarText.setFont(this->font);
	this->levelBarText.setCharacterSize(gui::calcCharSize(this->vm, 150.f));
	this->levelBarText.setPosition(this->levelBarBack.getPosition().x + 10.f, this->levelBarBack.getPosition().y + 5.f);
}

void PlayerGUI::initEXPBar()
{
	this->expBar = new gui::ProgressBar(
		2.f, 9.3f, 8.3f, 3.7f,
		this->player->getAttributeComponent()->expNext,
		sf::Color::Blue, 150,
		this->vm, &this->font);
}

void PlayerGUI::initHPBar()
{
	this->hpBar = new gui::ProgressBar(
		2.f, 3.7f, 8.3f, 3.7f,
		this->player->getAttributeComponent()->hpMax, 
		sf::Color::Green, 150,
		this->vm, &this->font);
}

void PlayerGUI::initPlayerTabs(sf::VideoMode& vm, sf::Font& font, Player& player)
{
	this->playerTabs = new PlayerGUITabs(vm, font, player);
}



PlayerGUI::PlayerGUI(Player* player, sf::VideoMode& vm)
	:	vm(vm)
{
	this->player = player;

	this->initFont();
	this->initLevelElement();
	this->initEXPBar();
	this->initHPBar();
	this->initPlayerTabs(vm, font, *player);
}


PlayerGUI::~PlayerGUI()
{
	delete this->hpBar;
	delete this->expBar;
	delete this->playerTabs;
}

//	Functions

void PlayerGUI::updateLevelBar()
{
	this->levelBarString = "LVL: " + std::to_string(this->player->getAttributeComponent()->level);
	this->levelBarText.setString(this->levelBarString);
}

void PlayerGUI::updateEXPBar()
{
	this->expBar->update(this->player->getAttributeComponent()->exp);
}

void PlayerGUI::updateHPBar()
{
	this->hpBar->update(this->player->getAttributeComponent()->hp);
}

void PlayerGUI::updatePlayerTabs()
{
	this->playerTabs->update();
}


void PlayerGUI::update(const float & dt)
{
	this->updateLevelBar();
	this->updateEXPBar();
	this->updateHPBar();
	this->updatePlayerTabs();
}

void PlayerGUI::renderLevelBar(sf::RenderTarget & target)
{
	target.draw(this->levelBarBack);
	target.draw(this->levelBarText);
}

void PlayerGUI::renderEXPBar(sf::RenderTarget & target)
{
	this->expBar->render(target);
}

void PlayerGUI::renderHPBar(sf::RenderTarget & target)
{
	this->hpBar->render(target);
}

void PlayerGUI::renderPlayerTabs(sf::RenderTarget& target)
{
	this->playerTabs->render(target);
}

void PlayerGUI::render(sf::RenderTarget & target)
{
	this->renderLevelBar(target);
	this->renderEXPBar(target);
	this->renderHPBar(target);
	this->renderPlayerTabs(target);
}
