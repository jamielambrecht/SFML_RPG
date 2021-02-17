##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RPG1
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/jamie/Programming/RPG1
ProjectPath            :=/home/jamie/Programming/RPG1
IntermediateDirectory  :=./build-$(ConfigurationName)/
OutDir                 :=./build-$(ConfigurationName)/
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Jamie Lambrecht
Date                   :=08/02/21
CodeLitePath           :=/home/jamie/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=./build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)SFML_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-audio" "sfml-network" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=./build-$(ConfigurationName)//EnemySystem.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Sword.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//TileMap.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//AnimationComponent.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Inventory.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//State.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//AttributeComponent.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//EditorState.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Weapon.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//GameState.cpp$(ObjectSuffix) \
	./build-$(ConfigurationName)//SettingsState.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Entity.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//GraphicsSettings.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//CharacterTab.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//SkillComponent.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Game.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//PlayerGUITabs.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Enemy.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//RegularTile.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//MovementComponent.cpp$(ObjectSuffix) \
	./build-$(ConfigurationName)//TextTagSystem.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Bow.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Rat.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//MainMenuState.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//HitboxComponent.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Item.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//MeleeWeapon.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Gui.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Tab.cpp$(ObjectSuffix) \
	./build-$(ConfigurationName)//Player.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//EditorMode.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//RangedWeapon.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//main.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//PauseMenu.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//EnemyEditorMode.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//DefaultEditorMode.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//stdafx.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//Tile.cpp$(ObjectSuffix) ./build-$(ConfigurationName)//PlayerGUI.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ./build-$(ConfigurationName)//.d $(Objects) 
	@mkdir -p "./build-$(ConfigurationName)/"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "./build-$(ConfigurationName)/"
	@mkdir -p ""./build-$(ConfigurationName)/bin""

./build-$(ConfigurationName)//.d:
	@mkdir -p "./build-$(ConfigurationName)/"

PreBuild:


##
## Objects
##
./build-$(ConfigurationName)//EnemySystem.cpp$(ObjectSuffix): EnemySystem.cpp ./build-$(ConfigurationName)//EnemySystem.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/EnemySystem.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemySystem.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//EnemySystem.cpp$(DependSuffix): EnemySystem.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//EnemySystem.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//EnemySystem.cpp$(DependSuffix) -MM EnemySystem.cpp

./build-$(ConfigurationName)//EnemySystem.cpp$(PreprocessSuffix): EnemySystem.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//EnemySystem.cpp$(PreprocessSuffix) EnemySystem.cpp

./build-$(ConfigurationName)//Sword.cpp$(ObjectSuffix): Sword.cpp ./build-$(ConfigurationName)//Sword.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Sword.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Sword.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Sword.cpp$(DependSuffix): Sword.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Sword.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Sword.cpp$(DependSuffix) -MM Sword.cpp

./build-$(ConfigurationName)//Sword.cpp$(PreprocessSuffix): Sword.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Sword.cpp$(PreprocessSuffix) Sword.cpp

./build-$(ConfigurationName)//TileMap.cpp$(ObjectSuffix): TileMap.cpp ./build-$(ConfigurationName)//TileMap.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/TileMap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TileMap.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//TileMap.cpp$(DependSuffix): TileMap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//TileMap.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//TileMap.cpp$(DependSuffix) -MM TileMap.cpp

./build-$(ConfigurationName)//TileMap.cpp$(PreprocessSuffix): TileMap.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//TileMap.cpp$(PreprocessSuffix) TileMap.cpp

./build-$(ConfigurationName)//AnimationComponent.cpp$(ObjectSuffix): AnimationComponent.cpp ./build-$(ConfigurationName)//AnimationComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/AnimationComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AnimationComponent.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//AnimationComponent.cpp$(DependSuffix): AnimationComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//AnimationComponent.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//AnimationComponent.cpp$(DependSuffix) -MM AnimationComponent.cpp

