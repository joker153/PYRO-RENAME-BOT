FROM python:3.10
WORKDIR /app
COPY . /app/

# Set the timezone (replace with your timezone)
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install -r requirements.txt
CMD ["python", "bot.py"]
