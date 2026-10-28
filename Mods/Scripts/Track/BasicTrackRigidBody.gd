extends RigidBody3D

func setup_replay(mgr:ReplayManager):
	mgr.add_transform(self)
