A Docker image of [linux-bsp-casefolding-workaround](https://github.com/scorpius2k1/linux-bsp-casefolding-workaround)

Example: 

```
docker run -it \
  --name linux-bsp-casefolding-workaround \
  --rm \
  --volume ./data:/data \
  --volume /mnt/games/SteamLibrary:/mnt/games/SteamLibrary \
  --volume "/home/workstation/.var/app/com.valvesoftware.Steam/.steam/steam:/home/bsp/.steam/steam" \
  ethorbit/linux-bsp-casefolding-workaround:latest
```

Volume maps:
* A directory where you want linux-bsp-casefolding-workaround logs and stuff to go (map to /data)
* Your Steam path (map to /home/bsp/.steam/steam)
* Your SteamLibrary where your games are installed (map to the same place)

