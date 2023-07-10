sub sumArraysNumbers(Int $lengthOfArrays) {
  my @sumResults;
  my @numberPairs;
  
  for ^$lengthOfArrays {
    my Str @numbers = prompt().split(" ");
    @numberPairs.push(@numbers)
  }

  for @numberPairs -> @numberPair {
    @sumResults.push([+] @numberPair)
  }
  
  return @sumResults;
}

sub MAIN() {
  try {
    my Int $lengthOfArrays = prompt().Int;
    
    say sumArraysNumbers($lengthOfArrays).join(" ");
    
    CATCH {
      default {
          die "Error: {.^name}: $_";
      }
    }
  }
}

