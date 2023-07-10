sub sumar($numbers) {
    my ($num1, $num2) = $numbers.split(" ");
    unless $num1.Numeric.defined && $num2.Numeric.defined {
        die "Debe ingresar dos números válidos separados por un espacio";
    }
    return $num1.Numeric + $num2.Numeric;
}

sub MAIN() {
    my $result = sumar(prompt());
    CATCH {
        default {
            say "Error: ", $_.^name, ': ',  $_;
        }
    };
    $result.say;
}
