# 使用官方的 Node.js 镜像作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json 文件
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目源代码
COPY . .

# 暴露应用运行的端口
EXPOSE 3000

# 定义容器启动时运行的命令
CMD ["node", "app.js"]
