#include "stdafx.h"
#include "EnemySystem.h"


EnemySystem::EnemySystem(std::vector<Enemy*>& activeEnemies, std::map<std::string, sf::Texture>& textures)
	:	activeEnemies(activeEnemies), textures(textures)
{


}


EnemySystem::~EnemySystem()
{

}

void EnemySystem::createEnemy(const short type, const float xPos, const float yPos, EnemySpawnerTile& enemy_spawner_tile)
{
	switch (type)
	{
	case EnemyTypes::RAT:
		this->activeEnemies.push_back(new Rat(xPos, yPos, this->textures["RAT1_SHEET"], enemy_spawner_tile));
		enemy_spawner_tile.increaseEnemyCounter();
		break;
	default:
		std::cout << "ERROR::ENEMYSYSTEM::CREATEENEMY::TYPE_DOES_NOT_EXIST" << "\n";
		break;
	}
}

void EnemySystem::removeEnemy(const int index)
{
	this->activeEnemies[index]->getEnemySpawnerTile().decreaseEnemyCounter();
	delete this->activeEnemies[index];
	this->activeEnemies.erase(this->activeEnemies.begin() + index);
}

void EnemySystem::update(const float & dt)
{
}

void EnemySystem::render(sf::RenderTarget * target)
{
}
