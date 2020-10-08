##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RPG1
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/jamie/Dev
ProjectPath            :=/home/jamie/Dev/RPG1
IntermediateDirectory  :=../build-$(ConfigurationName)/RPG1
OutDir                 :=../build-$(ConfigurationName)/RPG1
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Jamie Lambrecht
Date                   :=10/08/20
CodeLitePath           :=/home/jamie/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)/usr/include/SFML 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-system $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-network 
ArLibs                 :=  "sfml-system" "sfml-window" "sfml-graphics" "sfml-audio" "sfml-network" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/RPG1/stdafx.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Inventory.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/EditorState.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/GameState.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Rat.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(ObjectSuffix) \
	../build-$(ConfigurationName)/RPG1/Weapon.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Game.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/State.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Enemy.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Bow.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Tile.cpp$(ObjectSuffix) \
	../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/TileMap.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Entity.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Player.cpp$(ObjectSuffix) \
	../build-$(ConfigurationName)/RPG1/Sword.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Tab.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Gui.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/Item.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/RPG1/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/RPG1"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/RPG1"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/RPG1/.d:
	@mkdir -p "../build-$(ConfigurationName)/RPG1"

PreBuild:

# PreCompiled Header
/home/jamie/Dev/RPG1/stdafx.h.gch: /home/jamie/Dev/RPG1/stdafx.h
	$(CXX) $(SourceSwitch) /home/jamie/Dev/RPG1/stdafx.h $(PCHCompileFlags)



##
## Objects
##
../build-$(ConfigurationName)/RPG1/stdafx.cpp$(ObjectSuffix): stdafx.cpp ../build-$(ConfigurationName)/RPG1/stdafx.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/stdafx.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/stdafx.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/stdafx.cpp$(DependSuffix): stdafx.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/stdafx.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/stdafx.cpp$(DependSuffix) -MM stdafx.cpp

../build-$(ConfigurationName)/RPG1/stdafx.cpp$(PreprocessSuffix): stdafx.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/stdafx.cpp$(PreprocessSuffix) stdafx.cpp

../build-$(ConfigurationName)/RPG1/Inventory.cpp$(ObjectSuffix): Inventory.cpp ../build-$(ConfigurationName)/RPG1/Inventory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Inventory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Inventory.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Inventory.cpp$(DependSuffix): Inventory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Inventory.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Inventory.cpp$(DependSuffix) -MM Inventory.cpp

../build-$(ConfigurationName)/RPG1/Inventory.cpp$(PreprocessSuffix): Inventory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Inventory.cpp$(PreprocessSuffix) Inventory.cpp

../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(ObjectSuffix): SkillComponent.cpp ../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/SkillComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SkillComponent.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(DependSuffix): SkillComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(DependSuffix) -MM SkillComponent.cpp

../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(PreprocessSuffix): SkillComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/SkillComponent.cpp$(PreprocessSuffix) SkillComponent.cpp

../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(ObjectSuffix): RangedWeapon.cpp ../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/RangedWeapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RangedWeapon.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(DependSuffix): RangedWeapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(DependSuffix) -MM RangedWeapon.cpp

../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(PreprocessSuffix): RangedWeapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/RangedWeapon.cpp$(PreprocessSuffix) RangedWeapon.cpp

../build-$(ConfigurationName)/RPG1/EditorState.cpp$(ObjectSuffix): EditorState.cpp ../build-$(ConfigurationName)/RPG1/EditorState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/EditorState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EditorState.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/EditorState.cpp$(DependSuffix): EditorState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/EditorState.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/EditorState.cpp$(DependSuffix) -MM EditorState.cpp

../build-$(ConfigurationName)/RPG1/EditorState.cpp$(PreprocessSuffix): EditorState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/EditorState.cpp$(PreprocessSuffix) EditorState.cpp

../build-$(ConfigurationName)/RPG1/GameState.cpp$(ObjectSuffix): GameState.cpp ../build-$(ConfigurationName)/RPG1/GameState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/GameState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GameState.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/GameState.cpp$(DependSuffix): GameState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/GameState.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/GameState.cpp$(DependSuffix) -MM GameState.cpp

../build-$(ConfigurationName)/RPG1/GameState.cpp$(PreprocessSuffix): GameState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/GameState.cpp$(PreprocessSuffix) GameState.cpp

../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(ObjectSuffix): DefaultEditorMode.cpp ../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/DefaultEditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DefaultEditorMode.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(DependSuffix): DefaultEditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(DependSuffix) -MM DefaultEditorMode.cpp

