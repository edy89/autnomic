sub round_division($num1, $num2) {
    my $result = $num1 / $num2;
    my $decimal_part = $result < 0 ?? $result * -1 % 1 !! $result % 1;
    my $numberSign = $result.sign;
    
    $result = $result + ($decimal_part % 1 >= 0.5 ?? $result.sign !! 0);

    return $result.Int;
}

sub MAIN() {
    my $num_cases = prompt().Int;
    my @roundedNumbers;

    for ^$num_cases {
        my ($num1, $num2) = prompt().split(" ");
        my $rounded_result = round_division($num1, $num2);
        @roundedNumbers.push($rounded_result);
    }
    say @roundedNumbers.join(" ");
}
