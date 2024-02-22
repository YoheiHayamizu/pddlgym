(define (problem doors)
    (:domain doors)

    (:objects
    key-0 - key
	loc-0-0 - location
	loc-0-1 - location
	loc-0-2 - location
	loc-0-3 - location
	loc-0-4 - location
	loc-0-5 - location
	loc-0-6 - location
	loc-0-7 - location
	loc-7-0 - location
	room-0 - room
	room-1 - room
    )

    (:init
    (at loc-0-0)
	(unlocked room-0)
	(locinroom loc-0-0 room-0)
	(moveto loc-0-0)
	(locinroom loc-0-1 room-0)
	(moveto loc-0-1)
	(locinroom loc-0-2 room-0)
	(moveto loc-0-2)
	(locinroom loc-0-3 room-0)
	(moveto loc-0-3)
	(locinroom loc-0-4 room-0)
	(moveto loc-0-4)
	(locinroom loc-0-5 room-0)
	(moveto loc-0-5)
	(locinroom loc-0-6 room-0)
	(moveto loc-0-6)
	(locinroom loc-0-7 room-0)
	(moveto loc-0-7)
	(locinroom loc-7-0 room-1)
	(moveto loc-7-0)
	(keyforroom key-0 room-1)
	(keyat key-0 loc-0-4)
	(pick key-0)

    )

    (:goal (and (at loc-7-0)))
)