../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(PreprocessSuffix): DefaultEditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/DefaultEditorMode.cpp$(PreprocessSuffix) DefaultEditorMode.cpp

../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(ObjectSuffix): CharacterTab.cpp ../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/CharacterTab.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CharacterTab.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(DependSuffix): CharacterTab.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(DependSuffix) -MM CharacterTab.cpp

../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(PreprocessSuffix): CharacterTab.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/CharacterTab.cpp$(PreprocessSuffix) CharacterTab.cpp

../build-$(ConfigurationName)/RPG1/Rat.cpp$(ObjectSuffix): Rat.cpp ../build-$(ConfigurationName)/RPG1/Rat.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Rat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Rat.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Rat.cpp$(DependSuffix): Rat.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Rat.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Rat.cpp$(DependSuffix) -MM Rat.cpp

../build-$(ConfigurationName)/RPG1/Rat.cpp$(PreprocessSuffix): Rat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Rat.cpp$(PreprocessSuffix) Rat.cpp

../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(ObjectSuffix): EditorMode.cpp ../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/EditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EditorMode.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(DependSuffix): EditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(DependSuffix) -MM EditorMode.cpp

../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(PreprocessSuffix): EditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/EditorMode.cpp$(PreprocessSuffix) EditorMode.cpp

../build-$(ConfigurationName)/RPG1/Weapon.cpp$(ObjectSuffix): Weapon.cpp ../build-$(ConfigurationName)/RPG1/Weapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Weapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Weapon.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Weapon.cpp$(DependSuffix): Weapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Weapon.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Weapon.cpp$(DependSuffix) -MM Weapon.cpp

../build-$(ConfigurationName)/RPG1/Weapon.cpp$(PreprocessSuffix): Weapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Weapon.cpp$(PreprocessSuffix) Weapon.cpp

../build-$(ConfigurationName)/RPG1/Game.cpp$(ObjectSuffix): Game.cpp ../build-$(ConfigurationName)/RPG1/Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Game.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Game.cpp$(DependSuffix): Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Game.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Game.cpp$(DependSuffix) -MM Game.cpp

../build-$(ConfigurationName)/RPG1/Game.cpp$(PreprocessSuffix): Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Game.cpp$(PreprocessSuffix) Game.cpp

../build-$(ConfigurationName)/RPG1/State.cpp$(ObjectSuffix): State.cpp ../build-$(ConfigurationName)/RPG1/State.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/State.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/State.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/State.cpp$(DependSuffix): State.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/State.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/State.cpp$(DependSuffix) -MM State.cpp

../build-$(ConfigurationName)/RPG1/State.cpp$(PreprocessSuffix): State.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/State.cpp$(PreprocessSuffix) State.cpp

../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(ObjectSuffix): MeleeWeapon.cpp ../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/MeleeWeapon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MeleeWeapon.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(DependSuffix): MeleeWeapon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(DependSuffix) -MM MeleeWeapon.cpp

../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(PreprocessSuffix): MeleeWeapon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/MeleeWeapon.cpp$(PreprocessSuffix) MeleeWeapon.cpp

../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(ObjectSuffix): RegularTile.cpp ../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/RegularTile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RegularTile.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(DependSuffix): RegularTile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(DependSuffix) -MM RegularTile.cpp

../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(PreprocessSuffix): RegularTile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/RegularTile.cpp$(PreprocessSuffix) RegularTile.cpp

../build-$(ConfigurationName)/RPG1/Enemy.cpp$(ObjectSuffix): Enemy.cpp ../build-$(ConfigurationName)/RPG1/Enemy.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Enemy.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Enemy.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Enemy.cpp$(DependSuffix): Enemy.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Enemy.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Enemy.cpp$(DependSuffix) -MM Enemy.cpp

../build-$(ConfigurationName)/RPG1/Enemy.cpp$(PreprocessSuffix): Enemy.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Enemy.cpp$(PreprocessSuffix) Enemy.cpp

../build-$(ConfigurationName)/RPG1/Bow.cpp$(ObjectSuffix): Bow.cpp ../build-$(ConfigurationName)/RPG1/Bow.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Bow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bow.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Bow.cpp$(DependSuffix): Bow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Bow.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Bow.cpp$(DependSuffix) -MM Bow.cpp

../build-$(ConfigurationName)/RPG1/Bow.cpp$(PreprocessSuffix): Bow.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Bow.cpp$(PreprocessSuffix) Bow.cpp

../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(ObjectSuffix): PlayerGUI.cpp ../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/PlayerGUI.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlayerGUI.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(DependSuffix): PlayerGUI.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(DependSuffix) -MM PlayerGUI.cpp

