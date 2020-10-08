#include "stdafx.h"
#include "SkillComponent.h"


SkillComponent::SkillComponent()
{
	this->skills.push_back(Skill(SKILLS::HEALTH));
	this->skills.push_back(Skill(SKILLS::ATTACK));
	this->skills.push_back(Skill(SKILLS::ACCURACY));
	this->skills.push_back(Skill(SKILLS::ENDURANCE));
}


SkillComponent::~SkillComponent()
{
}

const int SkillComponent::getSkill(const int skill) const
{
	if (skills.empty() || skill < 0 || skill >= skills.size()) {
		throw("ERROR::SKILLCOMPONENT::GETSKILL::SKILL_DOES_NOT_EXIST" + skill);
	}
	else {
		return this->skills.at(skill).getLevel();
	}
}

const void SkillComponent::gainExp(const int skill, const int exp)
{
	if (skills.empty() || skill < 0 || skill >= skills.size()) {
		throw("ERROR::SKILLCOMPONENT::GAINEXP::SKILL_DOES_NOT_EXIST" + skill);
	}
	else {
		this->skills[skill].gainExp(exp);
	}
}
