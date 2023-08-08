OUTPUTS=millproject-single-sided millproject-double-sided

.PHONY: all
all: $(OUTPUTS)

millproject-single-sided: generate
	./generate > millproject-single-sided

millproject-double-sided: generate
	DOUBLE_SIDED=1 ./generate > millproject-double-sided

.PHONY: clean
clean:
	-rm -f $(OUTPUTS)
