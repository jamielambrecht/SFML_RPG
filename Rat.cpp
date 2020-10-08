#include "stdafx.h"
#include "Rat.h"


//	Initializer Functions

void Rat::initVariables()
{

}


void Rat::initAnimations() {

	this->animationComponent->addAnimation("IDLE", 25.f, 0, 0, 3, 0, 60, 64);
	this->animationComponent->addAnimation("WALK_UP", 11.f, 0, 4, 3, 4, 60, 64);
	this->animationComponent->addAnimation("WALK_LEFT", 11.f, 0, 2, 3, 2, 60, 64);
	this->animationComponent->addAnimation("WALK_DOWN", 11.f, 0, 1, 3, 1, 60, 64);
	this->animationComponent->addAnimation("WALK_RIGHT", 11.f, 0, 3, 3, 3, 60, 64);
	this->animationComponent->addAnimation("ATTACK", 5.f, 0, 2, 1, 2, 60, 64);
}

void Rat::initGUI()
{
	this->hpBar.setFillColor(sf::Color::Red);
	this->hpBar.setSize(sf::Vector2f(64.f, 12.f));
	this->hpBar.setPosition(this->sprite.getPosition());
}

//	Constructors / Destructors

Rat::Rat(float x, float y, sf::Texture& texture_sheet, EnemySpawnerTile& enemy_spawner_tile)
	:	Enemy(enemy_spawner_tile)
{
	this->initVariables();
	this->initGUI();

	this->createHitboxComponent(this->sprite, 13.f, 39.f,
		30.f, 30.f);
	this->createMovementComponent(50.f, 1600.f, 1000.f);
	this->createAnimationComponent(texture_sheet);
	this->createAttributeComponent(1);

	this->generateAttributes(this->attributeComponent->level);

	this->setPosition(x, y);
	this->initAnimations();


}


Rat::~Rat()
{

}

//	Functions

void Rat::updateAnimation(const float & dt)
{

	if (this->movementComponent->getState(IDLE)) {
		this->animationComponent->play("IDLE", dt);
	}
	else if (this->movementComponent->getState(MOVING_UP)) {
		this->sprite.setOrigin(0.f, 0.f);
		this->animationComponent->play("WALK_UP", dt, this->movementComponent->getVelocity().x, this->movementComponent->getMaxVelocty());
	}
	else if (this->movementComponent->getState(MOVING_LEFT)) {
		this->sprite.setOrigin(0.f, 0.f);
		this->animationComponent->play("WALK_LEFT", dt, this->movementComponent->getVelocity().x, this->movementComponent->getMaxVelocty());
	}
	else if (this->movementComponent->getState(MOVING_DOWN)) {
		this->sprite.setOrigin(0.f, 0.f);
		this->animationComponent->play("WALK_DOWN", dt, this->movementComponent->getVelocity().x, this->movementComponent->getMaxVelocty());
	}
	else if (this->movementComponent->getState(MOVING_RIGHT)) {
		this->sprite.setOrigin(0.f, 0.f);
		this->animationComponent->play("WALK_RIGHT", dt, this->movementComponent->getVelocity().x, this->movementComponent->getMaxVelocty());
	}
}


void Rat::update(const float & dt, sf::Vector2f& mouse_pos_view)
{
	this->movementComponent->update(dt);

	//	REMOVE THIS (TEST)
	this->hpBar.setSize(sf::Vector2f(64.f * (static_cast<float>(this->attributeComponent->hp) / static_cast<float>(this->attributeComponent->hpMax)), 12.f));
	this->hpBar.setPosition(this->sprite.getPosition());

	//this->updateAttack();
	this->updateAnimation(dt);
	this->hitboxComponent->update();
}

void Rat::render(sf::RenderTarget & target, sf::Shader* shader, const sf::Vector2f light_position, const bool show_hitbox)
{
	if (shader) {
		shader->setUniform("hasTexture", true);
		shader->setUniform("lightPos", light_position);
		target.draw(this->sprite, shader);
	}
	else {
		target.draw(this->sprite);
	}

	target.draw(this->hpBar);

	if (show_hitbox)
		this->hitboxComponent->render(target);

}