./build-$(ConfigurationName)//AnimationComponent.cpp$(PreprocessSuffix): AnimationComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//AnimationComponent.cpp$(PreprocessSuffix) AnimationComponent.cpp

./build-$(ConfigurationName)//Inventory.cpp$(ObjectSuffix): Inventory.cpp ./build-$(ConfigurationName)//Inventory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Inventory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Inventory.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Inventory.cpp$(DependSuffix): Inventory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Inventory.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Inventory.cpp$(DependSuffix) -MM Inventory.cpp

./build-$(ConfigurationName)//Inventory.cpp$(PreprocessSuffix): Inventory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Inventory.cpp$(PreprocessSuffix) Inventory.cpp

./build-$(ConfigurationName)//State.cpp$(ObjectSuffix): State.cpp ./build-$(ConfigurationName)//State.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/State.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/State.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//State.cpp$(DependSuffix): State.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//State.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//State.cpp$(DependSuffix) -MM State.cpp

./build-$(ConfigurationName)//State.cpp$(PreprocessSuffix): State.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//State.cpp$(PreprocessSuffix) State.cpp

./build-$(ConfigurationName)//AttributeComponent.cpp$(ObjectSuffix): AttributeComponent.cpp ./build-$(ConfigurationName)//AttributeComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/AttributeComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AttributeComponent.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//AttributeComponent.cpp$(DependSuffix): AttributeComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//AttributeComponent.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//AttributeComponent.cpp$(DependSuffix) -MM AttributeComponent.cpp

./build-$(ConfigurationName)//AttributeComponent.cpp$(PreprocessSuffix): AttributeComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//AttributeComponent.cpp$(PreprocessSuffix) AttributeComponent.cpp

./build-$(ConfigurationName)//EditorState.cpp$(ObjectSuffix): EditorState.cpp ./build-$(ConfigurationName)//EditorState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/EditorState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EditorState.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//EditorState.cpp$(DependSuffix): EditorState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//EditorState.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//EditorState.cpp$(DependSuffix) -MM EditorState.cpp

./build-$(ConfigurationName)//EditorState.cpp$(PreprocessSuffix): EditorState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//EditorState.cpp$(PreprocessSuffix) EditorState.cpp

./build-$(ConfigurationName)//Weapon.cpp$(ObjectSuffix): Weapon.cpp ./build-$(ConfigurationName)//Weapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Weapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Weapon.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Weapon.cpp$(DependSuffix): Weapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Weapon.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Weapon.cpp$(DependSuffix) -MM Weapon.cpp

./build-$(ConfigurationName)//Weapon.cpp$(PreprocessSuffix): Weapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Weapon.cpp$(PreprocessSuffix) Weapon.cpp

./build-$(ConfigurationName)//GameState.cpp$(ObjectSuffix): GameState.cpp ./build-$(ConfigurationName)//GameState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/GameState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GameState.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//GameState.cpp$(DependSuffix): GameState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//GameState.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//GameState.cpp$(DependSuffix) -MM GameState.cpp

./build-$(ConfigurationName)//GameState.cpp$(PreprocessSuffix): GameState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//GameState.cpp$(PreprocessSuffix) GameState.cpp

./build-$(ConfigurationName)//SettingsState.cpp$(ObjectSuffix): SettingsState.cpp ./build-$(ConfigurationName)//SettingsState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/SettingsState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SettingsState.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//SettingsState.cpp$(DependSuffix): SettingsState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//SettingsState.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//SettingsState.cpp$(DependSuffix) -MM SettingsState.cpp

./build-$(ConfigurationName)//SettingsState.cpp$(PreprocessSuffix): SettingsState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//SettingsState.cpp$(PreprocessSuffix) SettingsState.cpp

./build-$(ConfigurationName)//Entity.cpp$(ObjectSuffix): Entity.cpp ./build-$(ConfigurationName)//Entity.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Entity.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Entity.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Entity.cpp$(DependSuffix): Entity.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Entity.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Entity.cpp$(DependSuffix) -MM Entity.cpp

