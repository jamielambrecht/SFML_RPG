#pragma once
class AttributeComponent
{
private:


public:
	//	Levelling
	int level;
	int exp;
	int expNext;
	int attributePoints;

	//	Attributes
	int vitality;
	int strength;
	int dexterity;
	int agility;
	int intelligence;

	//	Stats
	int hp;
	int hpMax;
	int damageMin;
	int damageMax;
	int accuracy;
	int defence;
	int luck;

	//Constructor/Destructor
	AttributeComponent(int level);
	virtual ~AttributeComponent();

	//	Functions
	std::string debugPrint() const;

	void loseHP(const int hp);
	void gainHP(const int hp);
	void loseEXP(const int exp);
	void gainExp(const int exp);

	const bool isDead() const;

	void updateStats();
	void updateLevel();

	void update();
};

