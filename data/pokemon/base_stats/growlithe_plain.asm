	db  55,  70,  45,  60,  70,  50 ; 350 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY ; held items
	dn GENDER_F25, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for GROWLITHE, INTIMIDATE, FLASH_FIRE, JUSTIFIED
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, SAFEGUARD, IRON_TAIL, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, THIEF, WILD_CHARGE, WILL_O_WISP, STRENGTH, AGILITY, BODY_SLAM, CHARM, DOUBLE_EDGE, ENDURE, HEADBUTT, SLEEP_TALK, SWAGGER
	; end
