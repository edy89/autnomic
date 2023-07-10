import * as readline from 'readline';

function minimumOfTwoArrays(numCases: number): number[] {
  const minimumResults: number[] = [];

  for (let i = 0; i < numCases; i++) {
    const numbers: string[] = readline.question().split(" ");
    const minimum: number = Math.min(Number(numbers[0]), Number(numbers[1]));
    minimumResults.push(minimum);
  }

  return minimumResults;
}

function main() {
  try {
    const numCases: number = Number(readline.question());
    const results: number[] = minimumOfTwoArrays(numCases);
    console.log(results.join(" "));
  } catch (error) {
    console.error(`Error: ${error.name}: ${error.message}`);
  }
}

main();
