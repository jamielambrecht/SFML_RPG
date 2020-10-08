#include "stdafx.h"
#include "TextTagSystem.h"

//	Private functions

void TextTagSystem::initVariables()
{

}

void TextTagSystem::initFonts(std::string font_file)
{
	if (!this->font.loadFromFile(font_file)) {
		std::cout << "ERROR::TEXTTAGSYSTEM::CONSTRUCTOR::FAILED_TO_LOAD_FONT " << font_file << "\n";
	}
}

void TextTagSystem::initTagTemplates()
{
	this->tagTemplates[TagTypes::DEFAULT_TAG] = new TextTag(this->font, "", 200.f, 200.f, 0.f, -10.f, sf::Color::White, 24, 15.f, 5.f);
	this->tagTemplates[TagTypes::NEGATIVE_TAG] = new TextTag(this->font, "", 200.f, 200.f, 0.f, 10.f, sf::Color::Red, 24, 15.f, 20.f);
	this->tagTemplates[TagTypes::EXPERIENCE_TAG] = new TextTag(this->font, "", 200.f, 200.f, 0.f, -10.f, sf::Color::Cyan, 32, 25.f, 20.f);
}

//	Constructors / Destructors

TextTagSystem::TextTagSystem(std::string font_file)
{
	this->initVariables();
	this->initFonts(font_file);
	this->initTagTemplates();
}


TextTagSystem::~TextTagSystem()
{

}

//	Functions

void TextTagSystem::addTextTag(unsigned tag_type, const float pos_x, const float pos_y, const std::string str, const std::string prefix = "", const std::string postfix = "")
{
	std::stringstream ss;
	ss << prefix << " " << str << " " << postfix;
	this->tags.push_back(new TextTag(this->tagTemplates[tag_type], pos_x, pos_y, ss.str()));
}

void TextTagSystem::addTextTag(unsigned tag_type, const float pos_x, const float pos_y, const int val, const std::string prefix = "", const std::string postfix = "")
{
	std::stringstream ss;
	ss << prefix << " " << val << " " << postfix;
	this->tags.push_back(new TextTag(this->tagTemplates[tag_type], pos_x, pos_y, ss.str()));
}

void TextTagSystem::addTextTag(unsigned tag_type, const float pos_x, const float pos_y, const float val, const std::string prefix = "", const std::string postfix = "")
{
	std::stringstream ss;
	ss << prefix << " " << val << " " << postfix;
	this->tags.push_back(new TextTag(this->tagTemplates[tag_type], pos_x, pos_y, ss.str()));
}

void TextTagSystem::update(const float & dt)
{
	for (size_t i = 0; i < this->tags.size(); i++)
	{
		this->tags[i]->update(dt);

		if (tags[i]->isExpired()) {
			delete this->tags[i];
			this->tags.erase(this->tags.begin() + i);
		}

	}
}

void TextTagSystem::render(sf::RenderTarget& target)
{
	for (auto& tag : this->tags) {
		tag->render(target);
	}
}
