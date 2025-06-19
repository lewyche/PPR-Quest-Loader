extends Node

const AUTHORNAME_MODNAME_DIR := "lewyche-QuestlineLoader" # Name of the directory that this file is in
const AUTHORNAME_MODNAME_LOG_NAME := "lewyche-QuestlineLoader:Main" # Full ID of the mod (AuthorName-ModName)

var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""

func _add_child_class():
	var questLoader = load("res://mods-unpacked/lewyche-QuestlineLoader/loader_caller.gd").new()
	questLoader.name = "questLoader"
	add_child(questLoader)

func install_script_extensions():
	ModLoaderMod.install_script_extension("res://mods-unpacked/lewyche-QuestlineLoader/extensions/Scripts/questline_loader.gd")

func _init() -> void:
	ModLoaderLog.info("Init", AUTHORNAME_MODNAME_LOG_NAME)
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(AUTHORNAME_MODNAME_DIR)
	
	install_script_extensions()
	
	_add_child_class()

func _ready() -> void:
	ModLoaderLog.info("Ready", AUTHORNAME_MODNAME_LOG_NAME)

	ModLoaderLog.info("Translation Demo: " + tr("MODNAME_READY_TEXT"), AUTHORNAME_MODNAME_LOG_NAME)
