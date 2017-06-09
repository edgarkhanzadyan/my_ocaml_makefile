.PHONY: all run clean

all: compiled run
# change my_prog to your main filename
# also add your other files which you need to compile
CMXs = my_prog.cmx
MLIs = my_prog.mli
MLs = my_prog.ml

compiled: $(MLIs) $(MLs)
	ocamlc -c $(MLIs)
	ocamlopt -c $(MLs)
	ocamlopt -o compiled $(CMXs)
run:
	./compiled

clean:
	rm -f *.cmx *.cmi *.o compiled











