# Minimal (simple) Docker Implementation CUDA and Jupyternotebook
## Package
- Based on cuda 11.6 ubuntu 22.04
- python3.10 (pip based, not conda)
- Jupyterlab

## How to Build Docker Images

```
docker build . -t jupter-lab:0.2
```

## How to Run
```
docker run --name "lokal-dev" -v $(pwd)/data:/srv -e SHELL='/bin/bash' -e JUPYTER_TOKEN='machinelearning' --gpus all -d -p 8888:8888 jupyter-lab:0.2
```
run in browser:
http://localhost:8888 and enter 'machinelearning' for login token

### Default
Default user is dbcooper and default root password si toor

## License
GPL V3 https://www.gnu.org/licenses/gpl-3.0.en.html