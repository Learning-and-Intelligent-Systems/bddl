(define (problem serving_hors_d_oeuvres_0)
    (:domain igibson-actions)

    (:objects
        cabinet.n.01_1 - cabinet.n.01
    	salad.n.01_1 salad.n.01_2 salad.n.01_3 salad.n.01_4 - salad.n.01
    	electric_refrigerator.n.01_1 - electric_refrigerator.n.01
    	tray.n.01_1 - tray.n.01
    	parsley.n.02_1 parsley.n.02_2 parsley.n.02_3 parsley.n.02_4 - parsley.n.02
    	cracker.n.01_1 cracker.n.01_2 cracker.n.01_3 cracker.n.01_4 - cracker.n.01
    	table.n.02_1 - table.n.02
    	cheese.n.01_1 cheese.n.01_2 cheese.n.01_3 cheese.n.01_4 - cheese.n.01
    	floor.n.01_1 - floor.n.01
    	agent.n.01_1 - agent.n.01
    )
    
    (:init 
        (inside salad.n.01_1 electric_refrigerator.n.01_1) 
        (inside salad.n.01_2 electric_refrigerator.n.01_1) 
        (inside salad.n.01_3 electric_refrigerator.n.01_1) 
        (inside salad.n.01_4 electric_refrigerator.n.01_1) 
        (inside parsley.n.02_1 electric_refrigerator.n.01_1) 
        (inside parsley.n.02_2 electric_refrigerator.n.01_1) 
        (inside parsley.n.02_3 electric_refrigerator.n.01_1) 
        (inside parsley.n.02_4 electric_refrigerator.n.01_1) 
        (onfloor tray.n.01_1 floor.n.01_1) 
        (ontop cracker.n.01_1 table.n.02_1) 
        (ontop cracker.n.01_2 table.n.02_1) 
        (ontop cracker.n.01_3 table.n.02_1) 
        (ontop cracker.n.01_4 table.n.02_1) 
        (inside cheese.n.01_1 electric_refrigerator.n.01_1) 
        (inside cheese.n.01_2 electric_refrigerator.n.01_1) 
        (inside cheese.n.01_3 electric_refrigerator.n.01_1) 
        (inside cheese.n.01_4 electric_refrigerator.n.01_1) 
        (inroom table.n.02_1 dining_room) 
        (inroom electric_refrigerator.n.01_1 kitchen) 
        (inroom cabinet.n.01_1 kitchen) 
        (inroom floor.n.01_1 dining_room) 
        (onfloor agent.n.01_1 floor.n.01_1)
    )
    
    (:goal 
        (and 
            (ontop tray.n.01_1 table.n.02_1) 
            (forall 
                (?cracker.n.01 - cracker.n.01) 
                (ontop ?cracker.n.01 table.n.02_1)
            ) 
            (forpairs 
                (?salad.n.01 - salad.n.01)
                (?cracker.n.01 - cracker.n.01)
                (nextto ?salad.n.01 ?cracker.n.01)
            )
            (forpairs 
                (?cheese.n.01 - cheese.n.01) 
                (?parsley.n.02 - parsley.n.02) 
                (ontop ?parsley.n.02 ?cheese.n.01)
            ) 
        )
    )
)
