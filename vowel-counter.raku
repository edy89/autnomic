my %vowels = 'aouiey'.comb.Set;

sub vowel_counter($length_cases, $counter is rw, @results) {
  return if $counter == $length_cases;

  my $word = prompt();
  $counter++;
  my $vowel_count = $word.comb.grep({ .lc ~~ %vowels }).elems;

  @results.push: $vowel_count;

  return vowel_counter($length_cases, $counter, @results);
}

sub MAIN() {
  my $length_cases = prompt().Int;
  my $counter = 0;
  my @results;

  vowel_counter($length_cases, $counter, @results);

  say @results.join(" ");
}
