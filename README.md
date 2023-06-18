# Readme

## はじめに

本環境はROS2のFoxyのDocker環境である

UbuntuのPCで使用する場合やWindowsでWSLを使用する場合
NVIDIAのGPUが有る場合と無い場合
でなるべく同じ操作で使用できるようスクリプト化した

シミュレーション環境と実機環境で同じ環境が使用できるよう
ネットワークはbridgeとhostを指定して起動できるようにした

## 動作環境

- Ubuntu 18.04, 20.04
- Windows 10
- Docker
- Docker Compose
- Nvidia Docker(NVIDIA GPUを使用する場合)
- X Window System(VcXsrv.etc)(WSLを使用する場合)

## 使用方法

- スクリプトがあるディレクトリにカレントディレクトリを移動してから実行する

- docker-compose-up はコンテナ立ち上げ時に1回のみ実行する
- docker-compose-exe はコンテナに入るときに実行する
- 複数ターミナルを立ち上げたい場合は docker-compose-exec を別ターミナルで実行する

- ホストとのデータの共有は下記マウント済みの領域が使用できる

  ホストの「foxy-official-01/ros-foxy-official/home」を「/home/docker/mnt」にマウント
  ホストの「foxy-official-01/ros-foxy-official/tmp」を「/home/docker/mnt/tmp」にマウント

### コンテナを起動する(docker-compose-up)

- bridgeネットワークを使用する場合 (シミュレーション環境を想定)

  ```bash
  ./ros2-foxy-official-01-up-bridge.sh
  ```

- hostネットワークを使用する場合 (実機環境を想定)

  ```bash
  ./ros2-foxy-official-01-up-host.sh
  ```

※INTEL GPU を使用している場合は「-i」オプションを付ける
※WSL を使用している場合は「-w」オプションを付ける

### コンテナに入る(docker-compose-exe)

  ```bash
  ./ros2-foxy-official-01-exec.sh
  ```

### コンテナを停止する(docker-compose-stop)

  ```bash
  ./ros2-foxy-official-01-stop.sh
  ```
