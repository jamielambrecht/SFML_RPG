#include "stdafx.h"
#include "MovementComponent.h"


MovementComponent::MovementComponent(sf::Sprite& sprite, 
	float maxVelocity, float acceleration, float deceleration)
	: sprite(sprite), maxVelocity(maxVelocity),
	acceleration(acceleration), deceleration(deceleration)
{

}


MovementComponent::~MovementComponent()
{
}


//Accessors

const float & MovementComponent::getMaxVelocty() const
{
	return this->maxVelocity;
}

const sf::Vector2f & MovementComponent::getVelocity() const
{
	return this->velocity;
}


//	Functions

const bool MovementComponent::getState(const short unsigned state) const
{
	switch (state)
	{
	case IDLE:
		if (this->velocity.x == 0.f && this->velocity.y == 0.f)
			return true;
		break;
	case MOVING:
		break;
	case MOVING_UP:
		if (this->velocity.y < 0.f)
			return true;
		break;
	case MOVING_LEFT:
		if (this->velocity.x < 0.f)
			return true;
		break;
	case MOVING_DOWN:
		if (this->velocity.y > 0.f)
			return true;
		break;
	case MOVING_RIGHT:
		if (this->velocity.x > 0.f)
			return true;
		break;
	}
	return false;
}

void MovementComponent::stopVelocity()
{
	/*	Resets the velocity to 0	*/
	this->velocity.x = 0.f;
	this->velocity.y = 0.f;
}

void MovementComponent::stopVelocityX()
{
	/*	Resets the velocity X to 0	*/
	this->velocity.x = 0.f;
}

void MovementComponent::stopVelocityY()
{
	/*	Resets the velocity Y to 0	*/
	this->velocity.y = 0.f;
}

void MovementComponent::move(const float dir_x, const float dir_y, const float& dt)
{
	//	Acceleration
	this->velocity.x += this->acceleration * dir_x * dt;
	this->velocity.y += this->acceleration * dir_y * dt;
}

void MovementComponent::update(const float & dt)
{
	//	Deceleration and max vel control
	if (this->velocity.x > 0.f) //	Check for positive x
	{	
		//	Max velocity check
		if (this->velocity.x > this->maxVelocity) {
			this->velocity.x = this->maxVelocity;
		}
		//	Deceleration x positive
		this->velocity.x -= deceleration * dt;
		if (this->velocity.x < 0.f) {
			this->velocity.x = 0;
		}
	}
	else if (this->velocity.x < 0.f) //	Check for negative x
	{	
		//	Max velocity check
		if (this->velocity.x < -this->maxVelocity) {
			this->velocity.x = -this->maxVelocity;
		}
		//	Deceleration x negative
		this->velocity.x += deceleration * dt;
		if (this->velocity.x > 0.f) {
			this->velocity.x = 0;
		}
	}

	if (this->velocity.y > 0.f) //	Check for positive y
	{	
		//	Max velocity check
		if (this->velocity.y > this->maxVelocity) {
			this->velocity.y = this->maxVelocity;
		}
		//	Deceleration y positive
		this->velocity.y -= deceleration * dt;
		if (this->velocity.y < 0.f) {
			this->velocity.y = 0;
		}
	}
	else if (this->velocity.y < 0.f) //	Check for negative y
	{	
		//	Max velocity check
		if (this->velocity.y < -this->maxVelocity) {
			this->velocity.y = -this->maxVelocity;
		}
		//	Deceleration x negative
		this->velocity.y += deceleration * dt;
		if (this->velocity.y > 0.f) {
			this->velocity.y = 0;
		}
	}

	//	Final move
	this->sprite.move(this->velocity * dt);	//	Uses velocity
}
