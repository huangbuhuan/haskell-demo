bmiTell :: (RealFloat a) => a -> a->  String
bmiTell weight height
    | bmi <= normal = "a"
    | bmi <= fat = "b"
    | otherwise = "c"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0