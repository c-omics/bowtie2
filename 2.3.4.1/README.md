# bowtie2

bowtie2 license: GPLv3 

## Useful Links

 * [package web-site](https://github.com/BenLangmead/bowtie2)
 * [container github-site](https://github.com/c-omics/bowtie2)
 * [Docker Hub](https://hub.docker.com/u/comics/)

## Example Usage
See the [container github-site](https://github.com/c-omics/) for further usage documentation.

To start a container
```
docker run -it comics/bowtie2 bash
```
Following the bowtie2 usage example from the official bowtie2 [MANUAL](https://github.com/BenLangmead/bowtie2/blob/master/MANUAL):
```
BT2_HOME=/software/applications/bowtie2/v2.3.4.1/
bowtie2-build $BT2_HOME/example/reference/lambda_virus.fa lambda_virus
bowtie2 -x lambda_virus -U $BT2_HOME/example/reads/reads_1.fq -S eg1.sam
bowtie2 -x lambda_virus -1 $BT2_HOME/example/reads/reads_1.fq -2 $BT2_HOME/example/reads/reads_2.fq -S eg2.sam
bowtie2 --local -x lambda_virus -U $BT2_HOME/example/reads/longreads.fq -S eg3.sam
bowtie2 -x $BT2_HOME/example/index/lambda_virus -1 $BT2_HOME/example/reads/reads_1.fq -2 $BT2_HOME/example/reads/reads_2.fq -S eg2.sam
samtools view -bS eg2.sam > eg2.bam
samtools sort eg2.bam eg2.sorted
```


