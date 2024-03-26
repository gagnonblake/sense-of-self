extends Node

var enet_peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
var join_address: String = ""
var port: int = 9999

func start_server() -> void:
	MultiplayerManager.enet_peer.create_server(MultiplayerManager.port)
	multiplayer.multiplayer_peer = MultiplayerManager.enet_peer

func start_client() -> void:
	MultiplayerManager.enet_peer.create_client(MultiplayerManager.join_address, MultiplayerManager.port)
	multiplayer.multiplayer_peer = MultiplayerManager.enet_peer
