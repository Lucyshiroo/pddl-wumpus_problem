
    (define (domain emergency-response)
      (:requirements :strips :typing)
      
      ;; Types
      (:types station location)
      
      ;; Predicates
      (:predicates
        (at ?s - station ?l - location)
        (busy ?s - station)
      )
      
      ;; Actions
      (:action communicate
        :parameters (?s1 - station ?s2 - station)
        :precondition (and (at ?s1 ?l) (at ?s2 ?l))
        :effect (and (at ?s1 ?l) (at ?s2 ?l))
      )
      
      (:action dispatch-fire-station
        :parameters (?s - station ?l - location)
        :precondition (and (at ?s ?l) (not (busy ?s)))
        :effect (and (at ?s ?l) (busy ?s))
      )
      
      (:action dispatch-police-station
        :parameters (?s - station ?l - location)
        :precondition (and (at ?s ?l) (not (busy ?s)))
        :effect (and (at ?s ?l) (busy ?s))
      )
      
      (:action dispatch-ambulance-station
        :parameters (?s - station ?l - location)
        :precondition (and (at ?s ?l) (not (busy ?s)))
        :effect (and (at ?s ?l) (busy ?s))
      )
      
      (:action release
        :parameters (?s - station ?l - location)
        :precondition (and (at ?s ?l) (busy ?s))
        :effect (and (at ?s ?l) (not (busy ?s)))
      )
    )
    