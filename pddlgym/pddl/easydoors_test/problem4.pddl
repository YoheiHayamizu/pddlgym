(define (problem doors)
    (:domain doors)

    (:objects
    key-0 - key
	key-1 - key
	loc-0-0 - location
	loc-1-0 - location
	loc-10-0 - location
	loc-11-0 - location
	loc-2-0 - location
	loc-3-0 - location
	loc-4-0 - location
	loc-5-0 - location
	loc-6-0 - location
	loc-7-0 - location
	loc-8-0 - location
	loc-9-0 - location
	room-0 - room
	room-1 - room
	room-2 - room
    )

    (:init
    (at loc-0-0)
	(unlocked room-0)
	(locinroom loc-0-0 room-0)
	(moveto loc-0-0)
	(locinroom loc-1-0 room-0)
	(moveto loc-1-0)
	(locinroom loc-2-0 room-0)
	(moveto loc-2-0)
	(locinroom loc-3-0 room-0)
	(moveto loc-3-0)
	(locinroom loc-4-0 room-1)
	(moveto loc-4-0)
	(locinroom loc-5-0 room-1)
	(moveto loc-5-0)
	(locinroom loc-6-0 room-1)
	(moveto loc-6-0)
	(locinroom loc-7-0 room-1)
	(moveto loc-7-0)
	(locinroom loc-8-0 room-2)
	(moveto loc-8-0)
	(locinroom loc-9-0 room-2)
	(moveto loc-9-0)
	(locinroom loc-10-0 room-2)
	(moveto loc-10-0)
	(locinroom loc-11-0 room-2)
	(moveto loc-11-0)
	(keyforroom key-0 room-1)
	(keyat key-0 loc-3-0)
	(pick key-0)
	(keyforroom key-1 room-2)
	(keyat key-1 loc-6-0)
	(pick key-1)

    )

    (:goal (and (at loc-6-0)))
)
