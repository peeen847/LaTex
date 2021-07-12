# seminar-template

ゼミ資料をLaTeXで管理したい人向けのテンプレートです．

なおゼミ資料のコンパイルにはDocker環境を利用することを前提としています．

## 使い方

本テンプレートはホスト環境にTeX環境を構築することなく利用するためにDockerを使用します．  
はじめにTeX環境を整えるためのdocker-imageをホストマシンに入れておく必要があります．  
docker-imageは[paperist/docker-alpine-texlive-ja](https://hub.docker.com/r/paperist/alpine-texlive-ja/)を利用しています．

```
# docker-imageの取得
$ make setup
```

`seminar/doc/doc.tex`を更新します．

```
# pdfの生成
$ make compile
```

以上の操作で，`seminar/doc/doc.pdf`が生成/更新されます．
