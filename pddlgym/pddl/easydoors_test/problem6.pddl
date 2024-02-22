(define (problem doors)
    (:domain doors)

    (:objects
    key-0 - key
	key-1 - key
	key-2 - key
	loc-0-0 - location
	loc-0-3 - location
	loc-1-0 - location
	loc-1-3 - location
	loc-2-0 - location
	loc-2-3 - location
	loc-3-0 - location
	loc-3-3 - location
	loc-4-0 - location
	loc-4-3 - location
	loc-5-0 - location
	loc-5-3 - location
	room-0 - room
	room-1 - room
	room-2 - room
	room-3 - room
    )

    (:init
    (at loc-0-0)
	(unlocked room-0)
	(locinroom loc-0-0 room-0)
	(moveto loc-0-0)
	(locinroom loc-0-3 room-1)
	(moveto loc-0-3)
	(locinroom loc-1-0 room-0)
	(moveto loc-1-0)
	(locinroom loc-1-3 room-1)
	(moveto loc-1-3)
	(locinroom loc-2-0 room-0)
	(moveto loc-2-0)
	(locinroom loc-2-3 room-1)
	(moveto loc-2-3)
	(locinroom loc-3-0 room-2)
	(moveto loc-3-0)
	(locinroom loc-3-3 room-3)
	(moveto loc-3-3)
	(locinroom loc-4-0 room-2)
	(moveto loc-4-0)
	(locinroom loc-4-3 room-3)
	(moveto loc-4-3)
	(locinroom loc-5-0 room-2)
	(moveto loc-5-0)
	(locinroom loc-5-3 room-3)
	(moveto loc-5-3)
	(keyforroom key-0 room-2)
	(keyat key-0 loc-1-0)
	(keyforroom key-2 room-3)
	(keyat key-2 loc-4-0)
	(pick key-2)

    )

    (:goal (and (at loc-5-3)))
)
