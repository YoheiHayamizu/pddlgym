(define (problem doors)
    (:domain doors)

    (:objects
    key-0 - key
	loc-0-0 - location
	loc-0-1 - location
	loc-0-2 - location
	loc-1-0 - location
	loc-1-1 - location
	loc-1-2 - location
	loc-2-0 - location
	loc-2-1 - location
	loc-2-2 - location
	room-0 - room
	room-1 - room
	room-2 - room
    )

    (:init
    (at loc-0-0)
	(unlocked room-0)
	(locinroom loc-0-0 room-0)
	(moveto loc-0-0)
	(locinroom loc-0-1 room-0)
	(moveto loc-0-1)
	(locinroom loc-1-0 room-1)
	(moveto loc-1-0)
	(locinroom loc-1-1 room-1)
	(moveto loc-1-1)
	(keyforroom key-0 room-1)
	(keyat key-0 loc-0-1)
	(pick key-0)

    )

    (:goal (and (at loc-2-1)))
)
