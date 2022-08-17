if (Deno.args.length != 1) {
    console.error("引数の数が正しくありません");
    Deno.exit(1);
}

console.log(".intel_syntax noprefix");
console.log(".globl main");
console.log("main:");
console.log("  mov rax, %d",parseInt(Deno.args[0]));
console.log("  ret");
