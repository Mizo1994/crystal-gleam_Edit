BattleTowerElevator_MapScriptHeader:

.MapTriggers: db 1
	dw BattleTowerElevatorTrigger0

.MapCallbacks: db 0

BattleTowerElevator_MapEventHeader:

.Warps: db 2
	warp_def $3, $1, 1, BATTLE_TOWER_HALLWAY
	warp_def $3, $2, 1, BATTLE_TOWER_HALLWAY

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 1
	person_event SPRITE_RECEPTIONIST, 2, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1

const_value set 2
	const BATTLETOWERELEVATOR_RECEPTIONIST

BattleTowerElevatorTrigger0:
	priorityjump .RideElevator
	dotrigger $1
	end

.RideElevator:
	follow BATTLETOWERELEVATOR_RECEPTIONIST, PLAYER
	applymovement BATTLETOWERELEVATOR_RECEPTIONIST, MovementData_BattleTowerElevatorReceptionistWalksIn
	applymovement PLAYER, MovementData_BattleTowerElevatorPlayerWalksIn
	special Special_BattleTower_MaxVolume
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	follow BATTLETOWERELEVATOR_RECEPTIONIST, PLAYER
	applymovement BATTLETOWERELEVATOR_RECEPTIONIST, MovementData_BattleTowerElevatorExitElevator
	stopfollow
	warpsound
	disappear BATTLETOWERELEVATOR_RECEPTIONIST
	applymovement PLAYER, MovementData_BattleTowerElevatorExitElevator
	warpcheck
	end

MovementData_BattleTowerElevatorReceptionistWalksIn:
	step_right
	turn_head_down
	step_end

MovementData_BattleTowerElevatorPlayerWalksIn:
	turn_head_down
	step_end

MovementData_BattleTowerElevatorExitElevator:
	step_down
	step_end
