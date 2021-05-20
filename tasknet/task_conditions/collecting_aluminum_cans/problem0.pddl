(define (problem collecting_aluminum_cans_0)
    (:domain igibson)

    (:objects
     	pop.n.02_1 pop.n.02_2 pop.n.02_3 pop.n.02_4 pop.n.02_5 pop.n.02_6 - pop.n.02
    	bed.n.01_1 - bed.n.01
    	floor.n.01_1 - floor.n.01
    	bag.n.01_1 - bag.n.01
        agent.n.01_1 - agent.n.01
    )
    
    (:init 
        (ontop pop.n.02_1 bed.n.01_1) 
        (ontop pop.n.02_2 bed.n.01_1) 
        (ontop pop.n.02_3 bed.n.01_1) 
        (onfloor pop.n.02_4 floor.n.01_1) 
        (onfloor pop.n.02_5 floor.n.01_1) 
        (onfloor pop.n.02_6 floor.n.01_1) 
        (ontop bag.n.01_1 bed.n.01_1) 
        (inroom bed.n.01_1 bedroom) 
        (inroom floor.n.01_1 bedroom) 
        (onfloor agent.n.01_1 floor.n.01_1)
    )
    
    (:goal 
        (and 
            (inside ?pop.n.02_1 ?bag.n.01_1) 
            (inside ?pop.n.02_2 ?bag.n.01_1) 
            (inside ?pop.n.02_3 ?bag.n.01_1) 
            (inside ?pop.n.02_4 ?bag.n.01_1) 
            (inside ?pop.n.02_5 ?bag.n.01_1) 
            (inside ?pop.n.02_6 ?bag.n.01_1) 
            (onfloor ?bag.n.01_1 ?floor.n.01_1)
        )
    )
)