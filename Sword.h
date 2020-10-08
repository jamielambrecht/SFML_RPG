#pragma once
#include "MeleeWeapon.h"

class MeleeWeapon;

class Sword :
	public MeleeWeapon
{
private:

public:
	Sword(unsigned level, unsigned damage_min, unsigned damage_max, unsigned range, unsigned value, std::string texture_file);
	virtual ~Sword();

	virtual Sword* clone();

	virtual void update(sf::Vector2f & mouse_pos_view, const sf::Vector2f center);
	virtual void render(sf::RenderTarget& target, sf::Shader* shader = NULL);
};
