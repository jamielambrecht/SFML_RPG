#include "stdafx.h"
#include "TileMap.h"

void TileMap::clear()
{
	if (!this->map.empty()) {
		for (size_t x = 0; x < this->map.size(); x++) {
			for (size_t y = 0; y < this->map[x].size(); y++) {
				for (size_t z = 0; z < this->map[x][y].size(); z++) {
					for (int k = 0; k < this->map[x][y][z].size(); k++) {
						delete this->map[x][y][z][k];
						this->map[x][y][z][k] = NULL;
					}
					this->map[x][y][z].clear();
				}
				this->map[x][y].clear();
			}
			this->map[x].clear();
		}
		this->map.clear();
	}
	//	std::cout << this->map.size();
}

TileMap::TileMap(float gridSize, int width, int height, std::string texture_file)
{
	this->gridSizeF = gridSize;
	this->gridSizeI = static_cast<int>(this->gridSizeF);
	this->maxSizeWorldGrid.x = width;
	this->maxSizeWorldGrid.y = height;
	this->maxSizeWorldF.x = static_cast<float>(width) * gridSize;
	this->maxSizeWorldF.y = static_cast<float>(height) * gridSize;
	this->layers = 1;
	this->textureFile = texture_file;

	this->fromX = 0;
	this->toX = 0;
	this->fromY = 0;
	this->toY = 0;
	this->layer = 0;


	this->map.resize(this->maxSizeWorldGrid.x, std::vector<std::vector<std::vector<Tile*>>>());
	for (int x = 0; x < this->maxSizeWorldGrid.x; x++) {
		for (int y = 0; y < this->maxSizeWorldGrid.y; y++) {
			this->map[x].resize(this->maxSizeWorldGrid.y, std::vector<std::vector<Tile*>>());
			for (int z = 0; z < this->layers; z++) {
				this->map[x][y].resize(this->layers, std::vector<Tile*>());
			}
		}
	}

	if (!this->tileSheet.loadFromFile(texture_file)) 
	{
		std::cout << "ERROR::TILEMAP::FAILED_TO_LOAD_TILE_TEXTURE_SHEET::FILENAME:: " << texture_file << "\n";
	} else {

	}

	this->collisionBox.setSize(sf::Vector2f(gridSize, gridSize));
	this->collisionBox.setFillColor(sf::Color(255, 0, 0, 50));
	this->collisionBox.setOutlineColor(sf::Color::Red);
	this->collisionBox.setOutlineThickness(-1.f);
}

TileMap::TileMap(const std::string filename)
{
	this->fromX = 0;
	this->toX = 0;
	this->fromY = 0;
	this->toY = 0;
	this->layer = 0;

	this->loadFromFile(filename);

	this->collisionBox.setSize(sf::Vector2f(this->gridSizeF, this->gridSizeF));
	this->collisionBox.setFillColor(sf::Color(255, 0, 0, 50));
	this->collisionBox.setOutlineColor(sf::Color::Red);
	this->collisionBox.setOutlineThickness(-1.f);
}


TileMap::~TileMap()
{
	this->clear();
}

//	Accessors

const bool TileMap::tileEmpty(const int x, const int y, const int z) const
{
	if (x >= 0 && x < this->maxSizeWorldGrid.x &&
		y >= 0 && y < this->maxSizeWorldGrid.y &&
		z >= 0 && z < this->layers)
	{
		return this->map[x][y][z].empty();
	}
	return false;
}

const sf::Texture * TileMap::getTileSheet() const
{
	return &this->tileSheet;
}

const int TileMap::getLayerSize(const int x, const int y, const int z) const
{
	if (x >= 0 && x < static_cast<int>(this->map.size())) {
		if (y >= 0 && y < static_cast<int>(this->map[x].size())) {
			if (layer >= 0 && layer < static_cast<int>(this->map[x][y].size())) {
				return this->map[x][y][layer].size();
			}
		}
	}
	return -1;
}

const sf::Vector2i & TileMap::getMaxSizeGrid() const
{
	return this->maxSizeWorldGrid;
}

const sf::Vector2f & TileMap::getMaxSizeF() const
{
	return this->maxSizeWorldF;
}