../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(PreprocessSuffix): PlayerGUI.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/PlayerGUI.cpp$(PreprocessSuffix) PlayerGUI.cpp

../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(ObjectSuffix): PauseMenu.cpp ../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/PauseMenu.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PauseMenu.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(DependSuffix): PauseMenu.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(DependSuffix) -MM PauseMenu.cpp

../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(PreprocessSuffix): PauseMenu.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/PauseMenu.cpp$(PreprocessSuffix) PauseMenu.cpp

../build-$(ConfigurationName)/RPG1/Tile.cpp$(ObjectSuffix): Tile.cpp ../build-$(ConfigurationName)/RPG1/Tile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Tile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Tile.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Tile.cpp$(DependSuffix): Tile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Tile.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Tile.cpp$(DependSuffix) -MM Tile.cpp

../build-$(ConfigurationName)/RPG1/Tile.cpp$(PreprocessSuffix): Tile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Tile.cpp$(PreprocessSuffix) Tile.cpp

../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(ObjectSuffix): EnemySystem.cpp ../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/EnemySystem.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemySystem.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(DependSuffix): EnemySystem.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(DependSuffix) -MM EnemySystem.cpp

../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(PreprocessSuffix): EnemySystem.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/EnemySystem.cpp$(PreprocessSuffix) EnemySystem.cpp

../build-$(ConfigurationName)/RPG1/TileMap.cpp$(ObjectSuffix): TileMap.cpp ../build-$(ConfigurationName)/RPG1/TileMap.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/TileMap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TileMap.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/TileMap.cpp$(DependSuffix): TileMap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/TileMap.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/TileMap.cpp$(DependSuffix) -MM TileMap.cpp

../build-$(ConfigurationName)/RPG1/TileMap.cpp$(PreprocessSuffix): TileMap.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/TileMap.cpp$(PreprocessSuffix) TileMap.cpp

../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(ObjectSuffix): MovementComponent.cpp ../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/MovementComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MovementComponent.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(DependSuffix): MovementComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(DependSuffix) -MM MovementComponent.cpp

../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(PreprocessSuffix): MovementComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/MovementComponent.cpp$(PreprocessSuffix) MovementComponent.cpp

../build-$(ConfigurationName)/RPG1/Entity.cpp$(ObjectSuffix): Entity.cpp ../build-$(ConfigurationName)/RPG1/Entity.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Entity.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Entity.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Entity.cpp$(DependSuffix): Entity.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Entity.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Entity.cpp$(DependSuffix) -MM Entity.cpp

../build-$(ConfigurationName)/RPG1/Entity.cpp$(PreprocessSuffix): Entity.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Entity.cpp$(PreprocessSuffix) Entity.cpp

../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(ObjectSuffix): TextTagSystem.cpp ../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/TextTagSystem.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/TextTagSystem.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(DependSuffix): TextTagSystem.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(DependSuffix) -MM TextTagSystem.cpp

../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(PreprocessSuffix): TextTagSystem.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/TextTagSystem.cpp$(PreprocessSuffix) TextTagSystem.cpp

../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(ObjectSuffix): EnemyEditorMode.cpp ../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/EnemyEditorMode.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemyEditorMode.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(DependSuffix): EnemyEditorMode.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(DependSuffix) -MM EnemyEditorMode.cpp

../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(PreprocessSuffix): EnemyEditorMode.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/EnemyEditorMode.cpp$(PreprocessSuffix) EnemyEditorMode.cpp

../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(ObjectSuffix): AnimationComponent.cpp ../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/AnimationComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AnimationComponent.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(DependSuffix): AnimationComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(DependSuffix) -MM AnimationComponent.cpp

../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(PreprocessSuffix): AnimationComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/AnimationComponent.cpp$(PreprocessSuffix) AnimationComponent.cpp

../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(ObjectSuffix): GraphicsSettings.cpp ../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/GraphicsSettings.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GraphicsSettings.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(DependSuffix): GraphicsSettings.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(DependSuffix) -MM GraphicsSettings.cpp

../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(PreprocessSuffix): GraphicsSettings.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/GraphicsSettings.cpp$(PreprocessSuffix) GraphicsSettings.cpp

../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(ObjectSuffix): AttributeComponent.cpp ../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/AttributeComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AttributeComponent.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(DependSuffix): AttributeComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(DependSuffix) -MM AttributeComponent.cpp

../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(PreprocessSuffix): AttributeComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/AttributeComponent.cpp$(PreprocessSuffix) AttributeComponent.cpp

