(define (problem BLOCKS-40-1)
(:domain BLOCKS)
(:objects Z Y D N N1 L1 T G I1 L U J A1 H1 B E P 
          M1 Q O W F1 B1 R K V H C I D1 E1 J1 G1 C1 S X F A M K1)
(:INIT (CLEAR Z) (CLEAR Y) (ONTABLE D) (ONTABLE Y) (ON Z N)
                    (ON N N1) (ON N1 L1) (ON L1 T) (ON T G) (ON G I1)
                    (ON I1 L) (ON L U) (ON U J) (ON J A1) (ON A1 H1) (ON H1 B)
                    (ON B E) (ON E P) (ON P M1) (ON M1 Q) (ON Q O) (ON O W)
                    (ON W F1) (ON F1 B1) (ON B1 R) (ON R K) (ON K V) (ON V H)
                    (ON H C) (ON C I) (ON I D1) (ON D1 E1) (ON E1 J1)
                    (ON J1 G1) (ON G1 C1) (ON C1 S) (ON S X) (ON X F) (ON F A)
                    (ON A M) (ON M K1) (ON K1 D) (HANDEMPTY))
(:GOAL (AND (ON N1 I) (ON I L1) (ON L1 D) (ON D Q) (ON Q A1) (ON A1 V)
           (ON V B1) (ON B1 J) (ON J N) (ON N C) (ON C M) (ON M S) (ON S K1)
           (ON K1 U) (ON U Z) (ON Z L) (ON L F) (ON F W) (ON W X) (ON X J1)
           (ON J1 E1) (ON E1 G) (ON G A) (ON A O) (ON O T) (ON T H) (ON H F1)
           (ON F1 I1) (ON I1 P) (ON P G1) (ON G1 K) (ON K Y) (ON Y H1)
           (ON H1 B) (ON B C1) (ON C1 M1) (ON M1 E) (ON E D1) (ON D1 R)))
)