//	Functions

void TileMap::addTile(const int x, const int y, const int z, const sf::IntRect& texture_rect, const bool& collision, const short& type)
{
	/*	Take 3 indices from the mousposition in the grid and add a tile to that position, if the internal tilemap array allows it	*/
	if (x < this->maxSizeWorldGrid.x && x >= 0 &&
		y < this->maxSizeWorldGrid.y && y >= 0 &&
		z < this->layers && z >= 0)
	{
		/* Okay to add tile */
		this->map[x][y][z].push_back(new RegularTile(type, x, y, this->gridSizeF, this->tileSheet, texture_rect, collision));
	}
}

void TileMap::addTile(const int x, const int y, const int z, const sf::IntRect & texture_rect, const int enemy_type, const int enemy_amount, const int enemy_time_to_spawn, const int enemy_max_distance)
{
	/*	Take 3 indices from the mousposition in the grid and add a tile to that position, if the internal tilemap array allows it	*/
	if (x < this->maxSizeWorldGrid.x && x >= 0 &&
		y < this->maxSizeWorldGrid.y && y >= 0 &&
		z < this->layers && z >= 0)
	{
		this->map[x][y][z].push_back(new EnemySpawnerTile(
			x, y, this->gridSizeF, this->tileSheet, texture_rect,
			enemy_type, enemy_amount, enemy_time_to_spawn, enemy_max_distance)
		);
	}
}

void TileMap::removeTile(const int x, const int y, const int z, const int type)
{
	/*	Take 3 indices from the mousposition in the grid and remove a tile from that position, if the internal tilemap array allows it	*/

	if (x < this->maxSizeWorldGrid.x && x >= 0 &&
		y < this->maxSizeWorldGrid.y && y >= 0 &&
		z < this->layers && z >= 0)
	{
		if (!this->map[x][y][z].empty()) {
			/* Okay to remove tile */
			if (type >= 0) {
				if (this->map[x][y][z].back()->getType() == type) {
					delete this->map[x][y][z][this->map[x][y][z].size() - 1];
					this->map[x][y][z].pop_back();
				}
			}
			else {
				delete this->map[x][y][z][this->map[x][y][z].size() - 1];
				this->map[x][y][z].pop_back();
			}
		}
	}

}

void TileMap::saveToFile(const std::string filename)
{
	/*	Saves the entire tilemap to a textfile format
			Basic:
				Size: x, y, z
				gridSize
				layers
				texture file

			All tiles:
				type
				gridpos x, y, z (all tiles)
				textureRect: x y, collision, 
				tile type-specific data
	*/

	std::ofstream out_file;
	out_file.open(filename);
	if (out_file.is_open()) {

		out_file << this->maxSizeWorldGrid.x << " " << this->maxSizeWorldGrid.y << "\n"
			<< this->gridSizeI << "\n"
			<< this->layers << "\n"
			<< this->textureFile << "\n";

		for (int x = 0; x < this->maxSizeWorldGrid.x; x++) {
			for (int y = 0; y < this->maxSizeWorldGrid.y; y++) {
				for (int z = 0; z < this->layers; z++) {
					if (!this->map[x][y][z].empty()) {
						for (size_t k = 0; k < this->map[x][y][z].size(); k++) {
							out_file << x << " " << y << " " << z << " " << 
								this->map[x][y][z][k]->getAsString() << " ";	//	MAKE SURE THIS LAST SPACE IS NOT SAVED
						}
					}
				}
			}
		}
	}
	else {
		std::cout << "ERROR::TILEMAP::COULD_NOT_SAVE_TO_FILE::FILE_NAME: " << filename << "\m";
	}
	out_file.close();
}

