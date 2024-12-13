#!/bin/bash

# 检查当前的样式
current_scheme=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$current_scheme" == "'prefer-dark'" ]]; then
  # 如果当前是暗色模式，则切换为明亮模式
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  echo "切换为明亮模式"
else
  # 如果当前不是暗色模式，则切换为暗色模式
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  echo "切换为暗色模式"
fi
