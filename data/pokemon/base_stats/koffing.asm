	db  40,  65,  95,  35,  60,  45 ; 340 BST
	;   hp  atk  def  spe  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp
	db NO_ITEM, SMOKE_BALL ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for KOFFING, LEVITATE, NEUTRALIZING_GAS, STENCH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 Def

	; tm/hm learnset
	tmhm CURSE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DARK_PULSE, WILL_O_WISP, EXPLOSION, FLASH, GYRO_BALL, ENDURE, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