void TileMap::loadFromFile(const std::string filename)
{
	/*	Loads the entire tilemap from a textfile format
			Basic:
				Size: x, y
				gridSize
				layers
				texture file

			All tiles:
				gridpos x y z (all tiles)
				textureRect: x y layer, collision, type
	*/

	std::ifstream in_file;
	in_file.open(filename);

	if (in_file.is_open()) {
		sf::Vector2i size;
		int gridSize = 0;
		int layers = 0;
		std::string texture_file = "";
		int x = 0;
		int y = 0;
		int z = 0;
		int trX = 0;
		int trY = 0;
		bool collision = false;
		short type = 0;

		in_file >> size.x >> size.y >> gridSize >> layers >> texture_file;

		this->gridSizeF = static_cast<float>(gridSize);
		this->gridSizeI = gridSize;
		this->maxSizeWorldGrid.x = size.x;
		this->maxSizeWorldGrid.y = size.y;
		this->maxSizeWorldF.x = static_cast<float>(size.x * gridSize);
		this->maxSizeWorldF.y = static_cast<float>(size.y * gridSize);
		this->layers = layers;
		this->textureFile = texture_file;

		this->clear();

		this->map.resize(this->maxSizeWorldGrid.x, std::vector<std::vector<std::vector<Tile*>>>());
		for (int x = 0; x < this->maxSizeWorldGrid.x; x++) {
			for (int y = 0; y < this->maxSizeWorldGrid.y; y++) {
				this->map[x].resize(this->maxSizeWorldGrid.y, std::vector<std::vector<Tile*>>());
				for (int z = 0; z < this->layers; z++) {
					this->map[x][y].resize(this->layers, std::vector<Tile*>());
				}
			}
		}

		if (!this->tileSheet.loadFromFile(texture_file))
		{
			std::cout << "ERROR::TILEMAP::FAILED_TO_LOAD_TILE_TEXTURE_SHEET::FILENAME:: " << texture_file << "\n";
		}

		while (in_file >> x >> y >> z >> type) {
			if (type == TileTypes::ENEMYSPAWNER) {
				//	enemy amount, time to spawn, max distance
				int enemy_type = 0;
				int enemy_am = 0;
				int enemy_tts = 0;
				int enemy_md = 0;

				in_file >> 
					trX >> trY >> enemy_type >> 
					enemy_am >> enemy_md >> enemy_tts;

				this->map[x][y][z].push_back(new EnemySpawnerTile(
					x, y, 
					this->gridSizeF, 
					this->tileSheet, 
					sf::IntRect(
						trX, trY, 
						this->gridSizeI, this->gridSizeI
					), 
					enemy_type, 
					enemy_am,
					enemy_tts,
					enemy_md)
				);

			}
			else {
				in_file >> trX >> trY >> collision;
				this->map[x][y][z].push_back(new RegularTile(type, x, y, this->gridSizeF, this->tileSheet, sf::IntRect(trX, trY, this->gridSizeI, this->gridSizeI), collision));
			}
		}
	}
	else {
		std::cout << "ERROR::TILEMAP::COULD_NOT_SAVE_TO_FILE::FILE_NAME: " << filename << "\m";
	}
	in_file.close();
}

const bool TileMap::checkType(const int x, const int y, const int z, const int type) const
{
	return this->map[x][y][this->layer].back()->getType() == type;
}

void TileMap::updateWorldBoundsCollision(Entity * entity, const float & dt)
{
	//	World Bounds

	if (entity->getPosition().x < 0.f) {
		entity->setPosition(0.f, entity->getPosition().y);
		entity->stopVelocityX();
	}
	else if (entity->getPosition().x + entity->getGlobalBounds().width > this->maxSizeWorldF.x) {
		entity->setPosition(this->maxSizeWorldF.x - entity->getGlobalBounds().width, entity->getPosition().y);
		entity->stopVelocityX();
	}
	if (entity->getPosition().y < 0.f) {
		entity->setPosition(entity->getPosition().x, 0.f);
		entity->stopVelocityY();
	}
	else if (entity->getPosition().y + entity->getGlobalBounds().height > this->maxSizeWorldF.y) {
		entity->setPosition(entity->getPosition().x, this->maxSizeWorldF.y - entity->getGlobalBounds().height);
		entity->stopVelocityY();
	}

}

