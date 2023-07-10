sub sumArrayNumbers(Int $lengthArray, Str @numbers) {
  try {
      if $lengthArray > @numbers.elems {
        die "Error: length array is bigger than the Array's length";
      }
      my Int $totalSum = 0;
  
      for ^$lengthArray {
          $totalSum += @numbers[$_];
      }
  
      CATCH {
          default {
              die "Error: {.^name}: $_";
          }
      }
      
      return $totalSum;
  }
}

sub MAIN() {
  try {   
      my Int $lengthArray = prompt().Int;
      my Str @numbers = prompt().split(" ");
  
      my Int $result = sumArrayNumbers($lengthArray, @numbers);
      
      CATCH {
          default {
              die "Error: {.^name}: $_";
          }
      }
      say $result;
  }
}