./build-$(ConfigurationName)//Entity.cpp$(PreprocessSuffix): Entity.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Entity.cpp$(PreprocessSuffix) Entity.cpp

./build-$(ConfigurationName)//GraphicsSettings.cpp$(ObjectSuffix): GraphicsSettings.cpp ./build-$(ConfigurationName)//GraphicsSettings.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/GraphicsSettings.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GraphicsSettings.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//GraphicsSettings.cpp$(DependSuffix): GraphicsSettings.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//GraphicsSettings.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//GraphicsSettings.cpp$(DependSuffix) -MM GraphicsSettings.cpp

./build-$(ConfigurationName)//GraphicsSettings.cpp$(PreprocessSuffix): GraphicsSettings.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//GraphicsSettings.cpp$(PreprocessSuffix) GraphicsSettings.cpp

./build-$(ConfigurationName)//CharacterTab.cpp$(ObjectSuffix): CharacterTab.cpp ./build-$(ConfigurationName)//CharacterTab.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/CharacterTab.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CharacterTab.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//CharacterTab.cpp$(DependSuffix): CharacterTab.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//CharacterTab.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//CharacterTab.cpp$(DependSuffix) -MM CharacterTab.cpp

./build-$(ConfigurationName)//CharacterTab.cpp$(PreprocessSuffix): CharacterTab.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//CharacterTab.cpp$(PreprocessSuffix) CharacterTab.cpp

./build-$(ConfigurationName)//SkillComponent.cpp$(ObjectSuffix): SkillComponent.cpp ./build-$(ConfigurationName)//SkillComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/SkillComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SkillComponent.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//SkillComponent.cpp$(DependSuffix): SkillComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//SkillComponent.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//SkillComponent.cpp$(DependSuffix) -MM SkillComponent.cpp

./build-$(ConfigurationName)//SkillComponent.cpp$(PreprocessSuffix): SkillComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//SkillComponent.cpp$(PreprocessSuffix) SkillComponent.cpp

./build-$(ConfigurationName)//Game.cpp$(ObjectSuffix): Game.cpp ./build-$(ConfigurationName)//Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Game.cpp$(DependSuffix): Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Game.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Game.cpp$(DependSuffix) -MM Game.cpp

./build-$(ConfigurationName)//Game.cpp$(PreprocessSuffix): Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Game.cpp$(PreprocessSuffix) Game.cpp

./build-$(ConfigurationName)//PlayerGUITabs.cpp$(ObjectSuffix): PlayerGUITabs.cpp ./build-$(ConfigurationName)//PlayerGUITabs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/PlayerGUITabs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlayerGUITabs.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//PlayerGUITabs.cpp$(DependSuffix): PlayerGUITabs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//PlayerGUITabs.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//PlayerGUITabs.cpp$(DependSuffix) -MM PlayerGUITabs.cpp

./build-$(ConfigurationName)//PlayerGUITabs.cpp$(PreprocessSuffix): PlayerGUITabs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//PlayerGUITabs.cpp$(PreprocessSuffix) PlayerGUITabs.cpp

./build-$(ConfigurationName)//Enemy.cpp$(ObjectSuffix): Enemy.cpp ./build-$(ConfigurationName)//Enemy.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Enemy.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Enemy.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Enemy.cpp$(DependSuffix): Enemy.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Enemy.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Enemy.cpp$(DependSuffix) -MM Enemy.cpp

./build-$(ConfigurationName)//Enemy.cpp$(PreprocessSuffix): Enemy.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Enemy.cpp$(PreprocessSuffix) Enemy.cpp

./build-$(ConfigurationName)//RegularTile.cpp$(ObjectSuffix): RegularTile.cpp ./build-$(ConfigurationName)//RegularTile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/RegularTile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RegularTile.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//RegularTile.cpp$(DependSuffix): RegularTile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//RegularTile.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//RegularTile.cpp$(DependSuffix) -MM RegularTile.cpp