void TileMap::updateTileCollision(Entity * entity, const float & dt)
{
	//	Tiles
	this->layer = 0;

	this->fromX = entity->getGridPosition(this->gridSizeI).x - 1;
	if (this->fromX < 0) {
		this->fromX = 0;
	}
	else if (this->fromX > this->maxSizeWorldGrid.x) {
		this->fromX = maxSizeWorldGrid.x;
	}

	this->toX = entity->getGridPosition(this->gridSizeI).x + 3;
	if (this->toX < 0) {
		this->toX = 0;
	}
	else if (this->toX > this->maxSizeWorldGrid.x) {
		this->toX = maxSizeWorldGrid.x;
	}

	this->fromY = entity->getGridPosition(this->gridSizeI).y - 1;
	if (this->fromY < 0) {
		this->fromY = 0;
	}
	else if (this->fromY > this->maxSizeWorldGrid.y) {
		this->fromY = maxSizeWorldGrid.y;
	}

	this->toY = entity->getGridPosition(this->gridSizeI).y + 3;
	if (this->toY < 0) {
		this->toY = 0;
	}
	else if (this->toY > this->maxSizeWorldGrid.y) {
		this->toY = maxSizeWorldGrid.y;
	}

	for (int x = this->fromX; x < this->toX; x++) {
		for (int y = this->fromY; y < this->toY; y++) {
			for (int k = 0; k < this->map[x][y][this->layer].size(); k++) {
				sf::FloatRect playerBounds = entity->getGlobalBounds();
				sf::FloatRect wallBounds = this->map[x][y][this->layer][k]->getGlobalBounds();
				sf::FloatRect nextPositionBounds = entity->getNextPositionBounds(dt);

				if (this->map[x][y][this->layer][k]->getCollision()
					&& this->map[x][y][this->layer][k]->intersects(nextPositionBounds)) {
					//	Bottom collision
					if (playerBounds.top < wallBounds.top
						&& playerBounds.top + playerBounds.height < wallBounds.top + wallBounds.height
						&& playerBounds.left < wallBounds.left + wallBounds.width
						&& playerBounds.left + playerBounds.width > wallBounds.left
						)
					{
						entity->stopVelocityY();
						entity->setPosition(playerBounds.left, wallBounds.top - playerBounds.height);
					}	//	Top Collision
					else if (playerBounds.top > wallBounds.top
						&& playerBounds.top + playerBounds.height > wallBounds.top + wallBounds.height
						&& playerBounds.left < wallBounds.left + wallBounds.width
						&& playerBounds.left + playerBounds.width > wallBounds.left
						)
					{
						entity->stopVelocityY();
						entity->setPosition(playerBounds.left, wallBounds.top + wallBounds.height);
					}

					//	Right collision
					if (playerBounds.left < wallBounds.left
						&& playerBounds.left + playerBounds.width < wallBounds.left + wallBounds.width
						&& playerBounds.top < wallBounds.top + wallBounds.height
						&& playerBounds.top + playerBounds.height > wallBounds.top
						)
					{
						entity->stopVelocityX();
						entity->setPosition(wallBounds.left - playerBounds.width, playerBounds.top);
					}	//	Left Collision
					else if (playerBounds.left > wallBounds.left
						&& playerBounds.left + playerBounds.width > wallBounds.left + wallBounds.width
						&& playerBounds.top < wallBounds.top + wallBounds.height
						&& playerBounds.top + playerBounds.height > wallBounds.top
						)
					{
						entity->stopVelocityX();
						entity->setPosition(wallBounds.left + wallBounds.width, playerBounds.top);
					}

				}
			}
		}
	}
}

