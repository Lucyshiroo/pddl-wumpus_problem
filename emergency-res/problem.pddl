
    (define (problem emergency-response-problem)
      (:domain emergency-response)
      
      ;; Objects
      (:objects
        fire-station - station
        police-station - station
        ambulance-station - station
        area-1 area-2 area-3 - location
      )
      
      ;; Initial state
      (:init
        (at fire-station area-1)
        (at police-station area-2)
        (at ambulance-station area-3)
        (not (busy fire-station))
        (not (busy police-station))
        (not (busy ambulance-station))
      )
      
      ;; Goal state
      (:goal (and (at fire-station area-1) (at police-station area-2) (at ambulance-station area-3)))
    )
    