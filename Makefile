test: main.js
	bash test.sh

clean:
	rm -f *~ tmp*

.PHONY: clean test
