NOTEBOOKS=$(shell find notebooks -type f -name '*.ipynb')
NOTEBOOK_INDEXES=$(NOTEBOOKS:%.ipynb=%.harvest.gz)

harvest: $(NOTEBOOK_INDEXES)

notebooks/%.harvest.gz: notebooks/%.ipynb
	cd notebooks; ../harvester $*.ipynb | gzip -9 -c > $*.harvest.gz

download:
	cd notebooks; ../download-sagemath-notebooks
