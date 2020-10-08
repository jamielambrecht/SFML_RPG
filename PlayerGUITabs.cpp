#include "stdafx.h"
#include "PlayerGUITabs.h"

void PlayerGUITabs::initKeyTime()
{
	this->keyTimeMax = 0.5f;
	this->keyTimer.restart();
}

PlayerGUITabs::PlayerGUITabs(sf::VideoMode& vm, sf::Font& font, Player& player)
	:	vm(vm), font(font), player(player),
	characterTab(vm, font, player)
{
	this->initKeyTime();
}

PlayerGUITabs::~PlayerGUITabs()
{
}

const bool PlayerGUITabs::getKeyTime()
{
	if (this->keyTimer.getElapsedTime().asSeconds() >= this->keyTimeMax) {
		this->keyTimer.restart();
		return true;
	}
	else {
		return false;
	}
}

void PlayerGUITabs::update()
{
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::C) && this->getKeyTime()) {
		if (this->characterTab.getHidden()) {
			this->characterTab.show();
		}
		else {
			this->characterTab.hide();
		}

	}
}

void PlayerGUITabs::render(sf::RenderTarget & target)
{
	this->characterTab.render(target);
}