./build-$(ConfigurationName)//RegularTile.cpp$(PreprocessSuffix): RegularTile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//RegularTile.cpp$(PreprocessSuffix) RegularTile.cpp

./build-$(ConfigurationName)//MovementComponent.cpp$(ObjectSuffix): MovementComponent.cpp ./build-$(ConfigurationName)//MovementComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/MovementComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MovementComponent.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//MovementComponent.cpp$(DependSuffix): MovementComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//MovementComponent.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//MovementComponent.cpp$(DependSuffix) -MM MovementComponent.cpp

./build-$(ConfigurationName)//MovementComponent.cpp$(PreprocessSuffix): MovementComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//MovementComponent.cpp$(PreprocessSuffix) MovementComponent.cpp

./build-$(ConfigurationName)//TextTagSystem.cpp$(ObjectSuffix): TextTagSystem.cpp ./build-$(ConfigurationName)//TextTagSystem.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/TextTagSystem.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TextTagSystem.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//TextTagSystem.cpp$(DependSuffix): TextTagSystem.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//TextTagSystem.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//TextTagSystem.cpp$(DependSuffix) -MM TextTagSystem.cpp

./build-$(ConfigurationName)//TextTagSystem.cpp$(PreprocessSuffix): TextTagSystem.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//TextTagSystem.cpp$(PreprocessSuffix) TextTagSystem.cpp

./build-$(ConfigurationName)//Bow.cpp$(ObjectSuffix): Bow.cpp ./build-$(ConfigurationName)//Bow.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Bow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bow.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Bow.cpp$(DependSuffix): Bow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Bow.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Bow.cpp$(DependSuffix) -MM Bow.cpp

./build-$(ConfigurationName)//Bow.cpp$(PreprocessSuffix): Bow.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Bow.cpp$(PreprocessSuffix) Bow.cpp

./build-$(ConfigurationName)//Rat.cpp$(ObjectSuffix): Rat.cpp ./build-$(ConfigurationName)//Rat.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Rat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Rat.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Rat.cpp$(DependSuffix): Rat.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Rat.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Rat.cpp$(DependSuffix) -MM Rat.cpp

./build-$(ConfigurationName)//Rat.cpp$(PreprocessSuffix): Rat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Rat.cpp$(PreprocessSuffix) Rat.cpp

./build-$(ConfigurationName)//MainMenuState.cpp$(ObjectSuffix): MainMenuState.cpp ./build-$(ConfigurationName)//MainMenuState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/MainMenuState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MainMenuState.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//MainMenuState.cpp$(DependSuffix): MainMenuState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//MainMenuState.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//MainMenuState.cpp$(DependSuffix) -MM MainMenuState.cpp

./build-$(ConfigurationName)//MainMenuState.cpp$(PreprocessSuffix): MainMenuState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//MainMenuState.cpp$(PreprocessSuffix) MainMenuState.cpp

./build-$(ConfigurationName)//HitboxComponent.cpp$(ObjectSuffix): HitboxComponent.cpp ./build-$(ConfigurationName)//HitboxComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/HitboxComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HitboxComponent.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//HitboxComponent.cpp$(DependSuffix): HitboxComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//HitboxComponent.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//HitboxComponent.cpp$(DependSuffix) -MM HitboxComponent.cpp

./build-$(ConfigurationName)//HitboxComponent.cpp$(PreprocessSuffix): HitboxComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//HitboxComponent.cpp$(PreprocessSuffix) HitboxComponent.cpp

./build-$(ConfigurationName)//Item.cpp$(ObjectSuffix): Item.cpp ./build-$(ConfigurationName)//Item.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Item.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Item.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Item.cpp$(DependSuffix): Item.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Item.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Item.cpp$(DependSuffix) -MM Item.cpp

