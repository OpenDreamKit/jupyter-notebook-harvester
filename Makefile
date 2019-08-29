NOTEBOOKS = $(shell find notebooks -type f -name '*.ipynb')
NOTEBOOK_INDEXES = $(NOTEBOOKS:%.ipynb=%.harvest)

.PHONY: harvest download

harvest: $(NOTEBOOK_INDEXES)

notebooks/%.harvest: notebooks/%.ipynb
	cd notebooks; ../harvest $*.ipynb

download: notebooks
	cd notebooks; ../download

notebooks:
	mkdir -p notebooks