void TileMap::updateTiles(Entity * entity, const float & dt, EnemySystem& enemy_system)
{
	//	Tiles
	this->layer = 0;

	this->fromX = entity->getGridPosition(this->gridSizeI).x - 14;
	if (this->fromX < 0) {
		this->fromX = 0;
	}
	else if (this->fromX > this->maxSizeWorldGrid.x) {
		this->fromX = maxSizeWorldGrid.x;
	}

	this->toX = entity->getGridPosition(this->gridSizeI).x + 15;
	if (this->toX < 0) {
		this->toX = 0;
	}
	else if (this->toX > this->maxSizeWorldGrid.x) {
		this->toX = maxSizeWorldGrid.x;
	}

	this->fromY = entity->getGridPosition(this->gridSizeI).y - 9;
	if (this->fromY < 0) {
		this->fromY = 0;
	}
	else if (this->fromY > this->maxSizeWorldGrid.y) {
		this->fromY = maxSizeWorldGrid.y;
	}

	this->toY = entity->getGridPosition(this->gridSizeI).y + 8;
	if (this->toY < 0) {
		this->toY = 0;
	}
	else if (this->toY > this->maxSizeWorldGrid.y) {
		this->toY = maxSizeWorldGrid.y;
	}

	for (int x = this->fromX; x < this->toX; x++) {
		for (int y = this->fromY; y < this->toY; y++) {
			for (int k = 0; k < this->map[x][y][this->layer].size(); k++) {
				this->map[x][y][this->layer][k]->update();
				if (this->map[x][y][this->layer][k]->getType() == TileTypes::ENEMYSPAWNER) {
					EnemySpawnerTile* est = dynamic_cast<EnemySpawnerTile*>(this->map[x][y][this->layer][k]);
					if (est) {
						if (!est->getSpawned() && est->getEnemyCounter() < est->getEnemyAmount()) {
							enemy_system.createEnemy(EnemyTypes::RAT, x * this->gridSizeF, y * this->gridSizeF, *est);
							est->setSpawned(true);
						}
					}
				}
			}
		}
	}
}

void TileMap::update(Entity * entity, const float& dt)
{

}

void TileMap::render(
	sf::RenderTarget & target, 
	const sf::Vector2i& gridPosition, 
	sf::Shader* shader, 
	const sf::Vector2f playerPosition, 
	const bool show_collision
)
{
	this->layer = 0;

	this->fromX = gridPosition.x - 14;
	if (this->fromX < 0) {
		this->fromX = 0;
	}
	else if (this->fromX > this->maxSizeWorldGrid.x) {
		this->fromX = maxSizeWorldGrid.x;
	}

	this->toX = gridPosition.x + 15;
	if (this->toX < 0) {
		this->toX = 0;
	}
	else if (this->toX > this->maxSizeWorldGrid.x) {
		this->toX = maxSizeWorldGrid.x;
	}

	this->fromY = gridPosition.y - 9;
	if (this->fromY < 0) {
		this->fromY = 0;
	}
	else if (this->fromY > this->maxSizeWorldGrid.y) {
		this->fromY = maxSizeWorldGrid.y;
	}

	this->toY = gridPosition.y + 8;
	if (this->toY < 0) {
		this->toY = 0;
	}
	else if (this->toY > this->maxSizeWorldGrid.y) {
		this->toY = maxSizeWorldGrid.y;
	}



	for (int x = this->fromX; x < this->toX; x++) {
		for (int y = this->fromY; y < this->toY; y++) {
			for (int k = 0; k < map[x][y][this->layer].size(); k++) {
				if (this->map[x][y][this->layer][k]->getType() == TileTypes::DOODAD) {
					this->deferredRenderStack.push(this->map[x][y][this->layer][k]);
				}
				else {
					if (shader) {
						map[x][y][this->layer][k]->render(target, shader, playerPosition);
					}
					else {
						map[x][y][this->layer][k]->render(target);
					}

				}
				if (show_collision) {
					if (map[x][y][this->layer][k]->getCollision()) {
						this->collisionBox.setPosition(map[x][y][this->layer][k]->getPosition());
						target.draw(this->collisionBox);
					}
				}

				if (this->map[x][y][this->layer][k]->getType() == TileTypes::ENEMYSPAWNER) {
					this->collisionBox.setPosition(map[x][y][this->layer][k]->getPosition());
					target.draw(this->collisionBox);
				}
			}
		}
	}
}

void TileMap::renderDeferred(sf::RenderTarget & target, sf::Shader* shader, const sf::Vector2f playerPosition)
{
	//	Wait for renderring
	while (!this->deferredRenderStack.empty()) {
		if (shader) {
			deferredRenderStack.top()->render(target, shader, playerPosition);
		} else {
			deferredRenderStack.top()->render(target);
		}
		deferredRenderStack.pop();
	}
}
