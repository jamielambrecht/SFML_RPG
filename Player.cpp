#include "stdafx.h"
#include "Player.h"

//	Initializer Functions

void Player::initVariables()
{
	this->attacking = false;
	this->sword = new Sword(1, 2, 5, 60, 20, "Resources/Images/Sprites/Player/sword.png");
	this->sword->generate(1, 3);
}

void Player::initComponents()
{

}

void Player::initAnimations() {
	//LINK
	/*
	this->animationComponent->addAnimation("IDLE_UP", 11.f, 0, 0, 0, 0, 40, 40);
	this->animationComponent->addAnimation("IDLE_LEFT", 11.f, 0, 1, 0, 1, 40, 40);
	this->animationComponent->addAnimation("IDLE_DOWN", 11.f, 0, 2, 0, 2, 40, 40);
	this->animationComponent->addAnimation("IDLE_RIGHT", 11.f, 0, 3, 0, 3, 40, 40);
	this->animationComponent->addAnimation("WALK_UP", 6.f, 0, 4, 7, 4, 40, 40);
	this->animationComponent->addAnimation("WALK_LEFT", 6.f, 0, 5, 5, 5, 40, 40);
	this->animationComponent->addAnimation("WALK_DOWN", 6.f, 0, 6, 7, 6, 40, 40);
	this->animationComponent->addAnimation("WALK_RIGHT", 6.f, 0, 7, 5, 7, 40, 40);
	this->animationComponent->addAnimation("ATTACK_UP", 5.f, 0, 8, 4, 8, 40, 40);
	this->animationComponent->addAnimation("ATTACK_LEFT", 5.f, 0, 9, 4, 9, 40, 40);
	this->animationComponent->addAnimation("ATTACK_DOWN", 5.f, 0, 10, 5, 10, 40, 40);
	this->animationComponent->addAnimation("ATTACK_RIGHT", 5.f, 0, 11, 4, 11, 40, 40);
	*/

	this->animationComponent->addAnimation("IDLE", 15.f, 0, 0, 8, 0, 64, 64);
	this->animationComponent->addAnimation("WALK_DOWN", 11.f, 0, 1, 3, 1, 64, 64);
	this->animationComponent->addAnimation("WALK_LEFT", 11.f, 4, 1, 7, 1, 64, 64);
	this->animationComponent->addAnimation("WALK_RIGHT", 11.f, 8, 1, 11, 1, 64, 64);
	this->animationComponent->addAnimation("WALK_UP", 11.f, 12, 1, 15, 1, 64, 64);
	this->animationComponent->addAnimation("ATTACK", 5.f, 0, 2, 1, 2, 64, 64);
}

void Player::initInventory()
{
	this->inventory = new Inventory(100);
}

//	Constructors / Destructors

Player::Player(float x, float y, sf::Texture& texture_sheet)
{

	this->initVariables();

	this->createHitboxComponent(this->sprite, 12.f, 10.f, 40.f, 54.f);
	this->createMovementComponent(350.f, 5000.f, 2000.f);
	this->createAnimationComponent(texture_sheet);
	this->createAttributeComponent(1);
	this->createSkillComponent();

	this->setPosition(x, y);
	this->initAnimations();
	this->initInventory();
}


Player::~Player()
{
	delete this->inventory;
	delete this->sword;
}

//	Accessors
AttributeComponent * Player::getAttributeComponent()
{
	return this->attributeComponent;
}

Weapon * Player::getWeapon() const
{
	return this->sword;
}

//	Functions
void Player::loseHP(const int hp)
{
	this->attributeComponent->loseHP(hp);
}

void Player::gainHP(const int hp)
{
	this->attributeComponent->gainHP(hp);
}

void Player::loseEXP(const int exp)
{
	this->attributeComponent->loseEXP(exp);
}

void Player::gainEXP(const int exp)
{
	this->attributeComponent->gainExp(exp);
}

void Player::updateAnimation(const float & dt)
{
	if (this->attacking) {

	}
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

void Player::update(const float & dt, sf::Vector2f& mouse_pos_view)
{
	/*
	system("cls");
	std::cout << this->attributeComponent->debugPrint() << "\n";
	*/
	this->movementComponent->update(dt);
	this->updateAnimation(dt);
	this->hitboxComponent->update();
	this->sword->update(mouse_pos_view, this->getCenter());
}

void Player::render(sf::RenderTarget & target, sf::Shader* shader, const sf::Vector2f light_position, const bool show_hitbox)
{
	if (shader) {
		shader->setUniform("hasTexture", true);
		shader->setUniform("lightPos", light_position);
		target.draw(this->sprite, shader);

		shader->setUniform("hasTexture", true);
		shader->setUniform("lightPos", light_position);
		this->sword->render(target, shader);
	}
	else {
		target.draw(this->sprite);
		this->sword->render(target);
	}


	if (show_hitbox)
		this->hitboxComponent->render(target);

}
