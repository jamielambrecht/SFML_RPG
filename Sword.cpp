#include "stdafx.h"
#include "Sword.h"


Sword::Sword(unsigned level, unsigned damage_min, unsigned damage_max, unsigned range, unsigned value , std::string texture_file)
	:	MeleeWeapon(level, damage_min, damage_max, range, value, texture_file)
{

	this->weapon_sprite.setOrigin(
		this->weapon_sprite.getGlobalBounds().width / 2.f,
		this->weapon_sprite.getGlobalBounds().height
	);
}


Sword::~Sword()
{
}

Sword * Sword::clone()
{
	return new Sword(*this);
}

void Sword::update(sf::Vector2f & mouse_pos_view, const sf::Vector2f center)
{
	//	Update visual weapon
	this->weapon_sprite.setPosition(center);

	float dX = mouse_pos_view.x - this->weapon_sprite.getPosition().x;
	float dY = mouse_pos_view.y - this->weapon_sprite.getPosition().y;

	const float PI = 3.14159265f;
	float deg = atan2(dY, dX) * 180.f / PI;

	if (this->attackTimer.getElapsedTime().asMilliseconds() < this->attackTimerMax) {
		this->weapon_sprite.rotate(30.f);
	}
	else {
		this->weapon_sprite.setRotation(deg + 90.f);
	}
}

void Sword::render(sf::RenderTarget & target, sf::Shader* shader)
{
	if (shader) {
		target.draw(this->weapon_sprite, shader);
	}
	else {
		target.draw(this->weapon_sprite);
	}

}


