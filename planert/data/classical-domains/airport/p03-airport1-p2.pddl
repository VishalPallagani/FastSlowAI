(define (problem PROBLEM_X)

(:domain airport_fixed_structure)

(:objects
)

(:init

      (at-segment airplane_CFBEG seg_rw_0_400)
      (at-segment airplane_DAEWH seg_pp_0_60)

      (blocked seg_rw_0_400 airplane_CFBEG)
      (blocked seg_pp_0_60 airplane_DAEWH)
      (blocked seg_rwe_0_50 airplane_CFBEG)

      (facing airplane_CFBEG south)
      (facing airplane_DAEWH south)

      (has-type airplane_CFBEG medium)
      (has-type airplane_DAEWH medium)

      (is-moving airplane_CFBEG)

      (is-pushing airplane_DAEWH)


      (not_blocked seg_pp_0_60 airplane_CFBEG)
      (not_blocked seg_ppdoor_0_40 airplane_CFBEG)
      (not_blocked seg_tww1_0_200 airplane_CFBEG)
      (not_blocked seg_twe1_0_200 airplane_CFBEG)
      (not_blocked seg_tww2_0_50 airplane_CFBEG)
      (not_blocked seg_tww3_0_50 airplane_CFBEG)
      (not_blocked seg_tww4_0_50 airplane_CFBEG)
      (not_blocked seg_rww_0_50 airplane_CFBEG)
      (not_blocked seg_rwtw1_0_10 airplane_CFBEG)
      (not_blocked seg_twe4_0_50 airplane_CFBEG)
      (not_blocked seg_rwte1_0_10 airplane_CFBEG)
      (not_blocked seg_twe3_0_50 airplane_CFBEG)
      (not_blocked seg_twe2_0_50 airplane_CFBEG)
      (not_blocked seg_rwte2_0_10 airplane_CFBEG)
      (not_blocked seg_rwtw2_0_10 airplane_CFBEG)
      (not_blocked seg_ppdoor_0_40 airplane_DAEWH)
      (not_blocked seg_tww1_0_200 airplane_DAEWH)
      (not_blocked seg_twe1_0_200 airplane_DAEWH)
      (not_blocked seg_tww2_0_50 airplane_DAEWH)
      (not_blocked seg_tww3_0_50 airplane_DAEWH)
      (not_blocked seg_tww4_0_50 airplane_DAEWH)
      (not_blocked seg_rww_0_50 airplane_DAEWH)
      (not_blocked seg_rwtw1_0_10 airplane_DAEWH)
      (not_blocked seg_rw_0_400 airplane_DAEWH)
      (not_blocked seg_rwe_0_50 airplane_DAEWH)
      (not_blocked seg_twe4_0_50 airplane_DAEWH)
      (not_blocked seg_rwte1_0_10 airplane_DAEWH)
      (not_blocked seg_twe3_0_50 airplane_DAEWH)
      (not_blocked seg_twe2_0_50 airplane_DAEWH)
      (not_blocked seg_rwte2_0_10 airplane_DAEWH)
      (not_blocked seg_rwtw2_0_10 airplane_DAEWH)

      (not_occupied seg_ppdoor_0_40)
      (not_occupied seg_tww1_0_200)
      (not_occupied seg_twe1_0_200)
      (not_occupied seg_tww2_0_50)
      (not_occupied seg_tww3_0_50)
      (not_occupied seg_tww4_0_50)
      (not_occupied seg_rww_0_50)
      (not_occupied seg_rwtw1_0_10)
      (not_occupied seg_rwe_0_50)
      (not_occupied seg_twe4_0_50)
      (not_occupied seg_rwte1_0_10)
      (not_occupied seg_twe3_0_50)
      (not_occupied seg_twe2_0_50)
      (not_occupied seg_rwte2_0_10)
      (not_occupied seg_rwtw2_0_10)

      (occupied seg_rw_0_400)
      (occupied seg_pp_0_60)
)

(:goal
      (and



            (is-parked airplane_CFBEG seg_pp_0_60)
            (airborne airplane_DAEWH seg_rwe_0_50)
      )
)
)
