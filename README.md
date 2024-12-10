# TileDSL

## About
[View the PDF](./manual.pdf)

## How To Run
Given at least 1 file who's extension is .tl and the contents are an n-by-n identity matrix. With any semantically-correct program who require at least 1 file as input and who's extension is .tsl, execute the command as follows,

```
./Tsl prog.tsl t1.tl
```

For example, given an input file _tile1.tl_ and a program _ex2.tsl_, executing the command above will echo its output into command line. For improved readability, the output can be piped into the file _TileViewer_. By executing the command,

```
./Tsl ex2.tsl tile1.tl > o.tl
```

Then executing the command,

```
./TileViewer o.tl
```

This displays an image of the resultant output of the program. In this case, it gives,

<img width="755" alt="Screenshot 2024-12-01 at 12 54 57" src="https://github.com/user-attachments/assets/1064f478-62d9-49f5-99bf-ea96e81635f1">

Another example provided 2 input files _tile1.tl_ and _tile2.tl_ and a program _ex1.tsl_, we execute the command,

```
./Tsl ex1.tsl tile1.tl tile2.tl > o.tl
```

Then visualising it,

```
./TileViewer o.tl
```

Gives,

<img width="751" alt="Screenshot 2024-12-09 at 23 55 43" src="https://github.com/user-attachments/assets/f6a24545-af87-4ffc-ae67-bebaae75f476">

This repository contains 10 examples for you to explore and manipulate to better grasp the language.
