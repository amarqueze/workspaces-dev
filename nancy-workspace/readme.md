<h1 align="center">
  🎯 Stack: Git, Nodejs 14.x LTS(angular-cli, ngx-rocket, nest-cli, Typescript)
</h1>

## 🚀 Environment Setup

### 🐳 Needed tools

1. [Install Docker](https://www.docker.com/get-started)
2. Clone this project: `git clone https://github.com/amarqueze/workspaces-dev`
3. Move to the project folder: `cd workspaces-dev/nancy-workspace`

### 🛠️ Build Image

1. `docker build -t "nancy-workspace" --build-arg user=amarquez --build-arg email=alanmarquez@outlook.com --build-arg version_nodejs=14 .`