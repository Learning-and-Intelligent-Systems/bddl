(define (problem putting_away_toys_1)
    (:domain igibson)

    (:objects
        chest.n.02_1 - chest.n.02
        plaything.n.01_1 plaything.n.01_2 plaything.n.01_3 - plaything.n.01
        table.n.02_1 - table.n.02
    )
    
    (:init
        (ontop plaything.n.01_1 table.n.02_1)
        (ontop plaything.n.01_2 table.n.02_1)
        (under plaything.n.01_3 table.n.02_1)
        (inroom chest.n.02_1 living_room)
        (inroom table.n.02_1 living_room)
    )
    
    (:goal
        (and
            (and
                (forn
                    (3)
                    (?plaything.n.01 - plaything.n.01)
                    (inside ?plaything.n.01 ?chest.n.02_1)
                ) 
            )
        )
    )
)