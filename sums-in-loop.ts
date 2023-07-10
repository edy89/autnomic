import * as readline from 'readline';

function sumArraysNumbers(lengthOfArrays: number): number[] {
  const sumResults: number[] = [];

  for (let i = 0; i < lengthOfArrays; i++) {
    const numbers: number[] = readline.question().split(" ").map(Number);
    const sum: number = numbers.reduce((total, num) => total + num, 0);
    sumResults.push(sum);
  }

  return sumResults;
}

function main() {
  try {
    const lengthOfArrays: number = Number(readline.question());
    const results: number[] = sumArraysNumbers(lengthOfArrays);
    console.log(results.join(" "));
  } catch (error) {
    console.error(`Error: ${error.name}: ${error.message}`);
  }
}

main();