./build-$(ConfigurationName)//Item.cpp$(PreprocessSuffix): Item.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Item.cpp$(PreprocessSuffix) Item.cpp

./build-$(ConfigurationName)//MeleeWeapon.cpp$(ObjectSuffix): MeleeWeapon.cpp ./build-$(ConfigurationName)//MeleeWeapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/MeleeWeapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MeleeWeapon.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//MeleeWeapon.cpp$(DependSuffix): MeleeWeapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//MeleeWeapon.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//MeleeWeapon.cpp$(DependSuffix) -MM MeleeWeapon.cpp

./build-$(ConfigurationName)//MeleeWeapon.cpp$(PreprocessSuffix): MeleeWeapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//MeleeWeapon.cpp$(PreprocessSuffix) MeleeWeapon.cpp

./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(ObjectSuffix): EnemySpawnerTile.cpp ./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/EnemySpawnerTile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemySpawnerTile.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(DependSuffix): EnemySpawnerTile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(DependSuffix) -MM EnemySpawnerTile.cpp

./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(PreprocessSuffix): EnemySpawnerTile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//EnemySpawnerTile.cpp$(PreprocessSuffix) EnemySpawnerTile.cpp

./build-$(ConfigurationName)//Gui.cpp$(ObjectSuffix): Gui.cpp ./build-$(ConfigurationName)//Gui.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Gui.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Gui.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Gui.cpp$(DependSuffix): Gui.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Gui.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Gui.cpp$(DependSuffix) -MM Gui.cpp

./build-$(ConfigurationName)//Gui.cpp$(PreprocessSuffix): Gui.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Gui.cpp$(PreprocessSuffix) Gui.cpp

./build-$(ConfigurationName)//Tab.cpp$(ObjectSuffix): Tab.cpp ./build-$(ConfigurationName)//Tab.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Tab.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Tab.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Tab.cpp$(DependSuffix): Tab.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Tab.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Tab.cpp$(DependSuffix) -MM Tab.cpp

./build-$(ConfigurationName)//Tab.cpp$(PreprocessSuffix): Tab.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Tab.cpp$(PreprocessSuffix) Tab.cpp

./build-$(ConfigurationName)//Player.cpp$(ObjectSuffix): Player.cpp ./build-$(ConfigurationName)//Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Player.cpp$(DependSuffix): Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Player.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Player.cpp$(DependSuffix) -MM Player.cpp

./build-$(ConfigurationName)//Player.cpp$(PreprocessSuffix): Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Player.cpp$(PreprocessSuffix) Player.cpp

./build-$(ConfigurationName)//EditorMode.cpp$(ObjectSuffix): EditorMode.cpp ./build-$(ConfigurationName)//EditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/EditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EditorMode.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//EditorMode.cpp$(DependSuffix): EditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//EditorMode.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//EditorMode.cpp$(DependSuffix) -MM EditorMode.cpp

./build-$(ConfigurationName)//EditorMode.cpp$(PreprocessSuffix): EditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//EditorMode.cpp$(PreprocessSuffix) EditorMode.cpp

./build-$(ConfigurationName)//RangedWeapon.cpp$(ObjectSuffix): RangedWeapon.cpp ./build-$(ConfigurationName)//RangedWeapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/RangedWeapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RangedWeapon.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//RangedWeapon.cpp$(DependSuffix): RangedWeapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//RangedWeapon.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//RangedWeapon.cpp$(DependSuffix) -MM RangedWeapon.cpp

./build-$(ConfigurationName)//RangedWeapon.cpp$(PreprocessSuffix): RangedWeapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//RangedWeapon.cpp$(PreprocessSuffix) RangedWeapon.cpp

./build-$(ConfigurationName)//main.cpp$(ObjectSuffix): main.cpp ./build-$(ConfigurationName)//main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//main.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//main.cpp$(DependSuffix) -MM main.cpp