../build-$(ConfigurationName)/RPG1/Player.cpp$(ObjectSuffix): Player.cpp ../build-$(ConfigurationName)/RPG1/Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Player.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Player.cpp$(DependSuffix): Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Player.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Player.cpp$(DependSuffix) -MM Player.cpp

../build-$(ConfigurationName)/RPG1/Player.cpp$(PreprocessSuffix): Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Player.cpp$(PreprocessSuffix) Player.cpp

../build-$(ConfigurationName)/RPG1/Sword.cpp$(ObjectSuffix): Sword.cpp ../build-$(ConfigurationName)/RPG1/Sword.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Sword.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Sword.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Sword.cpp$(DependSuffix): Sword.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Sword.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Sword.cpp$(DependSuffix) -MM Sword.cpp

../build-$(ConfigurationName)/RPG1/Sword.cpp$(PreprocessSuffix): Sword.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Sword.cpp$(PreprocessSuffix) Sword.cpp

../build-$(ConfigurationName)/RPG1/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/RPG1/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/RPG1/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(ObjectSuffix): HitboxComponent.cpp ../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/HitboxComponent.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/HitboxComponent.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(DependSuffix): HitboxComponent.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(DependSuffix) -MM HitboxComponent.cpp

../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(PreprocessSuffix): HitboxComponent.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/HitboxComponent.cpp$(PreprocessSuffix) HitboxComponent.cpp

../build-$(ConfigurationName)/RPG1/Tab.cpp$(ObjectSuffix): Tab.cpp ../build-$(ConfigurationName)/RPG1/Tab.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Tab.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Tab.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Tab.cpp$(DependSuffix): Tab.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Tab.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Tab.cpp$(DependSuffix) -MM Tab.cpp

../build-$(ConfigurationName)/RPG1/Tab.cpp$(PreprocessSuffix): Tab.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Tab.cpp$(PreprocessSuffix) Tab.cpp

../build-$(ConfigurationName)/RPG1/Gui.cpp$(ObjectSuffix): Gui.cpp ../build-$(ConfigurationName)/RPG1/Gui.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Gui.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Gui.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Gui.cpp$(DependSuffix): Gui.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Gui.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Gui.cpp$(DependSuffix) -MM Gui.cpp

../build-$(ConfigurationName)/RPG1/Gui.cpp$(PreprocessSuffix): Gui.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Gui.cpp$(PreprocessSuffix) Gui.cpp

../build-$(ConfigurationName)/RPG1/Item.cpp$(ObjectSuffix): Item.cpp ../build-$(ConfigurationName)/RPG1/Item.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/Item.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Item.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/Item.cpp$(DependSuffix): Item.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/Item.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/Item.cpp$(DependSuffix) -MM Item.cpp

../build-$(ConfigurationName)/RPG1/Item.cpp$(PreprocessSuffix): Item.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/Item.cpp$(PreprocessSuffix) Item.cpp

../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(ObjectSuffix): EnemySpawnerTile.cpp ../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/EnemySpawnerTile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EnemySpawnerTile.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(DependSuffix): EnemySpawnerTile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(DependSuffix) -MM EnemySpawnerTile.cpp

../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(PreprocessSuffix): EnemySpawnerTile.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/EnemySpawnerTile.cpp$(PreprocessSuffix) EnemySpawnerTile.cpp

../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(ObjectSuffix): PlayerGUITabs.cpp ../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/PlayerGUITabs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PlayerGUITabs.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(DependSuffix): PlayerGUITabs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(DependSuffix) -MM PlayerGUITabs.cpp

../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(PreprocessSuffix): PlayerGUITabs.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/PlayerGUITabs.cpp$(PreprocessSuffix) PlayerGUITabs.cpp

../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(ObjectSuffix): MainMenuState.cpp ../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/MainMenuState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MainMenuState.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(DependSuffix): MainMenuState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(DependSuffix) -MM MainMenuState.cpp

../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(PreprocessSuffix): MainMenuState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/MainMenuState.cpp$(PreprocessSuffix) MainMenuState.cpp

../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(ObjectSuffix): SettingsState.cpp ../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jamie/Dev/RPG1/SettingsState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SettingsState.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(DependSuffix): SettingsState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(DependSuffix) -MM SettingsState.cpp

../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(PreprocessSuffix): SettingsState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/RPG1/SettingsState.cpp$(PreprocessSuffix) SettingsState.cpp


-include ../build-$(ConfigurationName)/RPG1//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)
	$(RM) /home/jamie/Dev/RPG1/stdafx.h.gch


