import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Enter num1: ", (num1) => {
  rl.question("Enter num2: ", (num2) => {
    const result = Number(num1) + Number(num2);
    console.log(typeof result);
    rl.close();
  });
});
