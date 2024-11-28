# gymreklab-misc
Miscellaneous lab items

## Executing bash scripts
A simple demo script to show basic shell execution
For running the `hello.sh` script, you can use this command:

```
bash hello.sh 
```

But if you're used to running like this:
```
./hello.sh
```

Make sure to first execute permissions using:
```
chmod +x hello.sh
```

## Creating Docker container 
A lightweight Ubuntu-based docker container pre-configured with
bioinformatics tools:
* [Samtools](https://www.htslib.org/doc/samtools.html)
* [Minigraph](https://lh3.github.io/minigraph/minigraph.html) 
 
**Prerequisites**
- Check whether docker engine is installed and running
- Docker version >=19.03

**Follow along**
1. Build docker image
```
docker build -t test .
```
2. Container execution (interactively)
```
docker run -it test
```

3. Check tool installation within the container env
```
samtools --version 
minigraph --version
```




