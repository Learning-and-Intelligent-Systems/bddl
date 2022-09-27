(define (problem setting_up_candles_0)
    (:domain igibson-actions)

    (:objects
        candle.n.01_1 candle.n.01_2 candle.n.01_3 candle.n.01_4 candle.n.01_5 candle.n.01_6 - candle.n.01
        table.n.02_1 table.n.02_2 - table.n.02
        floor.n.01_1 floor.n.01_2 - floor.n.01
        carton.n.02_1 carton.n.02_2 - carton.n.02
        agent.n.01_1 - agent.n.01
    )
    
    (:init 
        (onfloor carton.n.02_1 floor.n.01_1) 
        (onfloor carton.n.02_2 floor.n.01_1) 
        (inside candle.n.01_1 carton.n.02_1) 
        (inside candle.n.01_2 carton.n.02_1) 
        (inside candle.n.01_3 carton.n.02_1) 
        (inside candle.n.01_4 carton.n.02_2) 
        (inside candle.n.01_5 carton.n.02_2) 
        (inside candle.n.01_6 carton.n.02_2) 
        (inroom floor.n.01_1 living_room) 
        (inroom floor.n.01_2 dining_room) 
        (inroom table.n.02_1 living_room) 
        (inroom table.n.02_2 dining_room) 
        (onfloor agent.n.01_1 floor.n.01_1)
    )
    
    (:goal 
        (and 
            (exists
                (?candle.n.01_i - candle.n.01)
                (exists
                    (?candle.n.01_j - candle.n.01)
                    (exists
                        (?candle.n.01_k - candle.n.01)
                        (and
                            (not (= ?candle.n.01_i ?candle.n.01_j))
                            (not (= ?candle.n.01_j ?candle.n.01_k))
                            (not (= ?candle.n.01_i ?candle.n.01_k))
                            (ontop ?candle.n.01_i table.n.02_1)
                            (ontop ?candle.n.01_j table.n.02_1)
                            (ontop ?candle.n.01_k table.n.02_1)
                        )
                    )
                )
            )

            (exists
                (?candle.n.01_i - candle.n.01)
                (exists
                    (?candle.n.01_j - candle.n.01)
                    (exists
                        (?candle.n.01_k - candle.n.01)
                        (and
                            (not (= ?candle.n.01_i ?candle.n.01_j))
                            (not (= ?candle.n.01_j ?candle.n.01_k))
                            (not (= ?candle.n.01_i ?candle.n.01_k))
                            (ontop ?candle.n.01_i table.n.02_2)
                            (ontop ?candle.n.01_j table.n.02_2)
                            (ontop ?candle.n.01_k table.n.02_2)
                        )
                    )
                )
            )
        )
    )
)