if DEF(FAITHFUL)
	db  40,  20,  30,  55,  40,  80 ; 265 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  40,  40,  30,  55,  20,  80 ; 265 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for LEDYBA, SWARM, EARLY_BIRD, RATTLED
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROOST, DRAIN_PUNCH, ACROBATICS, U_TURN, FLASH, SWORDS_DANCE, AGILITY, BATON_PASS, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