./build-$(ConfigurationName)//main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//main.cpp$(PreprocessSuffix) main.cpp

./build-$(ConfigurationName)//PauseMenu.cpp$(ObjectSuffix): PauseMenu.cpp ./build-$(ConfigurationName)//PauseMenu.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/PauseMenu.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PauseMenu.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//PauseMenu.cpp$(DependSuffix): PauseMenu.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//PauseMenu.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//PauseMenu.cpp$(DependSuffix) -MM PauseMenu.cpp

./build-$(ConfigurationName)//PauseMenu.cpp$(PreprocessSuffix): PauseMenu.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//PauseMenu.cpp$(PreprocessSuffix) PauseMenu.cpp

./build-$(ConfigurationName)//EnemyEditorMode.cpp$(ObjectSuffix): EnemyEditorMode.cpp ./build-$(ConfigurationName)//EnemyEditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/EnemyEditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemyEditorMode.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//EnemyEditorMode.cpp$(DependSuffix): EnemyEditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//EnemyEditorMode.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//EnemyEditorMode.cpp$(DependSuffix) -MM EnemyEditorMode.cpp

./build-$(ConfigurationName)//EnemyEditorMode.cpp$(PreprocessSuffix): EnemyEditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//EnemyEditorMode.cpp$(PreprocessSuffix) EnemyEditorMode.cpp

./build-$(ConfigurationName)//DefaultEditorMode.cpp$(ObjectSuffix): DefaultEditorMode.cpp ./build-$(ConfigurationName)//DefaultEditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/DefaultEditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DefaultEditorMode.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//DefaultEditorMode.cpp$(DependSuffix): DefaultEditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//DefaultEditorMode.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//DefaultEditorMode.cpp$(DependSuffix) -MM DefaultEditorMode.cpp

./build-$(ConfigurationName)//DefaultEditorMode.cpp$(PreprocessSuffix): DefaultEditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//DefaultEditorMode.cpp$(PreprocessSuffix) DefaultEditorMode.cpp

./build-$(ConfigurationName)//stdafx.cpp$(ObjectSuffix): stdafx.cpp ./build-$(ConfigurationName)//stdafx.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/stdafx.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/stdafx.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//stdafx.cpp$(DependSuffix): stdafx.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//stdafx.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//stdafx.cpp$(DependSuffix) -MM stdafx.cpp

./build-$(ConfigurationName)//stdafx.cpp$(PreprocessSuffix): stdafx.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//stdafx.cpp$(PreprocessSuffix) stdafx.cpp

./build-$(ConfigurationName)//Tile.cpp$(ObjectSuffix): Tile.cpp ./build-$(ConfigurationName)//Tile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/Tile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Tile.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//Tile.cpp$(DependSuffix): Tile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//Tile.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//Tile.cpp$(DependSuffix) -MM Tile.cpp

./build-$(ConfigurationName)//Tile.cpp$(PreprocessSuffix): Tile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//Tile.cpp$(PreprocessSuffix) Tile.cpp

./build-$(ConfigurationName)//PlayerGUI.cpp$(ObjectSuffix): PlayerGUI.cpp ./build-$(ConfigurationName)//PlayerGUI.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Programming/RPG1/PlayerGUI.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlayerGUI.cpp$(ObjectSuffix) $(IncludePath)
./build-$(ConfigurationName)//PlayerGUI.cpp$(DependSuffix): PlayerGUI.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT./build-$(ConfigurationName)//PlayerGUI.cpp$(ObjectSuffix) -MF./build-$(ConfigurationName)//PlayerGUI.cpp$(DependSuffix) -MM PlayerGUI.cpp

./build-$(ConfigurationName)//PlayerGUI.cpp$(PreprocessSuffix): PlayerGUI.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ./build-$(ConfigurationName)//PlayerGUI.cpp$(PreprocessSuffix) PlayerGUI.cpp


-include ./build-$(ConfigurationName)///*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


