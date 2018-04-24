extends Node2D

func create_asteroid(index):
	return get_child(index).duplicate()