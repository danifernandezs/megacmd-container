# MEGAcmd Tools

A simple Docker container with MEGAcmd tools inside

At [DockerHub](https://hub.docker.com/r/danifernandezs/megacmd)

# TL;DR;

Loops
````bash
docker run -d -e EMAIL= -e PASSWORD= danifernandezs/megacmd:1.4.0-3.1-loop signup
docker run -d -e EMAIL= -e PASSWORD= danifernandezs/megacmd:1.4.0-3.1-loop clean
docker run -d -e EMAIL= -e PASSWORD= danifernandezs/megacmd:1.4.0-3.1-loop ls
docker run -d -e EMAIL= -e PASSWORD= danifernandezs/megacmd:1.4.0-3.1-loop upload
docker run -d -e EMAIL= -e PASSWORD= danifernandezs/megacmd:1.4.0-3.1-loop download
````

Run it
```bash
docker run -d --name=megacmd danifernandezs/megacmd:1.4.0-3.1 <MEGACMD COMMAND>
```

## Versions

- Debian 10 (https://hub.docker.com/_/debian?tab=tags&page=1&ordering=last_updated&name=buster)
- MegaCMD: 1.4.0-3.1  (https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/)

## License

<img src="./img/by-sa.png">

This work is under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

Please read the LICENSE files for more details.
