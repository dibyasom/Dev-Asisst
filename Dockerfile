# Build Container
FROM python:3.6-stretch

WORKDIR /build

RUN apt-get update && \
    apt-get install ffmpeg libsm6 libxext6 espeak portaudio19-dev python-pyaudio python3-pyaudio alsa-utils -y && \
    pip install pyttsx3 && \
    pip install SpeechRecognition && \
    pip install PyAudio

COPY ./src/ .

CMD ["python", "task9.py"]

