# 使用Python 3.8官方镜像作为基础镜像
FROM python:3.8-slim

# 设置工作目录为/app
WORKDIR /app

# 将当前目录下的所有文件复制到容器的/app目录下
COPY . /app

# 安装项目依赖
RUN pip install -r requirements.txt
RUN pip install setuptools wheel 
# 暴露端口8989供外部访问
EXPOSE 8989

# 容器启动时执行的命令，启动Flask应用
CMD ["python", "app.py"]