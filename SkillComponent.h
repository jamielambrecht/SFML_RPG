#pragma once

enum SKILLS { HEALTH = 0, ATTACK, ACCURACY, ENDURANCE };

class SkillComponent
{
private:

	class Skill {
	private:
		int type;
		int value;
		int level;
		int levelCap;
		int exp;
		int expNext;

	public:
		Skill(int type) {
			this->type = type;
			this->level = 1;
			this->levelCap = 99;
			this->exp = 0;
			this->expNext = 100;
		}

		~Skill() {

		}

		//	Accessors
		inline const int& getType() const { return this->type; }
		inline const int& getLevel() const { return this->level; }
		inline const int& getExp() const { return this->exp; }
		inline const int& getExpNext() const { return this->expNext; }

		//	Modifiers
		void setLevel(const int level) { this->level = level; }
		void setLevelCap(const int level_cap) { this->levelCap = level_cap; }

		//	Functions
		const void gainExp(const int exp) { 
			this->exp += exp; 
			this->updateLevel(true);
		}

		const void loseExp(const int exp) {
			this->exp -= exp;
			this->updateLevel(false);
		}

		void updateLevel(const bool up) {
			if (up) {
				if (this->level < this->levelCap) {
					while (this->exp >= this->expNext) {
						if (this->level < this->levelCap) {
							this->level++;
							this->expNext = static_cast<int>(std::pow(this->level, 2)) + this->level * 10 + this->level * 2;
						}
					}
				}
			}
			else {
				if (this->level > 0) {
					while (this->exp < 0) {
						if (this->level > 0) {
							this->level--;
							this->exp = static_cast<int>(std::pow(this->level, 2)) + this->level * 10 + this->level * 2;
						}
					}
				}
			}

		}

		void update() {

		}

	};

	std::vector<Skill> skills;

public:
	SkillComponent();
	virtual ~SkillComponent();

	const int getSkill(const int index) const;
	const void gainExp(const int skill, const int exp);
};

