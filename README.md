This mod allows the player to load custom questlines.

# Features
- Loading questlines through zip files
- Allows for giving NPCs dialog and letting NPCs to give you quests
- Support for custom NPCs

# Installation
1. Install [ppr-modloader](https://github.com/CruS-Modding-Infrastructure/ppr-modloader), then move the zipped mod from Releases into your `mods` directory.

# Installing custom questlines
1. Same as above, drag zip file into `mods` folder.

# Why not let mod developers just mod the questlines in themselves?
The main purpose of this mod is to allow multiple mods that include custom questlines to work together. Plus it makes creating questlines and NPCs slightly easier.

# For Mod Developers (Example questline in releases)
- (Info on how to set up your modding copy can be found on the [PPR modloader wiki](https://github.com/CruS-Modding-Infrastructure/ppr-modloader))
-  Quests can be created through exclusively the Tasks.json and NPC .json files, found in the NPCs folder
-  Create a file called Tasks.json containing all the quests you are planning on adding:
-  ```
   {
    "Task Name":
     {
        "completion_flag": "flag_with_no_spaces",
        "full_name": "Full Task Name",
        "description": "Informative Description"
     }
   }
   ```
- Copy the .json file of an existing NPC or create a file for a new NPC who will give you these quests:
- ```
  {
    "n": "Lorenzo Visconti",
    ...
    "offline_dialogue":
    {
      "flag": "task_flag",
      "task": "Task Name",
      "line": "Eye Heart Wilheim Reich!"
    }
  }
  ```
- Make sure that the Quest Loader is installed
- Putting your quests in the game ([with child nodes](https://wiki.godotmodding.com/guides/modding/global_classes_and_child_nodes/)):
- ```
  var questLoader = get_node("/root/ModLoader/lewyche-QuestlineLoader/questLoader")
  
  questLoader.load_tasks("/path/to/your/Tasks.json")
  # Note: must be done for each NPC
  questLoader.load_npc("/path/to/your/NPC.json")
  ```

# Future
- Add support for custom portraits
- Load NPCs by the folder
