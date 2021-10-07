(define (domain igibson-actions)
    (:requirements :strips :adl :typing)

    (:types 
        hardback.n.01 table.n.02 floor.n.01 shelf.n.01 book.n.02 agent.n.01
        bread.n.01 countertop.n.01 flour.n.01 milk.n.01 chair.n.01 
        meat.n.01 cheese.n.01 yogurt.n.01 soup.n.01 carrot.n.03 
        broccoli.n.02 apple.n.01 orange.n.01 cabinet.n.01 electric_refrigerator.n.01
        oatmeal.n.01 chip.n.04 vegetable_oil.n.01 sugar.n.01
    )

    (:predicates 
        (inside ?obj1 ?obj2)
        (nextto ?obj1 ?obj2)
        (ontop ?obj1 ?obj2)
        (under ?obj1 ?obj2)
        (broken ?obj1)
        (burnt ?obj1)
        (cooked ?obj1)
        (dusty ?obj1)
        (frozen ?obj1)
        (open ?obj1)
        (perished ?obj1)
        (screwed ?obj1)
        (stained ?obj1)
        (sliced ?obj1)
        (soaked ?obj1)
        (timeset ?obj1)
        (toggled_on ?obj1)
        (inroom ?obj1 ?room1)
        (onfloor ?obj1 ?floor1)
        ; New Handwritten predicates (njk and wbm3)
        (holding ?obj1)
        (handsfull ?agent)
    )

    ; (:action navigate_to_from
    ;     :parameters (?objto - object ?agent - agent.n.01 ?objfrom - object)
    ;     :precondition (and (not (nextto ?agent ?objto))
    ;                         (nextto ?agent ?objfrom))
    ;     :effect (and (nextto ?agent ?objto) 
    ;                     (not (nextto ?agent ?objfrom)))
    ; )

    (:action navigate_to
        :parameters (?objto - object ?agent - agent.n.01)
        :precondition (not (nextto ?objto ?agent))
        :effect (and (nextto ?objto ?agent) 
                        (when 
                            (exists 
                                (?objfrom - object) 
                                (nextto ?objfrom ?agent)
                            )
                            (not (nextto ?objfrom ?agent))
                        ) 
                )
    )

    (:action grasp
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (not (holding ?obj))
                            (not (handsfull ?agent)) 
                            (nextto ?obj ?agent))
        :effect (and (holding ?obj) 
                        (handsfull ?agent))
    )
    
    (:action place_ontop ; place object 1 onto object 2
        :parameters (?obj2 - object ?agent - agent.n.01 ?obj1 - object)
        :precondition (and (holding ?obj1) 
                            (nextto ?obj2 ?agent))
        :effect (and (ontop ?obj1 ?obj2) 
                        (not (holding ?obj1)) 
                        (not (handsfull ?agent)))
    )

    (:action place_inside ; place object 1 inside object 2
        :parameters (?obj2 - object ?agent - agent.n.01 ?obj1 - object)
        :precondition (and (holding ?obj1) 
                            (nextto ?obj2 ?agent) 
                            (open ?obj2))
        :effect (and (inside ?obj1 ?obj2) 
                        (not (holding ?obj1)) 
                        (not (handsfull ?agent)))
    )
    
    (:action open
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (nextto ?obj ?agent) 
                            (not (open ?obj))
                            (not (handsfull ?agent)))
        :effect (open ?obj)
    )

    (:action close
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (nextto ?obj ?agent) 
                            (open ?obj)
                            (not (handsfull ?agent)))
        :effect (not (open ?obj))
    )
    
)
