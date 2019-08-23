NOTEBOOKS = $(shell find notebooks -type f -name '*.ipynb')
NOTEBOOK_INDEXES = $(NOTEBOOKS:%.ipynb=%.harvest.gz)

.PHONY: harvest download

harvest: $(NOTEBOOK_INDEXES)

$(NOTEBOOK_INDEXES): notebooks/%.harvest.gz: notebooks/%.ipynb
	cd notebooks; ../harvest $*.ipynb | gzip -9 -c > $*.harvest.gz

download: notebooks
	cd notebooks; ../download

notebooks:
	mkdir -p notebooks