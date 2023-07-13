import * as readline from 'readline';

function minimumOfArray(): void {
  const longData: number = parseInt(readline.question());
  const minimumOfArr: number[] = [];

  for (let i = 0; i < longData; i++) {
    const numbers: number[] = readline.question().split(' ').map(Number);
    const minimum: number = Math.min(...numbers);
    minimumOfArr.push(minimum);
  }

  console.log(minimumOfArr.join(' '));
}

if (require.main === module) {
  minimumOfArray();
}
