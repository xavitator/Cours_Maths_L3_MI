
ANALYSE = Analyse_I/cours_ANI.pdf
ALGEBRE = Algebre_et_geometrie/cours_AG5.pdf

.PHONY: all
all: $(ANALYSE) $(ALGEBRE)

%.pdf: %.tex
	pdflatex -synctex=1 -interaction=nonstopmode -output-directory $(shell dirname $?) $?

.PHONY: clean
clean:
	rm -rf */*.aux */*.log */*.out */*.synctex.gz */*.thm */*.toc

.PHONY: fclean
fclean: clean
	rm -rf */*.pdf

.PHONY: re
re: fclean all

.PHONY: docker
docker:
	docker build -t latex_math -f docker/Dockerfile .

.PHONY: docker-run
docker-run: docker
	docker run --rm -v `pwd`:/math latex_math make -C /math all
