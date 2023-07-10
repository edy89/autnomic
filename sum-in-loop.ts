import * as readline from 'readline';

function sumArrayNumbers(lengthArray: number, numbers: number[]): number {
  if (lengthArray > numbers.length) {
    throw new Error("Error: length array is bigger than the Array's length");
  }
  
  let totalSum = 0;

  for (let i = 0; i < lengthArray; i++) {
    totalSum += numbers[i];
  }

  return totalSum;
}

function main() {
  try {
    const lengthArray: number = Number(readline.question());
    const numbers: number[] = readline.question().split(" ").map(Number);

    const result: number = sumArrayNumbers(lengthArray, numbers);

    console.log(result);
  } catch (error) {
    console.error(`Error: ${error.name}: ${error.message}`);
  }
}

main();
