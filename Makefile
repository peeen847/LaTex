.PHONY: setup
setup:
	docker pull paperist/alpine-texlive-ja

.PHONY: compile
compile:
	docker ps -a | grep latex-compile || docker run --rm --name latex-compile -it -d -v ${PWD}:/workdir paperist/alpine-texlive-ja
	docker container exec -it latex-compile /bin/ash -c "cd /workdir/seminar/doc && uplatex doc.tex && dvipdfmx doc.dvi"

.PHONY: clean
clean:
	cd ./seminar/doc && rm doc.aux doc.dvi doc.log doc.out
