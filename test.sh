assert() {
  excepted="$1"
  input="$2"
  
  deno run main.js "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"
  
  if [ "$actual" = "$excepted" ] ; then
    echo "$input => $actual"
  else
    echo "$input => $excepted excepted, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42

echo OK
