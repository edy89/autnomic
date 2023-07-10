sub minimumOfTwoArrays($numCases) {
  my @minimumResults;
  
  for ^$numCases {
    my Str @numbers = prompt().split(" ");

    if @numbers[0] < @numbers[1] { 
      @minimumResults.push(@numbers[0]);
    } else { 
      @minimumResults.push(@numbers[1]);
    }
  }
  
  return @minimumResults;
}

sub MAIN() {
  try {
    my Int $numCases = prompt().Int;
    
    say minimumOfTwoArrays($numCases).join(" ");
    
    CATCH {
      default {
          die "Error: {.^name}: $_";
      }
    }
  }
}

