sub sumar($numbers) {
    my ($num1, $num2) = $numbers.split(" ");
    return $num1.Numeric + $num2.Numeric;
}

sub MAIN() {
    my $result = sumar(prompt());
    $result.say;
}
